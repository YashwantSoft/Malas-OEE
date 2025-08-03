using BusinessLayerUtility;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.Remoting.Services;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SPApplication.OEEApplication.Master
{
    public partial class ShiftScheduleMaster : Form
    {
        BusinessLayer objBL = new BusinessLayer();
        RedundancyLogics objRL = new RedundancyLogics();
        DesignLayer objDL = new DesignLayer();
        ErrorProvider objEP = new ErrorProvider();
        QueryLayer objQL = new QueryLayer();
        PropertyClass objPC = new PropertyClass();

        int Result = 0, TableId = 0;
        bool FlagDelete = false;
        string ExecuteType = "";

        string MainQuery = string.Empty, WhereClause = string.Empty, OrderByClause = string.Empty, UserClause = string.Empty;
        int RowCount_Grid = 0, CurrentRowIndex = 0;
        public ShiftScheduleMaster()
        {
            InitializeComponent();
            objDL.SetDesignMaster(this, lblHeader, btnSave, btnClear, btnDelete, btnExit, "Shift Schedule");
            objRL.Fill_Machine(cmbMachineName);
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (objPC.AddFlag == 1)
            {
                try
                {
                    FlagDelete = false;
                    SaveDB();
                }
                catch (Exception ex1) { objRL.ErrorMessge(ex1.ToString()); }
                finally { GC.Collect(); }
            }
            else
            {
                objRL.ShowMessage(24, 4);
                return;
            }
        }

        bool FlagInsert = false;

        int ShiftScheduleId = 0, MachineId;
        DateTime EntryDate;

        double MachineRunMinutes = 0, ShiftTimeInMinutes=0;
         string MachineHours=string.Empty, ShiftTimeInHours=string.Empty;

        private void SaveDB_New()
        {
            FlagInsert = false;
            bool FlagSave = false;
            try
            {
                MachineId =Convert.ToInt32(cmbMachineName.SelectedValue);

                for (int i = 0; i < dgvShift.Rows.Count; i++) 
                {
                    Result = 0;
                    ShiftScheduleId = 0;  
                    MachineRunMinutes = 0; ShiftTimeInMinutes = 0;
                    MachineHours = string.Empty; ShiftTimeInHours = string.Empty;

                    MachineRunMinutes = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dgvShift.Rows[i].Cells["clmMachineRun"].Value)));
                    MachineHours = objRL.CheckNullString(Convert.ToString(dgvShift.Rows[i].Cells["clmMachineRunHours"].Value));
                    ShiftTimeInMinutes = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dgvShift.Rows[i].Cells["clmTimeInMinutes"].Value)));
                    ShiftTimeInHours = objRL.CheckNullString(Convert.ToString(dgvShift.Rows[i].Cells["clmTimeInHours"].Value));

                    EntryDate = Convert.ToDateTime(dgvShift.Rows[i].Cells["clmDate"].Value);

                    if (ShiftTimeInMinutes > 0)
                    {
                        DataSet ds = new DataSet();
                    objBL.Query = "select ShiftScheduleId from shiftschedule where EntryDate='"+ EntryDate.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "' and ShiftMonthInt=" + month + " and ShiftYear=" + year + " and MachineId=" + cmbMachineName.SelectedValue + "";
                    ds = objBL.ReturnDataSet();
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        FlagInsert = true;
                        ShiftScheduleId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0]["ShiftScheduleId"])));
                    }
                    else
                    {
                        FlagInsert = false;
                    }

                    

                    //ShiftScheduleId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dgvShift.Rows[i].Cells["clmShiftScheduleId"].Value)));

                   
                        if (!FlagInsert)
                        {
                            //shiftschedule
                            objBL.Query = "insert into shiftschedule(EntryDate,MachineId,MachineRunMinutes,MachineHours,ShiftTimeInMinutes,ShiftTimeInHours,ShiftMonthInt,ShiftMonth,ShiftYear,UserId) values('" + EntryDate.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "'," + MachineId + ",'" + MachineRunMinutes + "','" + MachineHours + "','" + ShiftTimeInMinutes + "','" + ShiftTimeInHours + "'," + month + ",'" + cmbMonth.Text + "'," + year + "," + BusinessLayer.UserId_Static + ")";
                            Result = objBL.Function_ExecuteNonQuery();
                            FlagSave = true;
                        }
                        else
                        {
                            objBL.Query = "update shiftschedule set EntryDate='" + EntryDate.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "',MachineId=" + MachineId + ",MachineRunMinutes='" + MachineRunMinutes + "',MachineHours='" + MachineHours + "',ShiftTimeInMinutes='" + ShiftTimeInMinutes + "',ShiftTimeInHours='" + ShiftTimeInHours + "',ShiftMonthInt='" + month + "',ShiftMonth='" + cmbMonth.Text + "',ShiftYear=" + year + ",ModifiedUserId=" + BusinessLayer.UserId_Static + " where ShiftScheduleId=" + ShiftScheduleId + "";
                            Result = objBL.Function_ExecuteNonQuery();
                            FlagSave = true;
                        }
                    }
                }

                if(FlagSave)
                {
                    objRL.ShowMessage(7, 1);
                }
            }
            catch (Exception ex)
            {
            }
        }
        private bool Validation()
        {
            objEP.Clear();
            if (cmbMachineName.SelectedIndex == -1)
            {
                objEP.SetError(cmbMachineName, "Select Machine Name");
                cmbMachineName.Focus();
                return true;
            }
            else if (txtMachineRunMinutes.Text == "")
            {
                objEP.SetError(txtMachineRunMinutes, "Enter Machine Run Minutes");
                txtMachineRunMinutes.Focus();
                return true;
            }
            else if (txtMachineRunHours.Text == "")
            {
                objEP.SetError(txtMachineRunHours, "Enter Machine Run Hours");
                txtMachineRunHours.Focus();
                return true;
            }
            else if (txtTimeInMinutes.Text == "")
            {
                objEP.SetError(txtTimeInMinutes, "Enter Time In Minutes");
                txtTimeInMinutes.Focus();
                return true;
            }
            else if (txtTimeInHours.Text == "")
            {
                objEP.SetError(txtTimeInHours, "Enter Time In Hours");
                txtTimeInHours.Focus();
                return true;
            }
            else
                return false;
        }

        private void SaveDB()
        {
            Result = 0;
            try
            {
                if (!Validation())
                {
                    //if (!DeleteFlag)
                    //{
                    //    if (CheckExist())
                    //    {
                    //        objRL.ShowMessage(34, 9);
                    //        return;
                    //    }
                    //}

                    if (TableId != 0)
                    {
                        if (FlagDelete)
                        {
                            objBL.Query = "update shiftschedule set CancelTag=1 where ShiftScheduleId=" + TableId + "";
                            ExecuteType = "Delete";
                        }
                        else
                        {
                            //objBL.Query = "update AssetMaster set EntryDate='" + dtpDate.Value.ToShortDateString() + "',SiteId=" + cmbBusinessUnit.SelectedValue + ",DepartmentId=" + DepartmentId + ",DepartmentName='" + cmbDepartment.Text + "',AssetUserName='" + txtUserName.Text + "',ComputerName='" + txtComputerName.Text + "',AssetTypeId=" + cmbAssetType.SelectedValue + ",MakeId=" + cmbMake.SelectedValue + ",SerialNumber='" + txtSerialNumber.Text + "',OSName='" + cmbOSName.Text + "',OSType='" + cmbOSType.Text + "',OSTag='" + cmbOSTag.Text + "',Processor='" + cmbProcessor.Text + "',HDDType='" + cmbHDDType1.Text + "',SSD='" + cmbSSD.Text + "',HDD='" + cmbHDD.Text + "',RAM='" + cmbRAM.Text + "',IPAddressLAN='" + txtIPAddressLAN.Text + "',IPAddressWifi='" + txtIPAddressWifi.Text + "',OfficeVersion='" + cmbOfficeVersion.Text + "',AntivirusSerialNumber='" + txtAntivirusSerialNo.Text + "',AntivirusExpiryDate='" + dtpEndDate.Value.ToShortDateString() + "',Status='" + cmbStatus.Text + "',QRCodeData='" + txtQRCodeData.Text + "',ModifiedId=" + BusinessLayer.UserId_Static + " where ID=" + TableId + " and CancelTag=0";
                            objBL.Query = "update shiftschedule set EntryDate='" + dtpShiftDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "',MachineId=" + cmbMachineName.SelectedValue + ",MachineRunMinutes='" + txtMachineRunMinutes.Text + "',MachineHours='" + txtMachineRunHours.Text + "',ShiftTimeInMinutes='" + txtTimeInMinutes.Text + "',ShiftTimeInHours='" + txtTimeInHours.Text + "',ModifiedUserId=" + BusinessLayer.UserId_Static + " where ShiftScheduleId=" + TableId + " and CancelTag=0";
                            ExecuteType = "Update";

                            // SiteId=" + cmbBusinessUnit.SelectedValue + ",DepartmentId=" + DepartmentId + ",AssetUserName='" + txtUserName.Text + "',ComputerName='" + txtComputerName.Text + "',AssetTypeId=" + cmbAssetType.SelectedValue + ",MakeId=" + cmbMake.SelectedValue + ",SerialNumber='" + txtSerialNumber.Text + "',OSName='" + cmbOSName.Text + "',OSType='" + cmbOSType.Text + "',OSTag='" + cmbOSTag.Text + "',Processor='" + cmbProcessor.Text + "',HDDType='" + cmbHDDType1.Text + "',SSD='" + cmbSSD.Text + "',HDD='" + cmbHDD.Text + "',RAM='" + cmbRAM.Text + "',IPAddressLAN='" + txtIPAddressLAN.Text + "',IPAddressWifi='" + txtIPAddressWifi.Text + "',OfficeVersion='" + cmbOfficeVersion.Text + "',AntivirusSerialNumber='" + txtAntivirusSerialNo.Text + "',AntivirusExpiryDate='" + dtpEndDate.Value.ToShortDateString() + "',Status='" + cmbStatus.Text + "',QRCodeData='" + txtQRCodeData.Text + "',
                        }
                    }
                    else
                    {
                        //objBL.Query = "insert into AssetMaster(EntryDate,PurchaseDate,InvoiceNo,WarrantyPeriod,WarrantyEndDate,GRNNo,Status,QRCodeData,SiteId,DepartmentName,AssetUserName,ComputerName,AssetTypeId,MakeId,SerialNumber,OSName,OSType,OSTag,Processor,HDDType,SSD,HDD,RAM,IPAddressLAN,IPAddressWifi,OfficeVersion,AntivirusSerialNumber,AntivirusExpiryDate,Status,QRCodeData,UserId) values('"
                        objBL.Query = "insert into shiftschedule(EntryDate,MachineId,MachineRunMinutes,MachineHours,ShiftTimeInMinutes,ShiftTimeInHours,UserId) values('" + dtpShiftDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "'," + cmbMachineName.SelectedValue + ",'" + txtMachineRunMinutes.Text + "','" + txtMachineRunHours.Text + "','" + txtTimeInMinutes.Text + "','" + txtTimeInHours.Text + "'," + BusinessLayer.UserId_Static + ")";
                        ExecuteType = "Save";
                    }

                    Result = objBL.Function_ExecuteNonQuery();

                    if (Result > 0)
                    {
                        if (TableId == 0)
                            TableId = objRL.ReturnMaxID_Fix("productmaster", "ProductId");

                        objRL.ShowMessage(7, 1);

                        if (TableId != 0)
                        {
                            FillGrid();
                            ClearAll();
                        }
                    }
                }
                else
                {
                    objRL.ShowMessage(17, 4);
                    return;
                }
            }
            catch (Exception ex1) { objRL.ErrorMessge(ex1.ToString()); }
            finally { GC.Collect(); }
        }

        bool SearchFlag = false;
        private void FillGrid()
        {
            DataSet ds = new DataSet();
            dataGridView1.DataSource = null;
            MainQuery = string.Empty;
            WhereClause = string.Empty;
            OrderByClause = string.Empty;
            UserClause = string.Empty;
            lblTotalCount.Text = "";

            try
            {
                if (SearchFlag && txtSearch.Text != "")
                    WhereClause = " and M.MachineName LIKE '%" + txtSearch.Text + "%'";

                MainQuery = "select SS.ShiftScheduleId,SS.EntryDate,SS.MachineId,M.MachineName,SS.MachineRunMinutes,SS.MachineHours,SS.ShiftTimeInMinutes,SS.ShiftTimeInHours from shiftschedule SS inner join MachineMaster M on M.MachineId=SS.MachineId where SS.CancelTag=0 and M.CancelTag=0 ";
                OrderByClause = " order by M.MachineName asc";

                objBL.Query = MainQuery + WhereClause + OrderByClause;
                ds = objBL.ReturnDataSet();

                if (ds.Tables[0].Rows.Count > 0)
                {
                    //0 SS.ShiftScheduleId,
                    //1 SS.EntryDate,
                    //2 SS.MachineId,
                    //3 M.MachineName
                    //4 SS.MachineRunMinutes,
                    //5 SS.MachineHours,
                    //6 SS.ShiftTimeInMinutes,
                    //7 SS.ShiftTimeInHours

                    lblTotalCount.Text = "Total Count-" + ds.Tables[0].Rows.Count;
                    dataGridView1.DataSource = ds.Tables[0];
                    dataGridView1.Columns[0].Visible = false;
                    dataGridView1.Columns[2].Visible = false;
                    dataGridView1.Columns[1].Width = 120;
                    dataGridView1.Columns[3].Width = 250;
                    dataGridView1.Columns[4].Width = 150;
                    dataGridView1.Columns[5].Width = 150;
                    dataGridView1.Columns[6].Width = 150;
                    dataGridView1.Columns[7].Width = 150;
                    //dataGridView1.Columns[5].Width = 60;
                    //dataGridView1.Columns[6].Width = 60;
                    //dataGridView1.Columns[7].Width = 60;
                    //dataGridView1.Columns[8].Width = 60;
                    //dataGridView1.Columns[9].Width = 60;
                    //dataGridView1.Columns[10].Width = 60;
                    //dataGridView1.Columns[11].Width = 60;
                    //dataGridView1.Columns[12].Width = 60;
                    //dataGridView1.Columns[13].Width = 60;
                    //dataGridView1.Columns[14].Width = 70;
                    //dataGridView1.Columns[15].Width = 70;
                    //dataGridView1.Columns[16].Width = 80;
                }
            }
            catch (Exception ex1) { objRL.ErrorMessge(ex1.ToString()); }
            finally { GC.Collect(); }
        }

        private void ClearAll()
        {
            objEP.Clear();
            TableId = 0;

            dtpShiftDate.Value = DateTime.Now.Date;
            
            txtMachineRunMinutes.Text = "";
            txtMachineRunHours.Text = "";
            txtTimeInMinutes.Text = "";
            txtTimeInHours.Text = "";
            dtpShiftDate.Focus();

            cmbMonth.SelectedIndex = -1;
            cmbYear.SelectedIndex = -1;
            cmbMachineName.SelectedIndex = -1;
            lblTotalCountGrid.Text = "";
            dgvShift.Rows.Clear();
            cmbMonth.Focus();
            
        }
        private void ShiftScheduleMaster_Load(object sender, EventArgs e)
        {
            ClearAll();
            FillGrid();
        }

        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                RowCount_Grid = dataGridView1.Rows.Count;
                CurrentRowIndex = dataGridView1.CurrentRow.Index;

                if (RowCount_Grid >= 0 && CurrentRowIndex >= 0)
                {
                    //0 SS.ShiftScheduleId,
                    //1 SS.EntryDate,
                    //2 SS.MachineId,
                    //3 M.MachineName
                    //4 SS.MachineRunMinutes,
                    //5 SS.MachineHours,
                    //6 SS.ShiftTimeInMinutes,
                    //7 SS.ShiftTimeInHours

                    ClearAll();
                    btnDelete.Enabled = true;
                    TableId = Convert.ToInt32(dataGridView1.Rows[e.RowIndex].Cells[0].Value);
                    dtpShiftDate.Value = Convert.ToDateTime(dataGridView1.Rows[e.RowIndex].Cells[1].Value);
                    cmbMachineName.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[3].Value));
                    txtMachineRunMinutes.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[4].Value));
                    txtMachineRunHours.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[5].Value));
                    txtTimeInMinutes.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[6].Value));
                    txtTimeInHours.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[7].Value));

                }
            }
            catch (Exception ex1)
            {
                objRL.ErrorMessge(ex1.ToString());
                return;
            }
            finally
            {
                GC.Collect();
            }
        }

        double MinutesV = 0, HoursV = 0;
        private void CalculateHours(string valMinutes, TextBox tbHours)
        {
            MinutesV = 0; HoursV = 0;
            MinutesV = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(valMinutes)));

            TimeSpan timeSpan = TimeSpan.FromMinutes(MinutesV);

            //HoursV = MinutesV/60.0;
            //HoursV = Math.Round(HoursV, 2);

            //HoursV = timeSpan.Hours;
            //HoursV = Math.Round(HoursV, 2);

            string timeString = timeSpan.ToString(@"hh\:mm");
            tbHours.Text = timeString.ToString();

        }
        private void txtMachineRunMinutes_TextChanged(object sender, EventArgs e)
        {
            CalculateHours(txtMachineRunMinutes.Text, txtMachineRunHours);
        }

        private void btnView_Click(object sender, EventArgs e)
        {
            Fill_Records();
            //GetRecord();
        }

        int year = 0, month = 0;
        List<DateTime> allDates = new List<DateTime>();
        public void GetDatesBetween(DateTime startDate, DateTime endDate)
        {
            year = 0; month = 0;
            //allDates = null; allDates = new List<DateTime>();
            //for (DateTime date = startDate; date <= endDate; date = date.AddDays(1))
            //    allDates.Add(date);

            //if (allDates.Count == 0)
            //    allDates.Add(dtpFromDate.Value);
            ////return allDates;

            if (cmbMonth.SelectedIndex > -1 && cmbYear.SelectedIndex > -1)
            {
                year = Convert.ToInt32(cmbYear.Text);
                month = Convert.ToInt32(objRL.GetMonthNumber(cmbMonth.Text));

                int daysInJanuary = DateTime.DaysInMonth(Convert.ToInt32(cmbYear.Text), month);

                for (int day = 1; day <= daysInJanuary; day++)
                {
                    allDates.Add(new DateTime(year, month, day)); // Add the date to the list
                }
            }
        }
        //private void Get_Dates()
        //{
        //    var datesList = GetDatesMonthYearWise(2025); // Example for the year 2025

        //    // Print the dates grouped by year and month
        //    foreach (var item in datesList)
        //    {
        //        Console.WriteLine($"Year: {item.Year}, Month: {item.Month}");
        //        foreach (var date in item.Dates)
        //        {
        //            Console.WriteLine(date.ToShortDateString());
        //        }
        //        Console.WriteLine();
        //    }
        //}

        //static List<MonthYearDates> GetDatesMonthYearWise(int year)
        //{
        //    List<MonthYearDates> datesList = new List<MonthYearDates>();

        //    // Loop through each month
        //    for (int month = 1; month <= 1; month++)
        //    {
        //        List<DateTime> datesInMonth = new List<DateTime>();
        //        int daysInMonth = DateTime.DaysInMonth(year, month);

        //        // Loop through each day of the current month
        //        for (int day = 1; day <= daysInMonth; day++)
        //        {
        //            datesInMonth.Add(new DateTime(year, month, day));
        //        }

        //        // Add the dates for the current month and year to the list
        //        datesList.Add(new MonthYearDates
        //        {
        //            Year = year,
        //            Month = month,
        //            Dates = datesInMonth
        //        });
        //    }

        //    return datesList;
        //}


        
        private void GetRecord()
        {
            DataSet ds = new DataSet();
            year = 0; month = 0;
            
            //allDates = null; allDates = new List<DateTime>();
            //for (DateTime date = startDate; date <= endDate; date = date.AddDays(1))
            //    allDates.Add(date);

            //if (allDates.Count == 0)
            //    allDates.Add(dtpFromDate.Value);
            ////return allDates;

            if (cmbMonth.SelectedIndex > -1 && cmbYear.SelectedIndex > -1)
            {
                year = Convert.ToInt32(cmbYear.Text);
                month = Convert.ToInt32(objRL.GetMonthNumber(cmbMonth.Text));

                if (cmbMachineName.SelectedIndex > -1)
                {
                    dgvShift.Rows.Clear();

                    //objBL.Query = "select SS.ShiftScheduleId,EntryDate,MachineId,MachineRunMinutes,MachineHours,ShiftTimeInMinutes,ShiftTimeInHours,ShiftMonthInt,ShiftMonthInt,ShiftMonth,ShiftYear from shiftschedule where ShiftMonthInt='" + month + " and ShiftYear=" + year + " and MachineId=" + cmbMachineName.SelectedValue + "";
                    objBL.Query = "select SS.ShiftScheduleId,SS.EntryDate,SS.MachineId,M.MachineName,SS.MachineRunMinutes,SS.MachineHours,SS.ShiftTimeInMinutes,SS.ShiftTimeInHours from shiftschedule SS inner join MachineMaster M on M.MachineId=SS.MachineId where SS.CancelTag=0 and M.CancelTag=0 and SS.ShiftMonthInt=" + month + " and SS.ShiftYear=" + year + " and SS.MachineId=" + cmbMachineName.SelectedValue + "";
                    ds = objBL.ReturnDataSet();
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                        {
                            dgvShift.Rows.Add();
                            dgvShift.Rows[i].Cells["clmShiftScheduleId"].Value = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["ShiftScheduleId"]));
                            dgvShift.Rows[i].Cells["clmEntryDate"].Value = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["EntryDate"]));
                            dgvShift.Rows[i].Cells["clmMachine"].Value = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["MachineName"]));
                            dgvShift.Rows[i].Cells["clmMachineRun"].Value = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["MachineRunMinutes"]));
                            dgvShift.Rows[i].Cells["clmMachineRunHours"].Value = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["MachineHours"]));
                            dgvShift.Rows[i].Cells["clmTimeInMinutes"].Value = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["ShiftTimeInMinutes"]));
                            dgvShift.Rows[i].Cells["clmTimeInHours"].Value = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["ShiftTimeInHours"]));
                        }
                    }
                    else
                    {
                       
                    }
                }
            }
                
        }

        private bool ValidationView()
        {
            objEP.Clear();
            if (cmbMonth.SelectedIndex == -1)
            {
                objEP.SetError(cmbMonth, "Select Month");
                cmbMonth.Focus();
                return true;
            }
            else if (cmbYear.Text == "")
            {
                objEP.SetError(cmbYear, "Select Year");
                cmbYear.Focus();
                return true;
            }
            else if (cmbMachineName.Text == "")
            {
                objEP.SetError(cmbMachineName, "Select Machine Name");
                cmbMachineName.Focus();
                return true;
            }
            else
                return false;
        }

        private void Get_Enter_Time()
        {
            ShiftTimeInMinutes = 0;
            ShiftTimeInHours = string.Empty;
       
            DataSet ds = new DataSet();
            objBL.Query = "select SS.ShiftScheduleId,SS.EntryDate,SS.MachineId,M.MachineName,SS.MachineRunMinutes,SS.MachineHours,SS.ShiftTimeInMinutes,SS.ShiftTimeInHours from shiftschedule SS inner join MachineMaster M on M.MachineId=SS.MachineId where SS.CancelTag=0 and M.CancelTag=0 and SS.EntryDate='" + dtProductionDate.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "' and  SS.ShiftMonthInt=" + month + " and SS.ShiftYear=" + year + " and SS.MachineId=" + cmbMachineName.SelectedValue + "";
            ds = objBL.ReturnDataSet();
            if (ds.Tables[0].Rows.Count > 0)
            {
                ShiftTimeInMinutes = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0]["ShiftTimeInMinutes"])));
                ShiftTimeInHours = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0]["ShiftTimeInHours"]));
            }
        }

        DateTime dtProductionDate;
        private void Fill_Records()
        {
            if (!ValidationView())
            {
                DataSet ds=new DataSet();

                DateTime starting = new DateTime();
                starting = dtpFromDate.Value; // DateTime.ParseExact(dtpFromDate.Value, BusinessResources.DATEFORMATYYYYYMMDD, null);
                DateTime ending = new DateTime();
                ending = dtpToDate.Value; // DateTime.ParseExact(date2.Value, "dd-MM-yyyy", null);
                GetDatesBetween(starting, ending);

                if (allDates.Count > 0)
                {
                    for (int i = 0; i < allDates.Count; i++)
                    {
                        dtProductionDate = Convert.ToDateTime(allDates[i]);
                        objBL.Query = "select sum(TotalMinutes) from dataentry where CancelTag=0 and ProductionDate='" + dtProductionDate.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "' and MachineId=" + cmbMachineName.SelectedValue + " ";
                        ds = objBL.ReturnDataSet();

                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            dgvShift.Rows.Add(ds);
                            dgvShift.Rows[i].Cells["clmDate"].Value = dtProductionDate.ToString(BusinessResources.DATEFORMATDDMMYYYY);
                            dgvShift.Rows[i].Cells["clmMachine"].Value = cmbMachineName.Text;
                            MinutesV = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][0])));

                            dgvShift.Rows[i].Cells["clmMachineRun"].Value = MinutesV.ToString();

                            TimeSpan timeSpan = TimeSpan.FromMinutes(MinutesV);

                            string timeString = timeSpan.ToString(@"hh\:mm");
                            dgvShift.Rows[i].Cells["clmMachineRunHours"].Value = timeString.ToString();

                            Get_Enter_Time();

                            dgvShift.Rows[i].Cells["clmTimeInMinutes"].Value = objRL.CheckNullString(Convert.ToString(ShiftTimeInMinutes));
                            dgvShift.Rows[i].Cells["clmTimeInHours"].Value = objRL.CheckNullString(Convert.ToString(ShiftTimeInHours));
                            
                            //dgvShift.Rows[i].Cells["clmMachineRunHours"].Value = "";
                            //dgvShift.Rows[i].Cells["clmMachineRun"].Value = "";
                            //dgvShift.Rows[i].Cells["clmMachineRunHours"].Value = "";
                        }
                    }
                }
            }
        }

        double MachineMinutes = 0, EnterMinutes = 0;
        private void dgvShift_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                MachineMinutes = 0; EnterMinutes = 0;
                //if (!string.IsNullOrEmpty(Convert.ToString(dgvValues.Rows[e.RowIndex].Cells["clmNeckID"].Value)))
                if (dgvShift.Rows.Count >0)
                {
                    int ColInd = e.ColumnIndex;

                    if (ColInd == 2 || ColInd == 4)
                    {
                        if (!string.IsNullOrEmpty(Convert.ToString(dgvShift.Rows[e.RowIndex].Cells[2].Value)))
                        {
                            MachineMinutes = 0;
                            MachineMinutes = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dgvShift.Rows[e.RowIndex].Cells[2].Value)));

                            if (ColInd == 4)
                            {
                                if (!string.IsNullOrEmpty(Convert.ToString(dgvShift.Rows[e.RowIndex].Cells[4].Value)))
                                {
                                    EnterMinutes = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dgvShift.Rows[e.RowIndex].Cells[4].Value)));

                                    if (MachineMinutes > 0)
                                    {
                                        if (EnterMinutes > MachineMinutes)
                                        {
                                            MessageBox.Show("Please enter correct value");
                                            dgvShift.Rows[e.RowIndex].Cells[4].Value = "";
                                        }
                                        else
                                        {
                                            TimeSpan timeSpan = TimeSpan.FromMinutes(EnterMinutes);
                                            string timeString = timeSpan.ToString(@"hh\:mm");
                                            dgvShift.Rows[e.RowIndex].Cells["clmTimeInHours"].Value = timeString.ToString();
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex1)
            {

            }
            finally { GC.Collect(); }
        }

        private void txtTimeInMinutes_TextChanged(object sender, EventArgs e)
        {
            CalculateHours(txtTimeInMinutes.Text, txtTimeInHours);
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            ClearAll();
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (objPC.DeleteFlagUR == 1)
            {
                try
                {
                    DialogResult dr = objRL.Delete_Record_Show_Message();
                    if (dr == System.Windows.Forms.DialogResult.Yes)
                    {
                        FlagDelete = true;
                        SaveDB();
                    }
                }
                catch (Exception ex1) { objRL.ErrorMessge(ex1.ToString()); }
                finally { GC.Collect(); }
            }
            else
            {
                objRL.ShowMessage(24, 4);
                return;
            }
        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            if (txtSearch.Text != "")
                SearchFlag = true;
            else
                SearchFlag = false;

            FillGrid();
        }

        private void txtMachineRunMinutes_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.NumericValue(sender, e, txtMachineRunMinutes);
        }
        private void txtTimeInMinutes_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.NumericValue(sender, e, txtTimeInMinutes);
        }
    }
}
