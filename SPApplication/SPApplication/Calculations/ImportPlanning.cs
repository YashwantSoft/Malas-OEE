using BusinessLayerUtility;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.Office.Interop.Excel;
using Excel = Microsoft.Office.Interop.Excel;
using System.Net.Mail;
using System.Net;
using System.Security.Cryptography.X509Certificates;
using System.Net.Security;
using System.Drawing.Imaging;
//using System.IO;
using System.Data.OleDb;
using System.Runtime.InteropServices;
//using static System.Windows.Forms.VisualStyles.VisualStyleElement.Tab;
using OfficeOpenXml;

namespace SPApplication.OEEApplication.Calculations
{
    public partial class ImportPlanning : Form
    {
        BusinessLayer objBL = new BusinessLayer();
        RedundancyLogics objRL = new RedundancyLogics();
        DesignLayer objDL = new DesignLayer();
        ErrorProvider objEP = new ErrorProvider();
        QueryLayer objQL = new QueryLayer();
        PropertyClass objPC = new PropertyClass();

        public ImportPlanning()
        {
            InitializeComponent();
            objDL.SetDesignMaster(this, lblHeader, btnSave, btnClear, btnDelete, btnExit, "Import Weekly Planning");
        }

        private void ImportPlanning_Load(object sender, EventArgs e)
        {
            ClearAll();
            objRL.Fill_Location_ComboBox_By_Users(cmbLocation);
        }

        private void btnImport_Click(object sender, EventArgs e)
        {
            if (cmbLocation.SelectedIndex > -1)
            {
                ReadExcelData();
            }
            else
            {
                objRL.ShowMessage(17, 4);
                return;
            }
        }

        private void ReadExcelData()
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "Excel Files|*.xlsx;*.xls";
            openFileDialog.Title = "Select an Excel File";

            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {
                string filePath = openFileDialog.FileName;

                List<object[]> excelData = ReadExcel(filePath);

                PopulateDataGridView(excelData);
            }
        }
        private List<object[]> ReadExcel(string filePath)
        {
            List<object[]> excelData = new List<object[]>();

            FileInfo fileInfo = new FileInfo(filePath);
            using (ExcelPackage package = new ExcelPackage(fileInfo))
            {
                ExcelWorksheet worksheet = package.Workbook.Worksheets[0]; // Assuming data is on the first worksheet
                int TotalCount = worksheet.Dimension.End.Row;
                int RCOunt = worksheet.Dimension.Start.Row + 1;

                for (int row = RCOunt; row <= worksheet.Dimension.End.Row; row++)
                {
                    List<object> rowData = new List<object>();
                    for (int col = worksheet.Dimension.Start.Column; col <= worksheet.Dimension.End.Column; col++)
                    {
                        //row++;
                        var cellValue = worksheet.Cells[row, col].Value;
                        rowData.Add(cellValue);
                    }
                    excelData.Add(rowData.ToArray());
                }
                lblTotalCount.Text = "Total Count-" + TotalCount.ToString();
            }

            return excelData;
        }

        private void PopulateDataGridView(List<object[]> data)
        {
            dataGridView1.Rows.Clear(); // Clear existing rows if needed

            foreach (var row in data)
            {
                dataGridView1.Rows.Add(row);
            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        DateTime PlanningDate;
        string ProductName = string.Empty, ProductCode = string.Empty;
        double Required = 0;
        private void btnSave_Click(object sender, EventArgs e)
        {
            if (dataGridView1.Rows.Count > 0)
            {
                for(int i=0;i<dataGridView1.Rows.Count;i++)
                {
                    PlanningDate = DateTime.Now.Date;
                    ProductName = string.Empty;
                    Required = 0;

                    objPC.ProductId = 0;
                    PlanningDate =  Convert.ToDateTime(dataGridView1.Rows[i].Cells["clmPlanningDate"].Value);
                    ProductCode = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[i].Cells["clmProductCode"].Value));
                    ProductName = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[i].Cells["clmProductName"].Value));
                    Required = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[i].Cells["clmRequiredQuantity"].Value)));

                    if (ProductCode != "")
                        objRL.Product_Id_by_ProductCode(ProductCode);

                    if (objPC.ProductId > 0)
                    {
                        DataSet ds = new DataSet();
                        objBL.Query = "select WeeklyPlanningId,EntryDate,PlanningDate,ProductId,RequiredQuantity from weeklyplanning where PlanningDate='" + PlanningDate.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "' and ProductId=" + objPC.ProductId + "";
                        ds = objBL.ReturnDataSet();

                        if (ds.Tables[0].Rows.Count >0)
                        {
                            int WeeklyPlanningId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][0])));

                            if (WeeklyPlanningId > 0)
                            {
                                objBL.Query = "update weeklyplanning set Status='" + BusinessResources.LS_Pending + "',EntryDate='" + DateTime.Now.Date.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "',PlanningDate='" + PlanningDate.Date.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "',ProductId=" + objPC.ProductId + ",RequiredQuantity='" + Required + "',LocationId=" + cmbLocation.SelectedValue + ",ModifiedUserId=" + BusinessLayer.UserId_Static + " where WeeklyPlanningId=" + WeeklyPlanningId + "";
                                objBL.Function_ExecuteNonQuery();
                                dataGridView1.Rows[i].Cells["clmRemarks"].Value = "Update";
                            }
                        }
                        else
                        {
                            objBL.Query = "insert into weeklyplanning(EntryDate,PlanningDate,ProductId,RequiredQuantity,Status,LocationId,UserId) values('" + DateTime.Now.Date.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "','" + PlanningDate.Date.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "'," + objPC.ProductId + "," + Required + ",'"+BusinessResources.LS_Pending+"',"+cmbLocation.SelectedValue+","+BusinessLayer.UserId_Static+")";
                            objBL.Function_ExecuteNonQuery();
                            dataGridView1.Rows[i].Cells["clmRemarks"].Value = "Saved";
                            dataGridView1.Rows[i].DefaultCellStyle.BackColor = Color.White;
                        }
                    }
                    else
                    {
                        dataGridView1.Rows[i].Cells["clmRemarks"].Value = "Not Saved";
                        dataGridView1.Rows[i].DefaultCellStyle.BackColor = Color.Yellow;
                    }
                }
            }
            else
            {
                objRL.ShowMessage(17, 4);
                return;
            }
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            ClearAll();
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {

        }
        private void ClearAll()
        {
            objEP.Clear();
            objPC.ProductId = 0;
            dataGridView1.Rows.Clear();
            cmbLocation.SelectedIndex = -1;
            PlanningDate = DateTime.Now.Date;
            ProductName = string.Empty;
            Required = 0;
        }

        private void btnDownloadTemplate_Click(object sender, EventArgs e)
        {
            Get_Path_Download();
        }

        string FileName = string.Empty;
        string TemplatePath = string.Empty;
        string DestinationPath = string.Empty;

        private void Get_Path_Download()
        {
            try
            {
                TemplatePath = string.Empty;
                DestinationPath = string.Empty;
                FileName = string.Empty;
                FileName = "WeeklyPlanningTemplate.xlsx";

                string downloadPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.UserProfile), "Downloads");
                if (FileName != "")
                {
                    TemplatePath = string.Empty;
                    TemplatePath = AppDomain.CurrentDomain.BaseDirectory + ConfigurationManager.AppSettings["DownloadTemplate"] + FileName;
                    //DestinationPath = @"C:\Users\Developer\Downloads\" + FileName + "";
                    DestinationPath = downloadPath+"\\" + FileName;
                    //downloadPath
                    bool FlagCheck = File.Exists(DestinationPath);
                    objPC.DocumentPath = DestinationPath;
                    if (!FlagCheck)
                    {
                        File.Copy(TemplatePath, DestinationPath);
                        objRL.ShowMessage(41, 1);
                    }
                    else
                    {
                        objRL.ShowMessage(42, 4);
                        return;
                    }
                }
            }
            catch (Exception ex1) { objRL.ErrorMessge(ex1.ToString()); }
            finally { }
        }
    }
}
