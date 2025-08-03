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
    public partial class DaywiseReport : Form
    {
        BusinessLayer objBL = new BusinessLayer();
        RedundancyLogics objRL = new RedundancyLogics();
        DesignLayer objDL = new DesignLayer();
        ErrorProvider objEP = new ErrorProvider();
        QueryLayer objQL = new QueryLayer();
        PropertyClass objPC = new PropertyClass();

        string MainQuery = string.Empty, WhereClause = string.Empty, OrderByClause = string.Empty, UserClause = string.Empty;

        int RowCount_Grid = 0, CurrentRowIndex = 0;
        int TotalProducts = 0, Products = 0, Machine = 0, TotalMachines = 0;
        //double ProcessCapacity = 0, ProcessCapacityTotal = 0, BottleNeckCapicity = 0, BottleNeckCapicityTotal = 0, ManpowerRequired = 0, ManpowerRequiredTotal = 0, ManpowerAvailable = 0, ManpowerAvailableTotal = 0, TotalMinutes = 0, TotalMinutesTotal = 0, CIP = 0, CIPTotal = 0;
        //double ProductOrMachineSetting = 0, ProductOrMachineSettingTotal = 0, RMPMNotAvailable = 0, RMPMNotAvailableTotal = 0, MealBreak = 0, MealBreakTotal = 0, MaintenanceBreakdown = 0, MaintenanceBreakdownTotal = 0;
        //double TotalDowntime = 0, TotalDowntimeTotal = 0, OperatingTime = 0, OperatingTimeTotal = 0, Availabilty = 0, AvailabiltyTotal = 0;
        //double Production = 0, ProductionTotal = 0, TotalProduction = 0, TotalProductionTotal = 0, ProductionDone = 0, ProductionDoneTotal = 0;
        //double BottleNeckTargetProductionBoxes = 0, BottleNeckTargetProductionBoxesTotal = 0, BottleNeckPerformance = 0, BottleNeckPerformanceTotal = 0;
        //double BottlePerMinuteActual = 0, BottlePerMinuteActualTotal = 0, BottlePerMinuteData = 0, BottlePerMinuteDataTotal = 0;
        //int Pending_Count = 0, Completed_Count = 0, Closed_Count = 0, Cancel_Count = 0, Remarks_Count = 0;

        DateTime dtProductionDate;
        TimeSpan ConvertHours = TimeSpan.Zero;

        double ShiftStartupAndShiftEndDowntimeMinutesTotal = 0, ProductionHoursAvailibityMinutes = 0, ProductionHoursAvailibityHours = 0, ProductionHoursAvailibityMinutesTotal = 0, RejectTotal = 0, FinalProductionTotal = 0, FillingCapacityUtilizationTotal = 0, ActualCapacityTotal = 0, ActualCapacityUtilizationTotal = 0, ActualCapacityUtilizationAATotal = 0;
        double TotalEmployees = 0, TotalOvertimeHrs = 0, ShiftHoursForPlant = 0, ShiftHours = 0, ShiftMinutes = 0, ShiftMinutesTotal = 0, TotalAvailableHours = 0, WorkingHours = 0, WorkingMinutes = 0;
        double ShiftStartupAndShiftEndDowntimeMinutes = 0, ShiftStartupAndShiftEndDowntimeHours = 0;
        double TotalEmployeesTotal = 0, TotalOvertimeHrsTotal = 0, TotalProductionInBoxesTotal = 0;
        double TotalDowntime = 0, TotalDowntimeTotal = 0, OperatingTime = 0, OperatingTimeTotal = 0, Availabilty = 0, AvailabiltyTotal = 0;
        double BottleNeckTargetProductionBoxes = 0, BottleNeckTargetProductionBoxesTotal = 0, BottleNeckPerformance = 0, BottleNeckPerformanceTotal = 0;
        double BottlePerMinuteActual = 0, BottlePerMinuteActualTotal = 0, BottlePerMinuteData = 0, BottlePerMinuteDataTotal = 0;
        double Production = 0, ProductionTotal = 0, TotalProduction = 0, TotalProductionTotal = 0, ProductionDone = 0, ProductionDoneTotal = 0,TotalMinutes = 0, TotalMinutesTotal = 0,ActualCapacityLessCIPHoursTotal=0,ActualCapacityUtilizationTTotal=0;

        public DaywiseReport()
        {
            InitializeComponent();
            objDL.SetDesignMaster(this, lblHeader, btnSave, btnClear, btnDelete, btnExit, "Datewise Report");
            btnSave.Text = BusinessResources.BTN_REPORT;
            //objRL.Fill_Machine(cmbMachineName);
            //objRL.Fill_Item_ListBox(lbItem, txtSearchProductName.Text, "All");
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            //FillGrid();
            FillGridNew();
        }

        private bool Validation()
        {
            objEP.Clear();
            if (cmbLocation.SelectedIndex == -1)
            {
                objEP.SetError(cmbLocation, "Select Location");
                cmbLocation.Focus();
                return true;
            }
            else if (cmbReportType.SelectedIndex == -1)
            {
                objEP.SetError(cmbReportType, "Select Report Type");
                cmbReportType.Focus();
                return true;
            }
            else
                return false;
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            ClearAll();
        }

        private void DaywiseReport_Load(object sender, EventArgs e)
        {
            objRL.Fill_Location_ComboBox_By_Users(cmbLocation);
            ClearAll();
        }

        private void ClearAll()
        {
            ClearVariables();
            cmbLocation.SelectedIndex = -1;
            dataGridView1.Rows.Clear();
            objEP.Clear();
            cmbReportType.SelectedIndex = -1;
            dtpFromDate.Value = DateTime.Now.Date;
            dtpToDate.Value = DateTime.Now.Date;
            cmbMonth.SelectedIndex = -1;
            cmbYear.SelectedIndex = -1;
            cbToday.Checked = true;
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

        private void ClearVariables()
        {
            Machine = 0;
            TotalMachines = 0;
            TotalProducts = 0;
            Products = 0;
            //ProcessCapacityTotal = 0;
            //BottleNeckCapicityTotal = 0;
            //ManpowerRequiredTotal = 0;
            //ManpowerAvailableTotal = 0;
            //TotalMinutesTotal = 0;
            //CIPTotal = 0;
            //ProductOrMachineSettingTotal = 0;
            //RMPMNotAvailableTotal = 0;
            //MealBreakTotal = 0;
            //MaintenanceBreakdownTotal = 0;
            //TotalDowntimeTotal = 0;
            //OperatingTimeTotal = 0;
            //AvailabiltyTotal = 0;
            //ProductionTotal = 0;
            //TotalProductionTotal = 0;
            //ProductionDoneTotal = 0;
            //BottleNeckTargetProductionBoxesTotal = 0;
            //BottleNeckPerformanceTotal = 0;
            //BottlePerMinuteActualTotal = 0;
            //BottlePerMinuteDataTotal = 0;

            ShiftStartupAndShiftEndDowntimeMinutesTotal = 0; ProductionHoursAvailibityMinutes = 0; ProductionHoursAvailibityHours = 0;
            ProductionHoursAvailibityMinutesTotal = 0; RejectTotal = 0; FinalProductionTotal = 0; FillingCapacityUtilizationTotal = 0; ActualCapacityTotal = 0;
            ActualCapacityUtilizationTotal = 0; ActualCapacityUtilizationAATotal = 0; TotalEmployees = 0; TotalOvertimeHrs = 0; ShiftHoursForPlant = 0;
            ShiftHours = 0; ShiftMinutes = 0; ShiftMinutesTotal = 0; TotalAvailableHours = 0; WorkingHours = 0; WorkingMinutes = 0; ShiftStartupAndShiftEndDowntimeMinutes = 0;
            ShiftStartupAndShiftEndDowntimeHours = 0; TotalEmployeesTotal = 0; TotalOvertimeHrsTotal = 0; TotalProductionInBoxesTotal = 0; TotalDowntime = 0;
            TotalDowntimeTotal = 0; OperatingTime = 0; OperatingTimeTotal = 0; Availabilty = 0; AvailabiltyTotal = 0; BottleNeckTargetProductionBoxes = 0;
            BottleNeckTargetProductionBoxesTotal = 0; BottleNeckPerformance = 0; BottleNeckPerformanceTotal = 0; BottlePerMinuteActual = 0; BottlePerMinuteActualTotal = 0;
            BottlePerMinuteData = 0; BottlePerMinuteDataTotal = 0; Production = 0; ProductionTotal = 0; TotalProduction = 0; TotalProductionTotal = 0; ProductionDone = 0;
            ProductionDoneTotal = 0; TotalMinutes = 0; TotalMinutesTotal = 0; ActualCapacityLessCIPHoursTotal = 0; ActualCapacityUtilizationTTotal = 0;
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

        List<DateTime> allDates = new List<DateTime>();

        public void GetDatesBetween(DateTime startDate, DateTime endDate)
        {
            allDates = null; allDates = new List<DateTime>();

            for (DateTime date = startDate; date <= endDate; date = date.AddDays(1))
                allDates.Add(date);

            if (allDates.Count == 0)
                allDates.Add(startDate);
        }


        private void GetMonthDate()
        {
            int selectedMonth = 0;
            int selectedYear = 0;

            selectedMonth = objRL.GetMonthNumber(cmbMonth.Text);
            selectedYear = Convert.ToInt32(cmbYear.Text);
             
            DateTime startOfMonth = new DateTime(selectedYear, selectedMonth, 1);

            //DateTime today = DateTime.Today;

            // Start of current month
            //DateTime startOfMonth = new DateTime(today.Year, today.Month, 1);

            // End of current month
            DateTime endOfMonth = startOfMonth.AddMonths(1).AddDays(-1);

            //Console.WriteLine("Start of Month: " + startOfMonth.ToString("yyyy-MM-dd"));
            //Console.WriteLine("End of Month: " + endOfMonth.ToString("yyyy-MM-dd"));
            GetDatesBetween(startOfMonth, endOfMonth);

        }

        public void CalculationsDate_Leave(DateTime dtpFromDateL, DateTime dtpToDateL)
        {
            GetDatesBetween(dtpFromDateL, dtpToDateL);
             
            if (allDates.Count > 0)
            {
                for (int j = 0; j < allDates.Count; j++)
                {
                    objPC.AttendanceDate = Convert.ToDateTime(allDates[j]);
                    objPC.AttendanceDay = objPC.AttendanceDate.DayOfWeek.ToString();


                }
            }
        }

        string ProductionDay = string.Empty;

        private void FillGridNew()
        {
            //GetMonthDate();
            dataGridView1.Rows.Clear();
            ClearVariables();

            //ShiftStartupAndShiftEndDowntimeMinutesTotal = 0; ProductionHoursAvailibityMinutes = 0; ProductionHoursAvailibityHours = 0;
            //ProductionHoursAvailibityMinutesTotal = 0; RejectTotal = 0; FinalProductionTotal = 0; FillingCapacityUtilizationTotal = 0; ActualCapacityTotal = 0;
            //ActualCapacityUtilizationTotal = 0; ActualCapacityUtilizationAATotal = 0; TotalEmployees = 0; TotalOvertimeHrs = 0; ShiftHoursForPlant = 0;
            //ShiftHours = 0; ShiftMinutes = 0; ShiftMinutesTotal = 0; TotalAvailableHours = 0; WorkingHours = 0; WorkingMinutes = 0; ShiftStartupAndShiftEndDowntimeMinutes = 0;
            //ShiftStartupAndShiftEndDowntimeHours = 0; TotalEmployeesTotal = 0; TotalOvertimeHrsTotal = 0; TotalProductionInBoxesTotal = 0; TotalDowntime = 0;
            //TotalDowntimeTotal = 0; OperatingTime = 0; OperatingTimeTotal = 0; Availabilty = 0; AvailabiltyTotal = 0; BottleNeckTargetProductionBoxes = 0;
            //BottleNeckTargetProductionBoxesTotal = 0; BottleNeckPerformance = 0; BottleNeckPerformanceTotal = 0; BottlePerMinuteActual = 0; BottlePerMinuteActualTotal = 0;
            //BottlePerMinuteData = 0; BottlePerMinuteDataTotal = 0; Production = 0; ProductionTotal = 0; TotalProduction = 0; TotalProductionTotal = 0; ProductionDone = 0;
            //ProductionDoneTotal = 0; TotalMinutes = 0; TotalMinutesTotal = 0; ActualCapacityLessCIPHoursTotal = 0; ActualCapacityUtilizationTTotal = 0;

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
                    dtProductionDate = Convert.ToDateTime(allDates[j]);
                    ProductionDay = dtProductionDate.DayOfWeek.ToString();

                    //RCount = 1;
                    TotalEmployees = 0; TotalOvertimeHrs = 0; ShiftHoursForPlant = 0; ShiftHours = 0; ShiftMinutes = 0; TotalAvailableHours = 0; WorkingHours = 0; WorkingMinutes = 0;
                    ShiftStartupAndShiftEndDowntimeMinutes = 0; ShiftStartupAndShiftEndDowntimeHours = 0; ProductionHoursAvailibityMinutes = 0; ProductionHoursAvailibityHours = 0;

                    dataGridView1.Rows.Add();

                    dataGridView1.Rows[RCount].Cells["clmMaintenanceLink"].Value = "Break Down";
                    dataGridView1.Rows[RCount].Cells["clmCostLink"].Value = "Cost";
                    dataGridView1.Rows[RCount].Cells["clmTotalHoursLink"].Value = "Hours";
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

                    //Total Employees -D
                    TotalEmployeesTotal += TotalEmployees;
                    dataGridView1.Rows[RCount].Cells["clmTotalEmployees"].Value = TotalEmployees.ToString();

                    //Total Overtime Hrs.-E
                    TotalOvertimeHrsTotal += TotalOvertimeHrs;
                    dataGridView1.Rows[RCount].Cells["clmTotalOvertimeHrs"].Value = TotalOvertimeHrs.ToString();

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
                    dataGridView1.Rows[RCount].Cells["clmShiftHoursForPlant"].Value = ShiftMinutes.ToString();

                    //Shift Hours -G
                    dataGridView1.Rows[RCount].Cells["clmShiftHours"].Value = objRL.Convert_Minutes_HHMM(ShiftMinutes);

                    //WORKING MIN. -H Field TotalMinutes

                    TotalMinutes = objRL.CheckNullString_ReturnDouble(Convert.ToString(Get_Sum("TotalMinutes")));
                    TotalMinutesTotal += TotalMinutes;

                    //Working Hours - I 
                    dataGridView1.Rows[RCount].Cells["clmWorkingHours"].Value = objRL.Convert_Minutes_HHMM(TotalMinutes);

                    //Total Downtime Minutes - L Field-TotalDowntime 
                    TotalDowntime = objRL.CheckNullString_ReturnDouble(Convert.ToString(Get_Sum("TotalDowntime")));
                    TotalDowntimeTotal += TotalDowntime;

                    //Total Break Down  -M 
                    dataGridView1.Rows[RCount].Cells["clmTotalBreakDown"].Value = objRL.Convert_Minutes_HHMM(TotalDowntime);

                    //OperatingTime -N
                    OperatingTime = objRL.CheckNullString_ReturnDouble(Convert.ToString(Get_Sum("OperatingTime")));
                    OperatingTimeTotal += OperatingTimeTotal;
                    //Production Hours -O
                    dataGridView1.Rows[RCount].Cells["clmProductionHours"].Value = objRL.Convert_Minutes_HHMM(OperatingTime);

                    //Shift Startup & Shift End downtime =F5-L5-N5  Column-J
                    ShiftStartupAndShiftEndDowntimeMinutes = ShiftMinutes - TotalDowntime - OperatingTime;
                    ShiftStartupAndShiftEndDowntimeMinutes = Math.Round(ShiftStartupAndShiftEndDowntimeMinutes, 0);
                    ShiftStartupAndShiftEndDowntimeMinutesTotal += ShiftStartupAndShiftEndDowntimeMinutes;
                    dataGridView1.Rows[RCount].Cells["clmShiftStartupShiftEndDowntime"].Value = objRL.Convert_Minutes_HHMM(ShiftStartupAndShiftEndDowntimeMinutes);

                    //Production Hours Availibity -P O5/G5
                    ProductionHoursAvailibityMinutes = (OperatingTime / ShiftMinutes) * 100;
                    ProductionHoursAvailibityMinutes = Math.Round(ProductionHoursAvailibityMinutes, 2);
                    ProductionHoursAvailibityMinutesTotal += ProductionHoursAvailibityMinutes;
                    dataGridView1.Rows[RCount].Cells["clmProductionHoursAvailibity"].Value = ProductionHoursAvailibityMinutes.ToString() + "%";

                    double TotalProductionInBoxes = 0;
                    //Total Production inBoxes - Q 
                    TotalProductionInBoxes = objRL.CheckNullString_ReturnDouble(Convert.ToString(Get_Sum("Production")));
                    TotalProductionInBoxes = Math.Round(TotalProductionInBoxes, 0);
                    TotalProductionInBoxesTotal += TotalProductionInBoxes;
                    dataGridView1.Rows[RCount].Cells["clmTotalProductionInBoxes"].Value = TotalProductionInBoxes.ToString();

                    //Total Production in Kg. - R  Field-ProductionDone
                    ProductionDone = objRL.CheckNullString_ReturnDouble(Convert.ToString(Get_Sum("ProductionDone")));
                    ProductionDoneTotal += ProductionDone;
                    dataGridView1.Rows[RCount].Cells["clmTotalProductionInKg"].Value = ProductionDone.ToString();

                    double Reject = 0, FinalProduction = 0;
                    //Rejection - S  Field-Reject
                    Reject = objRL.CheckNullString_ReturnDouble(Convert.ToString(Get_Sum("Reject")));
                    RejectTotal += Reject;
                    dataGridView1.Rows[RCount].Cells["clmReject"].Value = Reject.ToString();

                    //Final Production -T Field-Goods
                    FinalProduction = objRL.CheckNullString_ReturnDouble(Convert.ToString(Get_Sum("Goods")));
                    FinalProductionTotal += FinalProduction;
                    dataGridView1.Rows[RCount].Cells["clmFinalProduction"].Value = FinalProduction.ToString();

                    //capacity -U 
                    BottleNeckTargetProductionBoxes = objRL.CheckNullString_ReturnDouble(Convert.ToString(Get_Sum("BottleNeckTargetProduction")));
                    BottleNeckTargetProductionBoxesTotal += BottleNeckTargetProductionBoxes;
                    dataGridView1.Rows[RCount].Cells["clmCapacity"].Value = BottleNeckTargetProductionBoxes.ToString();

                    //Filling Capacity Utilization - V
                    double FillingCapacityUtilization = 0;
                    FillingCapacityUtilization = (ProductionDone / BottleNeckTargetProductionBoxes) * 100;
                    FillingCapacityUtilization = Math.Round(FillingCapacityUtilization, 0);
                    FillingCapacityUtilizationTotal += FillingCapacityUtilization;
                    dataGridView1.Rows[RCount].Cells["clmFillingCapacityUtilization"].Value = FillingCapacityUtilization.ToString() + "%";

                    //Actual capacity -W
                    double ActualCapacity = 0;
                    // FillingCapacityUtilization = (ProductionDone / BottleNeckTargetProductionBoxes) * 100;
                    ActualCapacityTotal += ActualCapacity;
                    dataGridView1.Rows[RCount].Cells["clmActualCapacity"].Value = ActualCapacity.ToString();

                    double ActualCapacityUtilization = 0, ActualCapacityUtilizationMain = 0;
                    int ProductId = 0; 
                    double FinalCapacity = 0;
                    ActualCapacityUtilization=0;

                    DataSet dsProduct = new DataSet();
                    objBL.Query = "select PM.ProductId,PM.FinalCapacity from dataentry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId where DE.CancelTag=0 and PM.CancelTag=0 and DE.ProductionDate='" + dtProductionDate.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "'";
                    dsProduct = objBL.ReturnDataSet();

                    if (dsProduct.Tables[0].Rows.Count > 0)
                    {
                        for(int i=0;i<dsProduct.Tables[0].Rows.Count;i++)
                        {
                            ProductId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dsProduct.Tables[0].Rows[i]["ProductId"])));
                            FinalCapacity = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsProduct.Tables[0].Rows[i]["FinalCapacity"])));
                            ActualCapacityUtilizationMain = (FinalCapacity / 60) * OperatingTime;
                            ActualCapacityUtilizationMain = Math.Round(ActualCapacityUtilizationMain, 0);
                            ActualCapacityUtilization += ActualCapacityUtilizationMain;
                        }

                    }

                    //Actual Capacity Utilization
                    ActualCapacityUtilization = Math.Round(ActualCapacityUtilization, 0);

                    ActualCapacityUtilizationTotal += ActualCapacityUtilization;
                    // FillingCapacityUtilization = (ProductionDone / BottleNeckTargetProductionBoxes) * 100;
                    dataGridView1.Rows[RCount].Cells["clmActualCapacityUtilization"].Value = ActualCapacityUtilization.ToString();

                    //Actual Capacity-Less CIP Hours   
                    double ActualCapacityLessCIPHours = 0;
                    ActualCapacityLessCIPHoursTotal += ActualCapacityLessCIPHours;
                    // FillingCapacityUtilization = (ProductionDone / BottleNeckTargetProductionBoxes) * 100;
                    dataGridView1.Rows[RCount].Cells["clmActualCapacityLessCIPHours"].Value = ActualCapacityLessCIPHours.ToString();

                    //Actual Capacity Utilization
                    double ActualCapacityUtilizationT = 0;
                    ActualCapacityUtilizationTTotal += ActualCapacityUtilizationT;
                    // FillingCapacityUtilization = (ProductionDone / BottleNeckTargetProductionBoxes) * 100;
                    dataGridView1.Rows[RCount].Cells["clmActualCapacityUtilizationT"].Value = ActualCapacityUtilizationT.ToString() + "%";
                    RCount++;
                }

                RCount = 0;
                dataGridView1.Rows[RCount].Cells["clmTotalMachineUsed"].Value = TotalMachines.ToString();

                //Total Nos. of SKUS -B
                dataGridView1.Rows[RCount].Cells["clmTotalNosOfProducts"].Value = TotalProducts.ToString();

                //Total Employees -D
                dataGridView1.Rows[RCount].Cells["clmTotalEmployees"].Value = TotalEmployeesTotal.ToString();

                //Total Overtime Hrs.-E
                dataGridView1.Rows[RCount].Cells["clmTotalOvertimeHrs"].Value = TotalOvertimeHrsTotal.ToString();

                dataGridView1.Rows[RCount].Cells["clmShiftHoursForPlant"].Value = ShiftMinutesTotal.ToString();

                //Shift Hours -G
                dataGridView1.Rows[RCount].Cells["clmShiftHours"].Value = objRL.Convert_Minutes_HHMM(ShiftMinutesTotal);

                //Working Hours - I 
                dataGridView1.Rows[RCount].Cells["clmWorkingHours"].Value = objRL.Convert_Minutes_HHMM(TotalMinutesTotal);


                //Total Break Down  -M 
                dataGridView1.Rows[RCount].Cells["clmTotalBreakDown"].Value = objRL.Convert_Minutes_HHMM(TotalDowntimeTotal);

                //OperatingTime -N

                //Production Hours -O
                dataGridView1.Rows[RCount].Cells["clmProductionHours"].Value = objRL.Convert_Minutes_HHMM(OperatingTimeTotal);


                //Shift Startup & Shift End downtime =F5-L5-N5  Column-J

                dataGridView1.Rows[RCount].Cells["clmShiftStartupShiftEndDowntime"].Value = objRL.Convert_Minutes_HHMM(ShiftStartupAndShiftEndDowntimeMinutesTotal);


                //Production Hours Availibity -P O5/G5

                ProductionHoursAvailibityMinutesTotal = (OperatingTimeTotal / ShiftMinutesTotal) * 100;
                ProductionHoursAvailibityMinutesTotal = Math.Round(ProductionHoursAvailibityMinutesTotal, 2);
                dataGridView1.Rows[RCount].Cells["clmProductionHoursAvailibity"].Value = ProductionHoursAvailibityMinutesTotal.ToString() + "%";


                dataGridView1.Rows[RCount].Cells["clmTotalProductionInBoxes"].Value = TotalProductionInBoxesTotal.ToString();


                dataGridView1.Rows[RCount].Cells["clmTotalProductionInKg"].Value = ProductionDoneTotal.ToString();

                dataGridView1.Rows[RCount].Cells["clmReject"].Value = RejectTotal.ToString();

                //Final Production -T Field-Goods

                dataGridView1.Rows[RCount].Cells["clmFinalProduction"].Value = FinalProductionTotal.ToString();

                //capacity -U 

                dataGridView1.Rows[RCount].Cells["clmCapacity"].Value = BottleNeckTargetProductionBoxesTotal.ToString();

                //Filling Capacity Utilization - V

                FillingCapacityUtilizationTotal = (ProductionDoneTotal / BottleNeckTargetProductionBoxesTotal) * 100;
                FillingCapacityUtilizationTotal = Math.Round(FillingCapacityUtilizationTotal, 0);
                dataGridView1.Rows[RCount].Cells["clmFillingCapacityUtilization"].Value = FillingCapacityUtilizationTotal.ToString() + "%";

                //Actual capacity -W
                dataGridView1.Rows[RCount].Cells["clmActualCapacity"].Value = ActualCapacityTotal.ToString();


                //Actual Capacity Utilization
                // FillingCapacityUtilization = (ProductionDone / BottleNeckTargetProductionBoxes) * 100;
                dataGridView1.Rows[RCount].Cells["clmActualCapacityUtilization"].Value = ActualCapacityUtilizationTotal.ToString();

                //Actual Capacity-Less CIP Hours   

                // FillingCapacityUtilization = (ProductionDone / BottleNeckTargetProductionBoxes) * 100;
                dataGridView1.Rows[RCount].Cells["clmActualCapacityUtilization"].Value = ActualCapacityUtilizationTotal.ToString();

                //Actual Capacity Utilization

                // FillingCapacityUtilization = (ProductionDone / BottleNeckTargetProductionBoxes) * 100;
                dataGridView1.Rows[RCount].Cells["clmActualCapacityUtilization"].Value = ActualCapacityUtilizationAATotal.ToString();


                dataGridView1.Rows[RCount].Cells["clmActualCapacityLessCIPHours"].Value = ActualCapacityLessCIPHoursTotal.ToString();

                //Actual Capacity Utilization
                //double ActualCapacityUtilizationT = 0;
                //ActualCapacityUtilizationTTotal += ActualCapacityUtilizationT;
                // FillingCapacityUtilization = (ProductionDone / BottleNeckTargetProductionBoxes) * 100;
                dataGridView1.Rows[RCount].Cells["clmActualCapacityUtilizationT"].Value = ActualCapacityUtilizationTotal.ToString() + "%";

                dataGridView1.Rows[0].DefaultCellStyle.BackColor = Color.AliceBlue;

                FreezeColumns(false);

                FreezeColumns(true);

                //dataGridView1.Rows.Add();
                //dataGridView1.Rows[dataGridView1.Rows.Count].Cells[1].Value = "Total";

                dataGridView1.ClearSelection();
            }
        }

        private void FillGrid()
        {
            ShiftStartupAndShiftEndDowntimeMinutesTotal = 0; ProductionHoursAvailibityMinutes = 0; ProductionHoursAvailibityHours = 0; 
            ProductionHoursAvailibityMinutesTotal = 0; RejectTotal = 0; FinalProductionTotal = 0; FillingCapacityUtilizationTotal = 0; ActualCapacityTotal = 0; 
            ActualCapacityUtilizationTotal = 0; ActualCapacityUtilizationAATotal = 0; TotalEmployees = 0; TotalOvertimeHrs = 0; ShiftHoursForPlant = 0; 
            ShiftHours = 0; ShiftMinutes = 0; ShiftMinutesTotal = 0; TotalAvailableHours = 0; WorkingHours = 0; WorkingMinutes = 0; ShiftStartupAndShiftEndDowntimeMinutes = 0; 
            ShiftStartupAndShiftEndDowntimeHours = 0; TotalEmployeesTotal = 0; TotalOvertimeHrsTotal = 0; TotalProductionInBoxesTotal = 0; TotalDowntime = 0; 
            TotalDowntimeTotal = 0; OperatingTime = 0; OperatingTimeTotal = 0; Availabilty = 0; AvailabiltyTotal = 0; BottleNeckTargetProductionBoxes = 0; 
            BottleNeckTargetProductionBoxesTotal = 0; BottleNeckPerformance = 0; BottleNeckPerformanceTotal = 0; BottlePerMinuteActual = 0; BottlePerMinuteActualTotal = 0; 
            BottlePerMinuteData = 0; BottlePerMinuteDataTotal = 0; Production = 0; ProductionTotal = 0; TotalProduction = 0; TotalProductionTotal = 0; ProductionDone = 0; 
            ProductionDoneTotal = 0; TotalMinutes = 0; TotalMinutesTotal = 0; ActualCapacityLessCIPHoursTotal = 0; ActualCapacityUtilizationTTotal = 0;

            if (!Validation())
            {
                //dataGridView1.DataSource = null;
                ClearVariables();
                dataGridView1.Rows.Clear();
                MainQuery = string.Empty;
                WhereClause = string.Empty;
                OrderByClause = string.Empty;

                if (cmbReportType.SelectedIndex > -1)
                {
                    //Date Wise Report
                    //Month Wise Report

                    //CalculationsDate_Leave(dtpFromDate.Value, dtpToDate.Value);

                   


                    DataSet ds = new DataSet();
                    //MainQuery = "select DE.DataEntryId,DE.EntryDate,DE.EntryTime,DE.Data,DE.WeeklyPlanningId,DE.ProductionDate,DE.ProductId,PM.ProductName,DE.MachineId,MM.MachineName,DE.NameOfIncharge,DE.Shift,DE.StartTime,DE.EndTime,DE.TotalHours,DE.TotalMinutes,DE.ShiftLength,DE.ProcessCapacity,DE.BottleNeckCapicity,DE.PackingSize,DE.ManpowerRequired,DE.ManpowerAvailable,DE.PlanQtyInBoxes,DE.TotalAvilableHours,DE.CIP,DE.ProductOrMachineSetting,DE.RMPMNotAvailable,DE.MealBreak,DE.MaintenanceBreakdown,DE.NoElectricity,DE.ManpowerShortage,DE.StartupLoss,DE.NoPlanning,DE.Others,DE.Others1,DE.Others2,DE.TotalDowntime,DE.OperatingTime,DE.Availabilty,DE.Production,DE.TotalProduction,DE.ProductionDone,DE.BottleNeckTargetProduction,DE.BottleNeckTargetProductionBoxes,DE.BottleNeckPerformance,DE.Reject,DE.Goods,DE.Quality,DE.OEE,DE.BottlePerMinuteActual,DE.BottlePerMinuteData,DE.Diffrence,DE.Remarks from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId where DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 ";

                    if (cmbReportType.Text == "Date Wise Report")
                    {
                        WhereClause += " and DE.ProductionDate between '" + dtpFromDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "' and '" + dtpToDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "' ";
                    }
                    else if (cmbReportType.Text == "Month Wise Report")
                    {
                        //WhereClause += " and DE.ProductionDate between '" + dtpFromDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "' and '" + dtpToDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "' ";
                        //WhereClause += " and DE.ProductionDate between '" + dtpFromDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "' and '" + dtpToDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "' ";
                        WhereClause += " and Month(DE.ProductionDate)=" + objRL.GetMonthNumber(cmbMonth.Text) + " and Year(DE.ProductionDate)=" + cmbYear.Text + "";
                    }
                    else if (cmbReportType.Text == "All Months Report")
                    {
                        WhereClause = "";
                    }
                    else
                    {
                        WhereClause = "";
                    }

                    if (cmbLocation.SelectedIndex > -1)
                        WhereClause += " and DE.LocationId=" + cmbLocation.SelectedValue + " ";

                    //MainQuery = "select DE.DataEntryId 'OEE ID',DE.EntryDate as 'Date',DE.EntryTime as 'Time',DE.Data,DE.WeeklyPlanningId,DE.ProductionDate as 'Production Date',DE.ProductId,PM.ProductName as 'Product Name',DE.MachineId,MM.MachineName as 'Machine',DE.NameOfIncharge as 'Incharge',DE.Shift,DE.StartTime as 'Start Time',DE.EndTime as 'End Time',DE.TotalHours as 'Total Hours',DE.TotalMinutes as 'Total Minutes',DE.ShiftLength,DE.ProcessCapacity as 'Process Capacity',DE.BottleNeckCapicity as 'Bottle Neck Capicity',DE.PackingSize as 'Packing Size',DE.ManpowerRequired as 'Manpower Required',DE.ManpowerAvailable as 'Manpower Available',DE.PlanQtyInBoxes as 'PlanQty In Boxes',DE.TotalAvilableHours as 'Total Avilable Minutes',DE.CIP,DE.ProductOrMachineSetting as 'Product or Machine Setting',DE.RMPMNotAvailable as 'RM/PM Not Available',DE.MealBreak as 'Meal Break',DE.MaintenanceBreakdown as 'Maintenance Breakdown',DE.NoElectricity as 'No Electricity',DE.ManpowerShortage as 'Manpower Shortage',DE.StartupLoss as 'Startup Loss',DE.NoPlanning as 'No Planning',DE.Others,DE.Others1,DE.Others2,DE.TotalDowntime as 'Total Downtime',DE.OperatingTime as 'Operating Time',DE.Availabilty,DE.Production,DE.TotalProduction as 'Total Production',DE.ProductionDone as 'Production Done',DE.BottleNeckTargetProduction as 'Bottle Neck Target Production',DE.BottleNeckTargetProductionBoxes as 'Bottle Neck Target Production Boxes',DE.BottleNeckPerformance as 'Bottle Neck Performance',DE.Reject,DE.Goods,DE.Quality,DE.OEE,DE.BottlePerMinuteActual as 'Bottle Per Minute Actual',DE.BottlePerMinuteData as 'Bottle Per Minute Data',DE.Diffrence,DE.Remarks,DE.Status,DE.RPONo from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId where DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 ";
                    MainQuery = "select DE.DataEntryId,DE.EntryDate,DE.EntryTime,DE.Data,DE.WeeklyPlanningId,DE.ProductionDate,DE.ProductId,PM.ProductName,DE.MachineId,MM.MachineName,DE.NameOfIncharge,DE.Shift,DE.StartTime,DE.EndTime,DE.TotalHours,DE.TotalMinutes,DE.ShiftLength,DE.ProcessCapacity,DE.BottleNeckCapicity,DE.PackingSize,DE.ManpowerRequired,DE.ManpowerAvailable,DE.PlanQtyInBoxes,DE.TotalAvilableHours,DE.CIP,DE.ProductOrMachineSetting,DE.RMPMNotAvailable,DE.MealBreak,DE.MaintenanceBreakdown,DE.NoElectricity,DE.ManpowerShortage,DE.StartupLoss,DE.NoPlanning,DE.Others,DE.Others1,DE.Others2,DE.TotalDowntime,DE.OperatingTime,DE.Availabilty,DE.Production,DE.TotalProduction,DE.ProductionDone,DE.BottleNeckTargetProduction,DE.BottleNeckTargetProductionBoxes,DE.BottleNeckPerformance,DE.Reject,DE.Goods,DE.Quality,DE.OEE,DE.BottlePerMinuteActual,DE.BottlePerMinuteData,DE.Diffrence,DE.Remarks,DE.Status,DE.RPONo from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId where DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 ";
                    OrderByClause = " order by ProductionDate asc";
                    objBL.Query = MainQuery + WhereClause + OrderByClause;

                    ds = objBL.ReturnDataSet();

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        //0 DE.DataEntryId,
                        //1 DE.EntryDate,
                        //2 DE.EntryTime,
                        //3 DE.Data,
                        //4 DE.WeeklyPlanningId,
                        //5 DE.ProductionDate,
                        //6 DE.ProductId,
                        //7 PM.ProductName,
                        //8 DE.MachineId,
                        //9 MM.MachineName
                        //10 DE.NameOfIncharge,
                        //11 DE.Shift,
                        //12 DE.StartTime,
                        //13 DE.EndTime,
                        //14 DE.TotalHours,
                        //15 DE.TotalMinutes,
                        //16 DE.ShiftLength,
                        //17 DE.ProcessCapacity,
                        //18 DE.BottleNeckCapicity,
                        //19 DE.PackingSize,
                        //20 DE.ManpowerRequired,
                        //21 DE.ManpowerAvailable,
                        //22 DE.PlanQtyInBoxes,
                        //23 DE.TotalAvilableHours,
                        //24 DE.CIP,
                        //25 DE.ProductOrMachineSetting,
                        //26 DE.RMPMNotAvailable,
                        //27 DE.MealBreak,
                        //28 DE.MaintenanceBreakdown,
                        //29 DE.NoElectricity,
                        //30 DE.ManpowerShortage,
                        //31 DE.StartupLoss,
                        //32 DE.NoPlanning,
                        //33 DE.Others,
                        //34 DE.Others1,
                        //35 DE.Others2,
                        //36 DE.TotalDowntime,
                        //37 DE.OperatingTime,
                        //38 DE.Availabilty,
                        //39 DE.Production,
                        //40 DE.TotalProduction,
                        //41 DE.ProductionDone,
                        //42 DE.BottleNeckTargetProduction,
                        //43 DE.BottleNeckTargetProductionBoxes,
                        //44 DE.BottleNeckPerformance,
                        //45 DE.Reject,
                        //46 DE.Goods,
                        //47 DE.Quality,
                        //48 DE.OEE,
                        //49 DE.BottlePerMinuteActual,
                        //50 DE.BottlePerMinuteData,
                        //51 DE.Diffrence,
                        //52 DE.Remarks
                        //53 DE.Status,
                        //54 DE.RPONo

                        lblTotalCount.Text = "Total Count-" + ds.Tables[0].Rows.Count.ToString();

                        int RCount = 0;
                        //Total

                        dataGridView1.Rows.Add();
                        dataGridView1.Rows[RCount].Cells[0].Value = "Total";
                        RCount++;

                        TotalMachines = 0; TotalProducts = 0;

                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                        {
                            //RCount = 1;
                            TotalEmployees = 0; TotalOvertimeHrs = 0; ShiftHoursForPlant = 0; ShiftHours = 0; ShiftMinutes = 0; TotalAvailableHours = 0; WorkingHours = 0; WorkingMinutes = 0;
                            ShiftStartupAndShiftEndDowntimeMinutes = 0; ShiftStartupAndShiftEndDowntimeHours = 0; ProductionHoursAvailibityMinutes = 0; ProductionHoursAvailibityHours = 0;

                            dataGridView1.Rows.Add();

                            dataGridView1.Rows[RCount].Cells["clmMaintenanceLink"].Value = "Break Down";
                            dataGridView1.Rows[RCount].Cells["clmCostLink"].Value = "Cost";
                            dataGridView1.Rows[RCount].Cells["clmTotalHoursLink"].Value = "Hours";
                            //Links
                            //dataGridView1.Rows[RCount].Cells["clmMaintenanceLink"].Value = "Maintenance";
                            //    dataGridView1.Rows[RCount].Cells["clmCostLink"].Value = "Cost";
                            // dataGridView1.Rows[RCount].Cells["clmTotalHoursLink"].Value = "Total Hours";

                            //Date-C
                            dtProductionDate = Convert.ToDateTime(ds.Tables[0].Rows[i]["ProductionDate"]);
                            
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

                            //Total Employees -D
                            TotalEmployeesTotal += TotalEmployees;
                            dataGridView1.Rows[RCount].Cells["clmTotalEmployees"].Value = TotalEmployees.ToString();

                            //Total Overtime Hrs.-E
                            TotalOvertimeHrsTotal += TotalOvertimeHrs;
                            dataGridView1.Rows[RCount].Cells["clmTotalOvertimeHrs"].Value = TotalOvertimeHrs.ToString();

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
                            dataGridView1.Rows[RCount].Cells["clmShiftHoursForPlant"].Value = ShiftMinutes.ToString();

                            //Shift Hours -G
                            dataGridView1.Rows[RCount].Cells["clmShiftHours"].Value = objRL.Convert_Minutes_HHMM(ShiftMinutes);

                            //WORKING MIN. -H Field TotalMinutes
                            
                            TotalMinutes = objRL.CheckNullString_ReturnDouble(Convert.ToString(Get_Sum("TotalMinutes")));
                            TotalMinutesTotal += TotalMinutes;

                            //Working Hours - I 
                            dataGridView1.Rows[RCount].Cells["clmWorkingHours"].Value = objRL.Convert_Minutes_HHMM(TotalMinutes);

                            //Total Downtime Minutes - L Field-TotalDowntime 
                            TotalDowntime = objRL.CheckNullString_ReturnDouble(Convert.ToString(Get_Sum("TotalDowntime")));
                            TotalDowntimeTotal += TotalDowntime;

                            //Total Break Down  -M 
                            dataGridView1.Rows[RCount].Cells["clmTotalBreakDown"].Value = objRL.Convert_Minutes_HHMM(TotalDowntime);

                            //OperatingTime -N
                            OperatingTime = objRL.CheckNullString_ReturnDouble(Convert.ToString(Get_Sum("OperatingTime")));
                            OperatingTimeTotal += OperatingTimeTotal;
                            //Production Hours -O
                            dataGridView1.Rows[RCount].Cells["clmProductionHours"].Value = objRL.Convert_Minutes_HHMM(OperatingTime);


                            //Shift Startup & Shift End downtime =F5-L5-N5  Column-J
                            ShiftStartupAndShiftEndDowntimeMinutes = ShiftMinutes - TotalDowntime - OperatingTime;
                            ShiftStartupAndShiftEndDowntimeMinutes = Math.Round(ShiftStartupAndShiftEndDowntimeMinutes, 0);
                            ShiftStartupAndShiftEndDowntimeMinutesTotal += OperatingTimeTotal;
                            dataGridView1.Rows[RCount].Cells["clmShiftStartupShiftEndDowntime"].Value = objRL.Convert_Minutes_HHMM(ShiftStartupAndShiftEndDowntimeMinutes);


                            //Production Hours Availibity -P O5/G5
                            ProductionHoursAvailibityMinutes = (OperatingTime / ShiftMinutes) * 100;
                            ProductionHoursAvailibityMinutes = Math.Round(ProductionHoursAvailibityMinutes, 2);
                            ProductionHoursAvailibityMinutesTotal += ProductionHoursAvailibityMinutes;
                            dataGridView1.Rows[RCount].Cells["clmProductionHoursAvailibity"].Value = ProductionHoursAvailibityMinutes.ToString() + "%";

                            double TotalProductionInBoxes = 0;
                            //Total Production inBoxes - Q 
                            TotalProductionInBoxes = objRL.CheckNullString_ReturnDouble(Convert.ToString(Get_Sum("Production")));
                            TotalProductionInBoxes = Math.Round(TotalProductionInBoxes, 0);
                            TotalProductionInBoxesTotal += TotalProductionInBoxes;
                            dataGridView1.Rows[RCount].Cells["clmTotalProductionInBoxes"].Value = TotalProductionInBoxes.ToString();

                            //Total Production in Kg. - R  Field-ProductionDone
                            ProductionDone = objRL.CheckNullString_ReturnDouble(Convert.ToString(Get_Sum("ProductionDone")));
                            ProductionDoneTotal += ProductionDone;
                            dataGridView1.Rows[RCount].Cells["clmTotalProductionInKg"].Value = ProductionDone.ToString();

                            double Reject = 0, FinalProduction = 0;
                            //Rejection - S  Field-Reject
                            Reject = objRL.CheckNullString_ReturnDouble(Convert.ToString(Get_Sum("Reject")));
                            RejectTotal += Reject;
                            dataGridView1.Rows[RCount].Cells["clmReject"].Value = Reject.ToString();

                            //Final Production -T Field-Goods
                            FinalProduction = objRL.CheckNullString_ReturnDouble(Convert.ToString(Get_Sum("Goods")));
                            FinalProductionTotal += FinalProduction;
                            dataGridView1.Rows[RCount].Cells["clmFinalProduction"].Value = FinalProduction.ToString();

                            //capacity -U 
                            BottleNeckTargetProductionBoxes = objRL.CheckNullString_ReturnDouble(Convert.ToString(Get_Sum("BottleNeckTargetProduction")));
                            BottleNeckTargetProductionBoxesTotal += BottleNeckTargetProductionBoxes;
                            dataGridView1.Rows[RCount].Cells["clmCapacity"].Value = BottleNeckTargetProductionBoxes.ToString();

                            //Filling Capacity Utilization - V
                            double FillingCapacityUtilization = 0;
                            FillingCapacityUtilization = (ProductionDone / BottleNeckTargetProductionBoxes) * 100;
                            FillingCapacityUtilization = Math.Round(FillingCapacityUtilization, 0);
                            FillingCapacityUtilizationTotal += FillingCapacityUtilization;
                            dataGridView1.Rows[RCount].Cells["clmFillingCapacityUtilization"].Value = FillingCapacityUtilization.ToString() + "%";

                            //Actual capacity -W
                            double ActualCapacity = 0;
                            // FillingCapacityUtilization = (ProductionDone / BottleNeckTargetProductionBoxes) * 100;
                            ActualCapacityTotal += ActualCapacity;
                            dataGridView1.Rows[RCount].Cells["clmActualCapacity"].Value = ActualCapacity.ToString();


                            //Actual Capacity Utilization
                            double ActualCapacityUtilization = 0;
                            ActualCapacityUtilizationTotal += ActualCapacityUtilization;
                            // FillingCapacityUtilization = (ProductionDone / BottleNeckTargetProductionBoxes) * 100;
                            dataGridView1.Rows[RCount].Cells["clmActualCapacityUtilization"].Value = ActualCapacityUtilization.ToString();

                            //Actual Capacity-Less CIP Hours   
                            double ActualCapacityLessCIPHours = 0;
                            ActualCapacityLessCIPHoursTotal += ActualCapacityLessCIPHours;
                            // FillingCapacityUtilization = (ProductionDone / BottleNeckTargetProductionBoxes) * 100;
                            dataGridView1.Rows[RCount].Cells["clmActualCapacityLessCIPHours"].Value = ActualCapacityLessCIPHours.ToString();

                            //Actual Capacity Utilization
                            double ActualCapacityUtilizationT = 0;
                            ActualCapacityUtilizationTTotal += ActualCapacityUtilizationT;
                            // FillingCapacityUtilization = (ProductionDone / BottleNeckTargetProductionBoxes) * 100;
                            dataGridView1.Rows[RCount].Cells["clmActualCapacityUtilizationT"].Value = ActualCapacityUtilizationT.ToString() + "%";

                            
                            RCount++;

                        }

                        RCount = 0;
                        dataGridView1.Rows[RCount].Cells["clmTotalMachineUsed"].Value = TotalMachines.ToString();

                        //Total Nos. of SKUS -B
                        dataGridView1.Rows[RCount].Cells["clmTotalNosOfProducts"].Value = TotalProducts.ToString();

                        //Total Employees -D
                        dataGridView1.Rows[RCount].Cells["clmTotalEmployees"].Value = TotalEmployeesTotal.ToString();

                        //Total Overtime Hrs.-E
                        dataGridView1.Rows[RCount].Cells["clmTotalOvertimeHrs"].Value = TotalOvertimeHrsTotal.ToString();

                        dataGridView1.Rows[RCount].Cells["clmShiftHoursForPlant"].Value = ShiftMinutesTotal.ToString();

                        //Shift Hours -G
                        dataGridView1.Rows[RCount].Cells["clmShiftHours"].Value = objRL.Convert_Minutes_HHMM(ShiftMinutesTotal);

                        //Working Hours - I 
                        dataGridView1.Rows[RCount].Cells["clmWorkingHours"].Value = objRL.Convert_Minutes_HHMM(TotalMinutesTotal);


                        //Total Break Down  -M 
                        dataGridView1.Rows[RCount].Cells["clmTotalBreakDown"].Value = objRL.Convert_Minutes_HHMM(TotalDowntimeTotal);

                        //OperatingTime -N

                        //Production Hours -O
                        dataGridView1.Rows[RCount].Cells["clmProductionHours"].Value = objRL.Convert_Minutes_HHMM(OperatingTimeTotal);


                        //Shift Startup & Shift End downtime =F5-L5-N5  Column-J

                        dataGridView1.Rows[RCount].Cells["clmShiftStartupShiftEndDowntime"].Value = objRL.Convert_Minutes_HHMM(ShiftStartupAndShiftEndDowntimeMinutesTotal);


                        //Production Hours Availibity -P O5/G5

                        ProductionHoursAvailibityMinutesTotal = (OperatingTimeTotal / ShiftMinutesTotal) * 100;
                        ProductionHoursAvailibityMinutesTotal = Math.Round(ProductionHoursAvailibityMinutesTotal, 2);
                        dataGridView1.Rows[RCount].Cells["clmProductionHoursAvailibity"].Value = ProductionHoursAvailibityMinutesTotal.ToString() + "%";


                        dataGridView1.Rows[RCount].Cells["clmTotalProductionInBoxes"].Value = TotalProductionInBoxesTotal.ToString();


                        dataGridView1.Rows[RCount].Cells["clmTotalProductionInKg"].Value = ProductionDoneTotal.ToString();

                        dataGridView1.Rows[RCount].Cells["clmReject"].Value = RejectTotal.ToString();

                        //Final Production -T Field-Goods

                        dataGridView1.Rows[RCount].Cells["clmFinalProduction"].Value = FinalProductionTotal.ToString();

                        //capacity -U 

                        dataGridView1.Rows[RCount].Cells["clmCapacity"].Value = BottleNeckTargetProductionBoxesTotal.ToString();

                        //Filling Capacity Utilization - V

                        FillingCapacityUtilizationTotal = (ProductionDoneTotal / BottleNeckTargetProductionBoxesTotal) * 100;
                        FillingCapacityUtilizationTotal = Math.Round(FillingCapacityUtilizationTotal, 0);
                        dataGridView1.Rows[RCount].Cells["clmFillingCapacityUtilization"].Value = FillingCapacityUtilizationTotal.ToString() + "%";

                        //Actual capacity -W
                        dataGridView1.Rows[RCount].Cells["clmActualCapacity"].Value = ActualCapacityTotal.ToString();


                        //Actual Capacity Utilization
                        // FillingCapacityUtilization = (ProductionDone / BottleNeckTargetProductionBoxes) * 100;
                        dataGridView1.Rows[RCount].Cells["clmActualCapacityUtilization"].Value = ActualCapacityUtilizationTotal.ToString();

                        //Actual Capacity-Less CIP Hours   

                        // FillingCapacityUtilization = (ProductionDone / BottleNeckTargetProductionBoxes) * 100;
                        dataGridView1.Rows[RCount].Cells["clmActualCapacityUtilization"].Value = ActualCapacityUtilizationTotal.ToString();

                        //Actual Capacity Utilization

                        // FillingCapacityUtilization = (ProductionDone / BottleNeckTargetProductionBoxes) * 100;
                        dataGridView1.Rows[RCount].Cells["clmActualCapacityUtilization"].Value = ActualCapacityUtilizationAATotal.ToString();


                        dataGridView1.Rows[RCount].Cells["clmActualCapacityLessCIPHours"].Value = ActualCapacityLessCIPHoursTotal.ToString();

                        //Actual Capacity Utilization
                        //double ActualCapacityUtilizationT = 0;
                        //ActualCapacityUtilizationTTotal += ActualCapacityUtilizationT;
                        // FillingCapacityUtilization = (ProductionDone / BottleNeckTargetProductionBoxes) * 100;
                        dataGridView1.Rows[RCount].Cells["clmActualCapacityUtilizationT"].Value = ActualCapacityUtilizationTotal.ToString() + "%";


                        FreezeColumns(false);


                        //string Status = string.Empty;

                        //Pending_Count = 0; Completed_Count = 0; Cancel_Count = 0; Closed_Count = 0; Remarks_Count = 0;

                        //foreach (DataGridViewRow row in dataGridView1.Rows)
                        //{
                        //    if (row.IsNewRow) continue;

                        //    //DataGridViewCell cell = row.Cells["clmStatus"]; // column index 2

                        //    //Status = objRL.CheckNullString(Convert.ToString(cell.Value));

                        //    //if (Status != null && Status != "")
                        //    //{

                        //    //    cell.Style.BackColor = Color.FromName(BusinessResources.LS_Pending_Color);
                        //    //    //cell.Style.ForeColor = Color.White;

                        //    //    if (Status == BusinessResources.LS_Pending)
                        //    //    {
                        //    //        Pending_Count++;
                        //    //        cell.Style.BackColor = Color.FromName(BusinessResources.LS_Pending_Color);
                        //    //    }
                        //    //    else if (Status == BusinessResources.LS_Completed)
                        //    //    {
                        //    //        Completed_Count++;
                        //    //        cell.Style.BackColor = Color.FromName(BusinessResources.LS_Completed_Color);
                        //    //    }
                        //    //    else if (Status == BusinessResources.LS_Cancel)
                        //    //    {
                        //    //        Cancel_Count++;
                        //    //        cell.Style.BackColor = Color.FromName(BusinessResources.LS_Cancel_Color);
                        //    //    }
                        //    //    else if (Status == BusinessResources.LS_Closed)
                        //    //    {
                        //    //        Closed_Count++;
                        //    //        cell.Style.BackColor = Color.FromName(BusinessResources.LS_Manager_Color);
                        //    //    }
                        //    //    else if (Status == BusinessResources.LS_Remarks)
                        //    //    {
                        //    //        Remarks_Count++;
                        //    //        cell.Style.BackColor = Color.FromName(BusinessResources.LS_Remarks_Color);
                        //    //    }
                        //    //    else if (Status == "Total")
                        //    //    {
                        //    //        //Remarks_Count++;
                        //    //        cell.Style.BackColor = Color.Cornsilk;
                        //    //    }
                        //    //    else
                        //    //    {
                        //    //        //string hex = BusinessResources.BACKGROUND_COLOUR;
                        //    //        //Color _color = System.Drawing.ColorTranslator.FromHtml(hex);
                        //    //        //Myrow.DefaultCellStyle.BackColor = _color;
                        //    //    }
                        //    //}
                        //}

                        //lblPending.Text = "Pending-" + Pending_Count.ToString();
                        //lblCompleted.Text = "Completed-" + Completed_Count.ToString();
                        //lblCancel.Text = "Cancel-" + Cancel_Count.ToString();
                        //lblClosed.Text = "Closed-" + Closed_Count.ToString();
                        //lblRemarks.Text = "Remarks-" + Remarks_Count.ToString();
                        FreezeColumns(true);

                        //dataGridView1.Rows.Add();
                        //dataGridView1.Rows[dataGridView1.Rows.Count].Cells[1].Value = "Total";

                        dataGridView1.ClearSelection();
                    }
                }
            }
            else
            {
                objRL.ShowMessage(17, 4);
                return;
            }
        }

        // double TotalEmployeesTotal = 0, TotalOvertimeHrsTotal = 0;

        private void cmbReportType_SelectionChangeCommitted(object sender, EventArgs e)
        {
            ReportSelection();
        }

        private void ReportSelection()
        {
            if (cmbReportType.SelectedIndex > -1)
            {
                cmbMonth.SelectedIndex = -1;
                cmbYear.SelectedIndex = -1;

                if (cmbReportType.Text == "Date Wise Report")
                {
                    pDate.Visible = true;
                    pMonth.Visible = false;
                }
                else if (cmbReportType.Text == "Month Wise Report")
                {
                    pDate.Visible = false;
                    pMonth.Visible = true;
                }
                else
                {
                    pDate.Visible = true;
                    pMonth.Visible = false;
                }
            }
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                RedundancyLogics.MonthName = string.Empty;
                RedundancyLogics.Year = string.Empty;
                RedundancyLogics.ReportType = string.Empty;
                RedundancyLogics.LocationName = string.Empty;

                objRL.FromDate = DateTime.Now.Date;
                objRL.ToDate = DateTime.Now.Date;
                

                if (dataGridView1.Rows.Count > 0)
                {
                    if (dataGridView1.CurrentCell.ColumnIndex == 0)
                    {
                        RowCount_Grid = dataGridView1.Rows.Count;
                        CurrentRowIndex = dataGridView1.CurrentRow.Index;

                        if (RowCount_Grid >= 0 && CurrentRowIndex >= 0)
                        {
                            //ClearAll();

                            RedundancyLogics.MonthName = cmbMonth.Text;
                            RedundancyLogics.Year = cmbYear.Text;
                            RedundancyLogics.ReportType = cmbReportType.Text;
                            RedundancyLogics.LocationName = cmbLocation.Text;

                            objRL.FromDate = dtpFromDate.Value.Date;
                            objRL.ToDate = dtpToDate.Value.Date;
                            

                            objRL.SelectedDate = Convert.ToDateTime(dataGridView1.Rows[e.RowIndex].Cells["clmProductionDate"].Value);
                            BreakdownReport objForm = new BreakdownReport(objRL.SelectedDate);
                            objForm.ShowDialog(this);

                            //btnDelete.Enabled = true;
                            //TableId = Convert.ToInt32(dataGridView1.Rows[e.RowIndex].Cells[1].Value);
                            //txtPlanProductionCode.Text = TableId.ToString();
                            //objPC.WeeklyPlanningId = TableId;
                            //dtpEntryDate.Value = Convert.ToDateTime(dataGridView1.Rows[e.RowIndex].Cells[2].Value);
                            //dtpPlanningDate.Value = Convert.ToDateTime(dataGridView1.Rows[e.RowIndex].Cells[3].Value);
                            //ProductId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[4].Value)));
                            //FillItem();
                            //txtRequired.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[7].Value));
                            //txtProductionDone.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[8].Value));
                            //txtBalanceQty.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[9].Value));
                            //cmbStatus.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[10].Value));
                            //txtRemarks.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[11].Value));

                        }

                        //DialogResult dr;
                        //dr = objRL.Delete_Record_Show_Message();
                        //if (dr == DialogResult.Yes)
                        //{
                        //    dataGridView1.Rows.RemoveAt(e.RowIndex);


                        //}
                    }
                }
            }
            catch (Exception ex1) { }
            finally { GC.Collect(); }
        }
    }
}
