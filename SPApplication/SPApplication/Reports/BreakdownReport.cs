using BusinessLayerUtility;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SPApplication.Reports
{
    public partial class BreakdownReport : Form
    {
        BusinessLayer objBL = new BusinessLayer();
        RedundancyLogics objRL = new RedundancyLogics();
        DesignLayer objDL = new DesignLayer();
        ErrorProvider objEP = new ErrorProvider();
        QueryLayer objQL = new QueryLayer();
        PropertyClass objPC = new PropertyClass();

        string MainQuery = string.Empty, WhereClause = string.Empty, OrderByClause = string.Empty, UserClause = string.Empty;

        int RowCount_Grid = 0, CurrentRowIndex = 0;

        public BreakdownReport()
        {
            InitializeComponent();
            objDL.SetDesignMaster(this, lblHeader, btnSave, btnClear, btnDelete, btnExit, "Break Down Report");
            btnSave.Text = BusinessResources.BTN_REPORT;
            objRL.Fill_Location_ComboBox_By_Users(cmbLocation);
            //cmbMonth.Text = objRL.MonthName;
            //cmbYear.Text = objRL.Year;
            //cmbReportType.Text = objRL.ReportType;
            ////dtpFromDate.Value = Convert.ToDateTime(objRL.FromDate.Date);
            ////dtpToDate.Value = Convert.ToDateTime(objRL.ToDate.Date);
            //objRL.SelectedDate = Convert.ToDateTime(objRL.FromDate.Date);
        }

        public BreakdownReport(DateTime dt)
        {
            InitializeComponent();
            objDL.SetDesignMaster(this, lblHeader, btnSave, btnClear, btnDelete, btnExit, "Break Down Report");
            btnSave.Text = BusinessResources.BTN_REPORT;
            objRL.Fill_Location_ComboBox_By_Users(cmbLocation);
            cmbMonth.Text = RedundancyLogics.MonthName;
            cmbYear.Text = RedundancyLogics.Year;
            cmbReportType.Text = RedundancyLogics.ReportType;
            cmbLocation.Text = RedundancyLogics.LocationName;

            ////dtpFromDate.Value = Convert.ToDateTime(objRL.FromDate.Date);
            ////dtpToDate.Value = Convert.ToDateTime(objRL.ToDate.Date);
            objRL.SelectedDate = dt; //Convert.ToDateTime(objRL.FromDate.Date);
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void BreakdownReport_Load(object sender, EventArgs e)
        {
            FillGrid();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {

        }

        double ShiftMinutes = 0, ShiftHours = 0, ShiftMinutesTotal = 0, TotalDowntime = 0, OperatingTime = 0, ShiftStartupAndShiftEndDowntimeMinutes = 0, CIPMinutes = 0, ProductOrMachineSettingMinutes = 0, RMPMNotAvailableMinutes = 0, MealBreakMinutes = 0, MaintainanceBreakdownMinutes = 0, TotalBreakdownMinutes = 0;
        double ShiftStartupAndShiftEndDowntimeMinutesTotal = 0, CIPMinutesTotal = 0, ProductOrMachineSettingMinutesTotal = 0, RMPMNotAvailableMinutesTotal = 0, MealBreakMinutesTotal = 0, MaintainanceBreakdownMinutesTotal = 0, TotalBreakdownMinutesTotal = 0;
        int TotalProducts = 0, Products = 0, Machine = 0, TotalMachines = 0;

        private void ClearVariables()
        {
            //StratupBreakdownAndOthersHours = 0;CIPHours = 0; ProductOrMachineSettingHours = 0; RMPMNotAvailableHours = 0; MealBreakHours = 0; MaintainanceBreakdownHours = 0; TotalBreakdownHours = 0;
            ShiftStartupAndShiftEndDowntimeMinutes = 0; CIPMinutes = 0; ProductOrMachineSettingMinutes = 0; RMPMNotAvailableMinutes = 0; MealBreakMinutes = 0; MaintainanceBreakdownMinutes = 0; TotalBreakdownMinutes = 0;
            ShiftStartupAndShiftEndDowntimeMinutesTotal = 0; CIPMinutesTotal = 0; ProductOrMachineSettingMinutesTotal = 0; RMPMNotAvailableMinutesTotal = 0; MealBreakMinutesTotal = 0; MaintainanceBreakdownMinutesTotal = 0; TotalBreakdownMinutesTotal = 0;
        }

        DateTime dtProductionDate;
        List<DateTime> allDates = new List<DateTime>();

        public void GetDatesBetween(DateTime startDate, DateTime endDate)
        {
            allDates = null; allDates = new List<DateTime>();

            for (DateTime date = startDate; date <= endDate; date = date.AddDays(1))
                allDates.Add(date);

            if (allDates.Count == 0)
                allDates.Add(startDate);
        }

        private string Get_Sum(string colName)
        {
            string SumValue = string.Empty; double SumValueD = 0;
            SumValue = string.Empty;
            DataSet dsSum = new DataSet();
            objBL.Query = "select sum(" + colName + ") from dataentry where CancelTag=0 and ProductionDate='" + dtProductionDate.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "'";
            dsSum = objBL.ReturnDataSet();

            if (dsSum.Tables[0].Rows.Count > 0)
            {
                SumValue = objRL.CheckNullString(Convert.ToString(dsSum.Tables[0].Rows[0][0]));
                SumValueD = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsSum.Tables[0].Rows[0][0])));
                SumValueD = Math.Round(SumValueD, 0);
            }

            return SumValueD.ToString();
        }


        private void GetMonthDate()
        {
            DateTime today = DateTime.Today;

            //Start of current month
            //DateTime startOfMonth = new DateTime(today.Year, today.Month, 1);

            int selectedMonth = 0;
            int selectedYear = 0;

            selectedMonth = objRL.GetMonthNumber(cmbMonth.Text);
            selectedYear = Convert.ToInt32(cmbYear.Text);

            DateTime startOfMonth = new DateTime(selectedYear, selectedMonth, 1);

            // End of current month
            DateTime endOfMonth = startOfMonth.AddMonths(1).AddDays(-1);
             
            GetDatesBetween(startOfMonth, endOfMonth);
        }

        string ProductionDay = string.Empty;

        private void FillGrid()
        {
            //GetMonthDate();
            dataGridView1.Rows.Clear();
            ClearVariables();
             
            //Date Wise Report
            //Month Wise Report

            if (cmbReportType.Text == "Date Wise Report")
                GetDatesBetween(dtpFromDate.Value, dtpToDate.Value);
            else
                GetMonthDate();

            if (allDates.Count > 0)
            {
                lblTotalCount.Text = "Total Count-" + allDates.Count.ToString();

                int RCount = 0;
                //Total

                dataGridView1.Rows.Add();
                dataGridView1.Rows[RCount].Cells[0].Value = "Total";
                RCount++;

                TotalMachines = 0; TotalProducts = 0;

                for (int j = 0; j < allDates.Count; j++)
                {
                    //CIPHours = 0; ProductOrMachineSettingHours = 0; RMPMNotAvailableHours = 0; MealBreakHours = 0; MaintainanceBreakdownHours = 0; TotalBreakdownHours = 0;
                    ShiftStartupAndShiftEndDowntimeMinutes = 0; CIPMinutes = 0; ProductOrMachineSettingMinutes = 0; RMPMNotAvailableMinutes = 0; MealBreakMinutes = 0; MaintainanceBreakdownMinutes = 0; TotalBreakdownMinutes = 0;

                    dtProductionDate = Convert.ToDateTime(allDates[j]);

                    //dtProductionDate = objRL.SelectedDate;
                    ProductionDay = dtProductionDate.DayOfWeek.ToString();

                    //RCount = 1;
                     
                    dataGridView1.Rows.Add();

                    //dataGridView1.Rows[RCount].Cells["clmMaintenanceLink"].Value = "Break Down";
                    //dataGridView1.Rows[RCount].Cells["clmCostLink"].Value = "Cost";
                    //dataGridView1.Rows[RCount].Cells["clmTotalHoursLink"].Value = "Hours";

                    //Links
                    //dataGridView1.Rows[RCount].Cells["clmMaintenanceLink"].Value = "Maintenance";
                    //    dataGridView1.Rows[RCount].Cells["clmCostLink"].Value = "Cost";
                    // dataGridView1.Rows[RCount].Cells["clmTotalHoursLink"].Value = "Total Hours";

                    //Date-C
                    //dtProductionDate = Convert.ToDateTime(ds.Tables[0].Rows[i]["ProductionDate"]);

                    Machine = 0; Products = 0;
                    DataSet dsMachineSum = new DataSet();
                    objBL.Query = "select count(DISTINCT MachineId),count(ProductId) from dataentry where CancelTag=0 and ProductionDate='" + dtProductionDate.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "'";
                    dsMachineSum = objBL.ReturnDataSet();

                    Machine = 0; Products = 0;
                    if (dsMachineSum.Tables[0].Rows.Count > 0)
                    {
                        Machine = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dsMachineSum.Tables[0].Rows[0][0])));
                        Products = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dsMachineSum.Tables[0].Rows[0][1])));
                        TotalMachines += Machine;
                        TotalProducts += Products;
                    }

                    //Declarations

                    //Total Line Used -A
                    dataGridView1.Rows[RCount].Cells["clmTotalMachineUsed"].Value = Machine.ToString();

                    //Total Nos. of SKUS -B
                    dataGridView1.Rows[RCount].Cells["clmTotalNosOfProducts"].Value = Products.ToString();

                    //Date-C
                    dataGridView1.Rows[RCount].Cells["clmProductionDate"].Value = dtProductionDate.ToString(BusinessResources.DATEFORMATDDMMYYYY);

                    ////Total Employees -D
                    //TotalEmployeesTotal += TotalEmployees;
                    //dataGridView1.Rows[RCount].Cells["clmTotalEmployees"].Value = TotalEmployees.ToString();

                    ////Total Overtime Hrs.-E
                    //TotalOvertimeHrsTotal += TotalOvertimeHrs;
                    //dataGridView1.Rows[RCount].Cells["clmTotalOvertimeHrs"].Value = TotalOvertimeHrs.ToString();

                    //ShiftHours -G
                    DataSet dsShift = new DataSet();
                    objBL.Query = "select ShiftTimeInMinutes from shiftschedule where CancelTag=0 and EntryDate='" + dtProductionDate.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "'";
                    dsShift = objBL.ReturnDataSet();

                    if (dsShift.Tables[0].Rows.Count > 0)
                    {
                        ShiftMinutes = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dsShift.Tables[0].Rows[0]["ShiftTimeInMinutes"])));
                        ShiftHours = ShiftMinutes / 60;
                        ShiftMinutesTotal += ShiftMinutes;
                    }

                    //ConvertHours = TimeSpan.Zero;
                    //ConvertHours = TimeSpan.FromHours(TotalMinutes);
                    //objRL.Convert_Minutes_HHMM(ShiftMinutes);

                    //Shift Hours for plant-F   
                    //dataGridView1.Rows[RCount].Cells["clmShiftHoursForPlant"].Value = ShiftMinutes.ToString();

                    //Shift Hours -G
                    //dataGridView1.Rows[RCount].Cells["clmShiftHours"].Value = objRL.Convert_Minutes_HHMM(ShiftMinutes);

                    //Total Downtime Minutes - L Field-TotalDowntime 
                    TotalDowntime = objRL.CheckNullString_ReturnDouble(Convert.ToString(Get_Sum("TotalDowntime")));
                    //TotalDowntimeTotal += TotalDowntime;

                    //Total Break Down  -M 
                    //dataGridView1.Rows[RCount].Cells["clmTotalBreakDown"].Value = objRL.Convert_Minutes_HHMM(TotalDowntime);

                    //OperatingTime -N
                    OperatingTime = objRL.CheckNullString_ReturnDouble(Convert.ToString(Get_Sum("OperatingTime")));
                    //OperatingTimeTotal += OperatingTimeTotal;

                    //Shift Startup & Shift End downtime =F5-L5-N5  Column-J
                    ShiftStartupAndShiftEndDowntimeMinutes = ShiftMinutes - TotalDowntime - OperatingTime;
                    ShiftStartupAndShiftEndDowntimeMinutes = Math.Round(ShiftStartupAndShiftEndDowntimeMinutes, 0);
                    ShiftStartupAndShiftEndDowntimeMinutesTotal += ShiftStartupAndShiftEndDowntimeMinutes;
                    dataGridView1.Rows[RCount].Cells["clmStratupBreakdownAndOthersHours"].Value = objRL.Convert_Minutes_HHMM(ShiftStartupAndShiftEndDowntimeMinutes);

                    CIPMinutes = objRL.CheckNullString_ReturnDouble(Convert.ToString(Get_Sum("CIP")));
                    CIPMinutesTotal += CIPMinutes;
                    dataGridView1.Rows[RCount].Cells["clmCIPHours"].Value = objRL.Convert_Minutes_HHMM(CIPMinutes);

                    ProductOrMachineSettingMinutes = objRL.CheckNullString_ReturnDouble(Convert.ToString(Get_Sum("ProductOrMachineSetting")));
                    ProductOrMachineSettingMinutesTotal += ProductOrMachineSettingMinutes;
                    dataGridView1.Rows[RCount].Cells["clmProductOrMachineSettingHours"].Value = objRL.Convert_Minutes_HHMM(ProductOrMachineSettingMinutes);

                    RMPMNotAvailableMinutes = objRL.CheckNullString_ReturnDouble(Convert.ToString(Get_Sum("RMPMNotAvailable")));
                    RMPMNotAvailableMinutesTotal += RMPMNotAvailableMinutes;
                    dataGridView1.Rows[RCount].Cells["clmRMPMNotAvailableHours"].Value = objRL.Convert_Minutes_HHMM(RMPMNotAvailableMinutes);

                    MealBreakMinutes = objRL.CheckNullString_ReturnDouble(Convert.ToString(Get_Sum("MealBreak")));
                    MealBreakMinutesTotal += MealBreakMinutes;
                    dataGridView1.Rows[RCount].Cells["clmMealBreakHours"].Value = objRL.Convert_Minutes_HHMM(MealBreakMinutes);

                    MaintainanceBreakdownMinutes = objRL.CheckNullString_ReturnDouble(Convert.ToString(Get_Sum("MaintenanceBreakdown")));
                    MaintainanceBreakdownMinutesTotal += MaintainanceBreakdownMinutes;
                    dataGridView1.Rows[RCount].Cells["clmMaintainanceBreakdownHours"].Value = objRL.Convert_Minutes_HHMM(MaintainanceBreakdownMinutes);

                    TotalBreakdownMinutes = CIPMinutes + ProductOrMachineSettingMinutes + RMPMNotAvailableMinutes + MealBreakMinutes + MaintainanceBreakdownMinutes;
                    TotalBreakdownMinutesTotal += TotalBreakdownMinutes;
                    dataGridView1.Rows[RCount].Cells["clmTotalBreakDown"].Value = objRL.Convert_Minutes_HHMM(TotalBreakdownMinutes);
                    
                    RCount++;
                }
                    RCount = 0;

                    dataGridView1.Rows[RCount].Cells["clmStratupBreakdownAndOthersHours"].Value = objRL.Convert_Minutes_HHMM(ShiftStartupAndShiftEndDowntimeMinutesTotal);
                    dataGridView1.Rows[RCount].Cells["clmCIPHours"].Value = objRL.Convert_Minutes_HHMM(CIPMinutesTotal);
                    dataGridView1.Rows[RCount].Cells["clmProductOrMachineSettingHours"].Value = objRL.Convert_Minutes_HHMM(ProductOrMachineSettingMinutesTotal);
                    dataGridView1.Rows[RCount].Cells["clmRMPMNotAvailableHours"].Value = objRL.Convert_Minutes_HHMM(RMPMNotAvailableMinutesTotal);
                    dataGridView1.Rows[RCount].Cells["clmMealBreakHours"].Value = objRL.Convert_Minutes_HHMM(MealBreakMinutesTotal);
                    dataGridView1.Rows[RCount].Cells["clmMaintainanceBreakdownHours"].Value = objRL.Convert_Minutes_HHMM(MaintainanceBreakdownMinutesTotal);
                    dataGridView1.Rows[RCount].Cells["clmTotalBreakDown"].Value = objRL.Convert_Minutes_HHMM(TotalBreakdownMinutesTotal); 

                dataGridView1.Rows[0].DefaultCellStyle.BackColor = Color.AliceBlue;

                FreezeColumns(false);

                FreezeColumns(true);

                //dataGridView1.Rows.Add();
                //dataGridView1.Rows[dataGridView1.Rows.Count].Cells[1].Value = "Total";

                dataGridView1.ClearSelection();
            }
        }

        private void FreezeColumns(bool send)
        {
            // Assuming you have a DataGridView named 'dataGridView1'

            // Set the first column to be frozen
            //dataGridView1.Columns["clmProductName"].Frozen = send;  // Freeze the first column

            //// Set the second column to be frozen
            //dataGridView1.Columns["clmMachineId"].Frozen = send;  // Freeze the second column

            dataGridView1.Rows[0].Frozen = true;
        }
    }
}
