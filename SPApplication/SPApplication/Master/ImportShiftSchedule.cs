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

namespace SPApplication.OEEApplication.Master
{
    public partial class ImportShiftSchedule : Form
    {
        BusinessLayer objBL = new BusinessLayer();
        RedundancyLogics objRL = new RedundancyLogics();
        DesignLayer objDL = new DesignLayer();
        ErrorProvider objEP = new ErrorProvider();
        QueryLayer objQL = new QueryLayer();
        
        PropertyClass objPC = new PropertyClass();

        public ImportShiftSchedule()
        {
            InitializeComponent();
            objDL.SetDesignMaster(this, lblHeader, btnSave, btnClear, btnDelete, btnExit, "Import Shift Schedule");
        }

        private void ImportShiftSchedule_Load(object sender, EventArgs e)
        {
            ClearAll();
        }

        private void btnDownloadTemplate_Click(object sender, EventArgs e)
        {
            Get_Path_Download();
        }

        private void btnImport_Click(object sender, EventArgs e)
        {
            ReadExcelData();
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

        DateTime EntryDate;
        int MachineId = 0; string MachineName = string.Empty, MachineRunHours = string.Empty, ShiftTimeInHours = string.Empty;
        double MachineRunMinutes = 0, ShiftTimeInMinutes = 0;

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (dataGridView1.Rows.Count > 0)
            {
                for (int i = 0; i < dataGridView1.Rows.Count; i++)
                {
                    TimeSpan timeSpan = TimeSpan.Zero;
                    EntryDate = DateTime.Now.Date;
                    MachineName = string.Empty;
                    MachineId = 0; MachineRunMinutes = 0; MachineRunHours = string.Empty; ShiftTimeInMinutes = 0; ShiftTimeInHours = string.Empty;

                    EntryDate = Convert.ToDateTime(dataGridView1.Rows[i].Cells["clmDate"].Value);
                    MachineName = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[i].Cells["clmMachine"].Value));
                    MachineId= objRL.Get_Machine_ID(MachineName);
                    
                    MachineRunMinutes = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[i].Cells["clmMachineRunMinutes"].Value)));
                    timeSpan = TimeSpan.FromMinutes(MachineRunMinutes);
                    MachineRunHours = timeSpan.ToString(@"hh\:mm");
                    //MachineRunHours = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[i].Cells["clmMachineRunHours"].Value));
                    timeSpan = TimeSpan.Zero;

                    ShiftTimeInMinutes = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[i].Cells["clmTimeInMinutes"].Value)));
                    timeSpan = TimeSpan.FromMinutes(ShiftTimeInMinutes);
                    ShiftTimeInHours = timeSpan.ToString(@"hh\:mm");

                    //ShiftTimeInHours =  objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[i].Cells["clmTimesInHours"].Value));
                    int Result = 0;

                    if (MachineId > 0)
                    {
                        DataSet ds = new DataSet();
                        objBL.Query = "select ShiftScheduleId from shiftschedule where EntryDate='" + EntryDate.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "' and MachineId=" + MachineId + "";
                        ds = objBL.ReturnDataSet();

                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            int ShiftScheduleId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][0])));

                            if (ShiftScheduleId > 0)
                            {
                                objBL.Query = "update shiftschedule set Status='" + BusinessResources.LS_Pending + "',EntryDate='" + EntryDate.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "',MachineId=" + MachineId + ",MachineRunMinutes='" + MachineRunMinutes + "',MachineHours='" + MachineRunHours + "',ShiftTimeInMinutes='" + ShiftTimeInMinutes + "',ShiftTimeInHours='" + ShiftTimeInHours + "' where ShiftScheduleId=" + ShiftScheduleId + "";
                                Result = objBL.Function_ExecuteNonQuery();

                                dataGridView1.Rows[i].Cells["clmRemarks"].Value = "Update";
                            }
                        }
                        else
                        {
                            objBL.Query = "insert into shiftschedule(EntryDate,MachineId,MachineRunMinutes,MachineHours,ShiftTimeInMinutes,ShiftTimeInHours,Status,UserId) values('" + EntryDate.Date.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "'," + MachineId + ",'" + MachineRunMinutes + "','" + MachineRunHours + "','" + ShiftTimeInMinutes + "','" + ShiftTimeInHours + "','" + BusinessResources.LS_Pending + "'," + BusinessLayer.UserId_Static + ")";
                            Result= objBL.Function_ExecuteNonQuery();
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

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void ClearAll()
        {
            objEP.Clear();
            objPC.ProductId = 0;
            dataGridView1.Rows.Clear();
            
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
                FileName = "ShiftScheduleTemplate.xlsx";

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
    }
}
