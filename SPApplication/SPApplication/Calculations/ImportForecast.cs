using BusinessLayerUtility;
using OfficeOpenXml;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SPApplication.OEEApplication.Calculations
{
    public partial class ImportForecast : Form
    {
        BusinessLayer objBL = new BusinessLayer();
        RedundancyLogics objRL = new RedundancyLogics();
        DesignLayer objDL = new DesignLayer();
        ErrorProvider objEP = new ErrorProvider();
        QueryLayer objQL = new QueryLayer();
        PropertyClass objPC = new PropertyClass();

        public ImportForecast()
        {
            InitializeComponent();
            objDL.SetDesignMaster(this, lblHeader, btnSave, btnClear, btnDelete, btnExit, "Import Forecast");
        }

        private void ClearAll()
        {
            objEP.Clear();
            objPC.ProductId = 0;
            dataGridView1.Rows.Clear();
            PlanningDate = DateTime.Now.Date;
            ProductName = string.Empty;
            RequiredQuantity = 0;
        }
        private void btnClear_Click(object sender, EventArgs e)
        {
            ClearAll();
        }
        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
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
                lblTotalCount.Text = "Total Count-"+TotalCount.ToString();
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
                FileName = "Forecast.xlsx";

                string downloadPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.UserProfile), "Downloads");
                if (FileName != "")
                {
                    TemplatePath = string.Empty;
                    TemplatePath = AppDomain.CurrentDomain.BaseDirectory + ConfigurationManager.AppSettings["DownloadTemplate"] + FileName;
                    //DestinationPath = @"C:\Users\Developer\Downloads\" + FileName + "";
                    DestinationPath = downloadPath + "\\" + FileName;
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

        DateTime PlanningDate;
        int ForecastYear = 0;
        string Factory = string.Empty, ForecastMonth = string.Empty;
        string ProductName = string.Empty, ProductCode = string.Empty;

        private void ImportForecast_Load(object sender, EventArgs e)
        {
            //objRL.Fill_Location_ComboBox(cmbLocation);
            objRL.Fill_Location_ComboBox_By_Users(cmbLocation);
        }

        double RequiredQuantity = 0;
        private void btnSave_Click(object sender, EventArgs e)
        {
            ForecastYear = 0;
            if (dataGridView1.Rows.Count > 0 && cmbLocation.SelectedIndex >-1)
            {
                ForecastYear = DateTime.Now.Year;
                for (int i = 0; i < dataGridView1.Rows.Count; i++)
                {
                    Factory = string.Empty; ForecastMonth = string.Empty; 
                    PlanningDate = DateTime.Now.Date;
                    ProductName = string.Empty;
                    RequiredQuantity = 0;

                    objPC.ProductId = 0;
                    ForecastMonth = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[i].Cells["clmMonth"].Value));
                    Factory = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[i].Cells["clmFactory"].Value));
                    ProductCode = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[i].Cells["clmProductCode"].Value));
                    ProductName = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[i].Cells["clmProductName"].Value));
                    RequiredQuantity = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[i].Cells["clmRequiredQuantity"].Value)));

                    if (ProductCode != "")
                        objRL.Product_Id_by_ProductCode(ProductCode);

                    if (objPC.ProductId > 0)
                    {
                        DataSet ds = new DataSet();
                        objBL.Query = "select ForeCastId,Factory,ForecastMonth,ForecastYear,RequiredQuantity from forecast where ForecastMonth='" + ForecastMonth + "' and ForecastYear="+ ForecastYear + " and ProductId=" + objPC.ProductId + "";
                        ds = objBL.ReturnDataSet();

                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            int ForeCastId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][0])));

                            if (ForeCastId > 0)
                            {
                                objBL.Query = "update forecast set EntryDate='" + DateTime.Now.Date.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "',ForecastMonth='" + ForecastMonth + "',ForecastYear=" + ForecastYear + ",ProductId=" + objPC.ProductId + ",RequiredQuantity='" + RequiredQuantity + "',Balance=" + RequiredQuantity + "',Status=" + BusinessResources.LS_Pending + "',LocationId=" + cmbLocation.SelectedValue + ",ModifiedUserId=" + BusinessLayer.UserId_Static + " where ForeCastId=" + ForeCastId + "";
                                objBL.Function_ExecuteNonQuery();
                                dataGridView1.Rows[i].Cells["clmRemarks"].Value = "Update";
                            }
                        }
                        else
                        {
                            objBL.Query = "insert into forecast(EntryDate,Factory,ForecastMonth,ForecastYear,ProductId,RequiredQuantity,Balance,Status,LocationId,UserId) values('" + DateTime.Now.Date.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "','" + Factory + "','" + ForecastMonth + "'," + ForecastYear + "," + objPC.ProductId + "," + RequiredQuantity + "," + RequiredQuantity + ",'" + BusinessResources.LS_Pending + "'," + cmbLocation.SelectedValue + "," + BusinessLayer.UserId_Static + ")";
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
    }
}
