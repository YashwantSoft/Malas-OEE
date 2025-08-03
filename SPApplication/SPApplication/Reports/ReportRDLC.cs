using BusinessLayerUtility;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.ConstrainedExecution;
using System.Runtime.Remoting;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Shapes;

namespace SPApplication.OEEApplication.Reports
{
    public partial class ReportRDLC : Form
    {
        BusinessLayer objBL = new BusinessLayer();
        RedundancyLogics objRL = new RedundancyLogics();
        DesignLayer objDL = new DesignLayer();
        ErrorProvider objEP = new ErrorProvider();
        QueryLayer objQL = new QueryLayer();
        
        PropertyClass objPC = new PropertyClass();

        string MainQuery = string.Empty, WhereClause = string.Empty, OrderByClause = string.Empty, UserClause = string.Empty;
        public ReportRDLC()
        {
            InitializeComponent();
            objDL.SetDesignMaster(this, lblHeader, btnSave, btnClear, btnDelete, btnExit, "OEE REPORT");
            btnSave.Text = BusinessResources.BTN_REPORT;
            objRL.Fill_Machine(cmbMachineName);
        }
        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }
        private void btnSave_Click(object sender, EventArgs e)
        {
            Get_Report();
        }
        private void btnClear_Click(object sender, EventArgs e)
        {

        }
        private void btnDelete_Click(object sender, EventArgs e)
        {

        }
        private void ReportRDLC_Load(object sender, EventArgs e)
        {
            //Date Wise Report
            //Month Wise Report
            //Product Wise Report
        }


        private bool Validation()
        {
            objEP.Clear();

            if (cmbReportType.SelectedIndex == -1)
            {
                cmbReportType.Focus();
                objEP.SetError(cmbReportType, "Select Report Type");
                return true;
            }
            else if (cmbMonth.SelectedIndex == -1)
            {
                cmbMonth.Focus();
                objEP.SetError(cmbMonth, "Select Month");
                return true;
            }
            else if (cmbYear.SelectedIndex == -1)
            {
                cmbYear.Focus();
                objEP.SetError(cmbYear, "Select Year");
                return true;
            }
            else if (cmbReportType.Text == "Machine Wise Report")
            {
                if (cmbMachineName.SelectedIndex == -1)
                {
                    cmbMachineName.Focus();
                    objEP.SetError(cmbMachineName, "Select Machine Name");
                    return true;
                }
                else
                    return false;
            }
            else
                return false;
        }

        //DE.ProductionDate

        DateTime ProductionDate, ShiftStartupAndShiftEndDowntime, TotalBreakDown;

        private void cmbReportType_SelectionChangeCommitted(object sender, EventArgs e)
        {
            if(cmbReportType.Text == "Day Wise Report")
            {
                lblMachineName.Visible = false;
                cmbMachineName.Visible = false;
            }
            else
            {
                lblMachineName.Visible = true;
                cmbMachineName.Visible = true;
            }

        }

        int ReportMonth = 0, ReportYear = 0, MachineId = 0, ShiftScheduleId = 0, Result = 0;

        //double TotalNosOfSKUS = 0, ProductionHoursAvailibity = 0, TotalProductionInBoxes = 0, TotalProductionInKg = 0, Rejection = 0, FinalProduction = 0, Capacity = 0, BottleNeckTargetProduction = 0, FillingCapacityUtilization = 0;
         
        //double TotalLineUsed=0,MachineRunMinutes = 0, MachineHours = 0, ShiftTimeInMinutes = 0, ShiftTimeInHours = 0, TotalDowntime = 0, TotalAvilableHours = 0, OperatingTime = 0;

        //double ShiftMinutes = 0, ShiftHours = 0, WorkingMinutes = 0, WorkingHours = 0, ShiftStartupAndShiftEndDowntimeMinutes = 0, ShiftStartupAndShiftEndDowntimeHours = 0, TotalDowntimeMinutes = 0, TotalDowntimeHours = 0, ProductionMinutes = 0, ProductionHours = 0;

        double TotalLineUsed = 0, TotalNosOfSKUS = 0, TotalDowntime = 0, TotalAvilableHours = 0,  OperatingTime = 0,
                TotalProductionInBoxes = 0, TotalProductionInKg = 0, Rejection = 0, BottleNeckTargetProduction = 0,
                MachineRunMinutes = 0, MachineHours = 0, ShiftMinutes = 0, ShiftHours = 0, ShiftStartupAndShiftEndDowntimeMinutes = 0,
                ShiftStartupAndShiftEndDowntimeHours = 0,   OperatingTimeHours = 0, ProductionHoursAvailibity = 0,
                FinalProduction = 0, FillingCapacityUtilization = 0;

        private void Get_Report()
        {
            if (!Validation())
            {
                Result = 0;
                objBL.Query = "delete from oeereport where CancelTag=0";
                Result= objBL.Function_ExecuteNonQuery();
                    

                dataGridView2.DataSource= null;

                MainQuery = string.Empty; WhereClause = string.Empty; OrderByClause = string.Empty; UserClause = string.Empty;
                ReportMonth = 0; ReportYear = 0;

                TotalLineUsed = 0; TotalNosOfSKUS = 0; TotalDowntime = 0; TotalAvilableHours = 0;  OperatingTime = 0;
                TotalProductionInBoxes = 0; TotalProductionInKg = 0; Rejection = 0; BottleNeckTargetProduction = 0;
                MachineRunMinutes = 0; MachineHours = 0; ShiftMinutes = 0; ShiftHours = 0; ShiftStartupAndShiftEndDowntimeMinutes = 0;
                ShiftStartupAndShiftEndDowntimeHours = 0; ShiftHours = 0; OperatingTimeHours = 0; ProductionHoursAvailibity = 0;
                FinalProduction = 0; FillingCapacityUtilization = 0;

                ReportMonth = objRL.GetMonthNumber(cmbMonth.Text);
                ReportYear = Convert.ToInt32(cmbYear.Text);

                //Day Wise Report
                //Machine Wise Report

                WhereClause = " and Month(DE.ProductionDate) = " + ReportMonth + " and Year(DE.ProductionDate)= " + ReportYear + " ";

                // and DE.MachineId=" + cmbMachineName.SelectedValue + " and Month(DE.ProductionDate)=" + ReportMonth + " and Year(DE.ProductionDate)=" + ReportYear + " ";
                if (cmbReportType.Text == "Machine Wise Report")
                {
                    WhereClause += " and DE.MachineId=" + cmbMachineName.SelectedValue + " ";
                    MachineId = Convert.ToInt32(cmbMachineName.SelectedValue);
                }
                else
                {

                }

                
 
                DataSet ds = new DataSet();
                //DE.DataEntryId as 'OEE ID',DE.EntryDate as 'Date',DE.EntryTime as 'Time',DE.Data,DE.WeeklyPlanningId,DE.ProductionDate as 'Production Date'
                //objBL.Query = "select Count(DE.DataEntryId) from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId where DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 and DE.MachineId=" + cmbMachineName.SelectedValue+ " and Month(DE.ProductionDate)="+ MonthR + " and Year(DE.ProductionDate)="+ YearR + " ";
                //objBL.Query = "select DE.DataEntryId,DE.EntryDate,DE.EntryTime,DE.Data,DE.WeeklyPlanningId,DE.ProductionDate from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId where DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 and DE.MachineId=" + cmbMachineName.SelectedValue + " and Month(DE.ProductionDate)=" + MonthR + " and Year(DE.ProductionDate)=" + YearR + " ";
                
                MainQuery = "select distinct DE.ProductionDate from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId where DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 ";
                OrderByClause = " order by DE.ProductionDate asc";

                objBL.Query = MainQuery + WhereClause + OrderByClause;
                ds = objBL.ReturnDataSet();

                if (ds.Tables[0].Rows.Count > 0)
                {
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        TotalLineUsed = 0; TotalNosOfSKUS = 0; TotalDowntime = 0; TotalAvilableHours = 0; OperatingTime = 0;
                        TotalProductionInBoxes = 0; TotalProductionInKg = 0; Rejection = 0; BottleNeckTargetProduction = 0;

                        MainQuery = string.Empty; WhereClause = string.Empty; OrderByClause = string.Empty; UserClause = string.Empty;

                        DataSet dsSum = new DataSet();
                        ProductionDate = Convert.ToDateTime(ds.Tables[0].Rows[i]["ProductionDate"]);

                        //DE.ProductionDate
                        //objBL.Query = "select Count(DE.DataEntryId),DE.ProductionDate,DE.Shift,DE.StartTime as 'Start Time',DE.EndTime as 'End Time',DE.TotalHours as 'Total Hours' from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId where DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 and DE.MachineId=" + cmbMachineName.SelectedValue + " and DE.ProductionDate='" + dt.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "' Group by DE.ProductionDate,DE.Shift,DE.StartTime,DE.EndTime,DE.TotalHours";
                        //objBL.Query = "select DE.ProductionDate,Count(*),DE.Shift,DE.StartTime as 'Start Time',DE.EndTime as 'End Time',DE.TotalHours as 'Total Hours' from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId where DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 and DE.MachineId=" + cmbMachineName.SelectedValue + " and DE.ProductionDate='" + dt.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "' Group by DE.ProductionDate,DE.Shift,DE.StartTime,DE.EndTime,DE.TotalHours";

                        WhereClause = " and DE.ProductionDate='" + ProductionDate.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "'";
                        if (cmbReportType.Text == "Machine Wise Report")
                        {
                            WhereClause += " and DE.MachineId=" + cmbMachineName.SelectedValue + " ";
                        }

                        MainQuery = "select DE.ProductionDate,Count(*),sum(DE.TotalMinutes) as 'WorkingMinutes',Sum(DE.TotalDowntime),Sum(DE.TotalAvilableHours),Sum(DE.OperatingTime),Sum(DE.Production),Sum(DE.ProductionDone),Sum(DE.Reject),Sum(DE.BottleNeckTargetProduction),Count(DE.MachineId) from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId where DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 ";
                        OrderByClause = " Group by DE.ProductionDate ";
                        objBL.Query = MainQuery + WhereClause + OrderByClause;

                        dsSum = objBL.ReturnDataSet();

                        if (dsSum.Tables[0].Rows.Count > 0)
                        {
                            DateTime dt1;
                            dt1 = Convert.ToDateTime(dsSum.Tables[0].Rows[0]["ProductionDate"]);

                            //Insert Record in Database

                            TotalNosOfSKUS = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsSum.Tables[0].Rows[0][1])));

                            //J
                            TotalDowntime = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsSum.Tables[0].Rows[0][3])));

                            //F
                            TotalAvilableHours = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsSum.Tables[0].Rows[0][4])));
                            TotalAvilableHours = TotalAvilableHours / 60.0;
                            TotalAvilableHours = Math.Round(TotalAvilableHours, 2);

                            //L
                            OperatingTime = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsSum.Tables[0].Rows[0][5])));

                            //O
                            TotalProductionInBoxes = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsSum.Tables[0].Rows[0][6])));

                            //P
                            TotalProductionInKg = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsSum.Tables[0].Rows[0][7])));

                            //Q
                            Rejection = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsSum.Tables[0].Rows[0][8])));

                            //S
                            BottleNeckTargetProduction = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsSum.Tables[0].Rows[0][9])));


                            TotalLineUsed = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsSum.Tables[0].Rows[0][10])));


                            DataSet dsHours = new DataSet();
                            objBL.Query = "select ShiftScheduleId,EntryDate,MachineId,MachineRunMinutes,MachineHours,ShiftTimeInMinutes,ShiftTimeInHours from shiftschedule where CancelTag=0 and EntryDate='" + ProductionDate.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "'";
                            dsHours = objBL.ReturnDataSet();

                            if (dsHours.Tables[0].Rows.Count > 0)
                            {
                                //string A1= objRL.CheckNullString(Convert.ToString(dsHours.Tables[0].Rows[0]["MachineHours"]));

                                MachineRunMinutes = 0; MachineHours = 0; ShiftMinutes = 0; ShiftHours = 0; ShiftStartupAndShiftEndDowntimeMinutes = 0;
                                ShiftStartupAndShiftEndDowntimeHours = 0;   OperatingTimeHours = 0; ProductionHoursAvailibity = 0;
                                FinalProduction = 0; FillingCapacityUtilization = 0;

                                MachineRunMinutes = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsHours.Tables[0].Rows[0]["MachineRunMinutes"])));
                                //MachineHours = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsHours.Tables[0].Rows[0]["MachineHours"])));

                                //D
                                ShiftMinutes = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsHours.Tables[0].Rows[0]["ShiftTimeInMinutes"])));

                                //E
                                //ShiftHours = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsHours.Tables[0].Rows[0]["ShiftTimeInHours"])));

                                //H
                                //D-J-L
                                ShiftStartupAndShiftEndDowntimeMinutes = ShiftMinutes - TotalDowntime - OperatingTime;
                                ShiftStartupAndShiftEndDowntimeMinutes = Math.Round(ShiftStartupAndShiftEndDowntimeMinutes, 2);

                                ShiftStartupAndShiftEndDowntimeHours = ShiftStartupAndShiftEndDowntimeMinutes / 60.0;
                                ShiftStartupAndShiftEndDowntimeHours = Math.Round(ShiftStartupAndShiftEndDowntimeHours, 2);

                                ShiftHours = ShiftMinutes / 60.0;
                                ShiftHours = Math.Round(ShiftHours, 2);

                                //M
                                OperatingTimeHours = OperatingTime / 60.0;
                                OperatingTimeHours = Math.Round(OperatingTimeHours, 2);

                                //N  M/E
                                ProductionHoursAvailibity = OperatingTimeHours / ShiftHours * 100;
                                ProductionHoursAvailibity = Math.Round(ProductionHoursAvailibity, 2);

                                //R
                                FinalProduction = TotalProductionInKg - Rejection;
                                FinalProduction = Math.Round(FinalProduction, 2);

                                //T
                                FillingCapacityUtilization = FinalProduction / BottleNeckTargetProduction * 100;
                                FillingCapacityUtilization = Math.Round(FillingCapacityUtilization, 2);

                                Result = 0;
                                objBL.Query = "insert into oeereport(ReportMonth,ReportYear,MachineId,TotalLineUsed,TotalNosOfSKUS,ProductionDate,ShiftHours,WorkingHours,ShiftStartupAndShiftEndDowntime,TotalBreakDown,ProductionHours,ProductionHoursAvailibity,TotalProductionInBoxes,TotalProductionInKg,Rejection,FinalProduction,Capacity,FillingCapacityUtilization,ReportType,UserId) values(" + ReportMonth + "," + ReportYear + "," + MachineId + "," + TotalLineUsed+"," + TotalNosOfSKUS + ",'" + ProductionDate.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "','" + ShiftHours + "','" + TotalAvilableHours + "','" + ShiftStartupAndShiftEndDowntimeHours + "','" + TotalDowntime + "','" + OperatingTimeHours + "','" + ProductionHoursAvailibity + "','" + TotalProductionInBoxes + "','" + TotalProductionInKg + "','" + Rejection + "','" + FinalProduction + "','" + BottleNeckTargetProduction + "','" + FillingCapacityUtilization + "','" + cmbReportType.Text + "'," + BusinessLayer.UserId_Static + ")";
                                Result = objBL.Function_ExecuteNonQuery();

                                //dataGridView1.Rows.Add();
                                //dataGridView1.Rows[i].Cells["clmTotalNosOfSKUS"].Value = TotalNosOfSKUS.ToString();
                                //dataGridView1.Rows[i].Cells["clmDate"].Value = ProductionDate.ToString(BusinessResources.DATEFORMATDDMMYYYY); // objRL.CheckNullString(Convert.ToString(dsSum.Tables[0].Rows[0][1]));
                                //dataGridView1.Rows[i].Cells["clmShiftHours"].Value = ShiftTimeInHours.ToString();
                                //dataGridView1.Rows[i].Cells["clmWorkingHours"].Value = MachineHours.ToString(); 
                            }
                            
                            // objBL.Query = "insert into oeereport(ReportMonth,ReportYear,MachineId,TotalNosOfSKUS,ProductionDate,ShiftHours,WorkingHours,ShiftStartupAndShiftEndDowntime,TotalBreakDown,ProductionHours,ProductionHoursAvailibity,Total ProductionInBoxes,TotalProductionInKg,Rejection,FinalProduction,Capacity,FillingCapacityUtilization,UserId) values()";
                            //dataGridView1.Rows[i].Cells["clmTotalNosOfSKUS"].Value = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i][0]));
                        }
                    }

                    FillGrid();
                }
            }
            else
            {
                objRL.ShowMessage(17, 4);
                return;
            }

            //MainQuery = "select DE.DataEntryId as 'OEE ID',DE.EntryDate as 'Date',DE.EntryTime as 'Time',DE.Data,DE.WeeklyPlanningId,DE.ProductionDate as 'Production Date',DE.ProductId,PM.ProductName as 'Product Name',DE.MachineId,MM.MachineName as 'Machine Name',DE.NameOfIncharge as 'Name of Incharge',DE.Shift,DE.StartTime as 'Start Time',DE.EndTime as 'End Time',DE.TotalHours as 'Total Hours',DE.TotalMinutes as 'Total Minutes',DE.ShiftLength,DE.ProcessCapacity as 'Process Capacity',DE.BottleNeckCapicity as 'Bottle Neck Capicity',DE.PackingSize as 'Packing Size',DE.ManpowerRequired as 'Manpower Required',DE.ManpowerAvailable as 'Manpower Available',DE.PlanQtyInBoxes as 'PlanQty In Boxes',DE.TotalAvilableHours as 'Total Avilable Minutes',DE.CIP,DE.ProductOrMachineSetting as 'Product or Machine Setting',DE.RMPMNotAvailable as 'RM/PM Not Available',DE.MealBreak as 'Meal Break',DE.MaintenanceBreakdown as 'Maintenance Breakdown',DE.NoElectricity as 'No Electricity',DE.ManpowerShortage as 'Manpower Shortage',DE.StartupLoss as 'Startup Loss',DE.NoPlanning as 'No Planning',DE.Others,DE.Others1,DE.Others2,DE.TotalDowntime as 'Total Downtime',DE.OperatingTime as 'Operating Time',DE.Availabilty,DE.Production,DE.TotalProduction as 'Total Production',DE.ProductionDone as 'Production Done',DE.BottleNeckTargetProduction as 'Bottle Neck Target Production',DE.BottleNeckTargetProductionBoxes as 'Bottle Neck Target Production Boxes',DE.BottleNeckPerformance as 'Bottle Neck Performance',DE.Reject,DE.Goods,DE.Quality,DE.OEE,DE.BottlePerMinuteActual as 'Bottle Per Minute Actual',DE.BottlePerMinuteData as 'Bottle Per Minute Data',DE.Diffrence,DE.Remarks,DE.Status,DE.RPONo from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId where DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 and DE.MachineId="+cmbMachineName.SelectedValue+" ";
        }

        private void FillGrid()
        {
            dataGridView2.DataSource = null;

            MainQuery = string.Empty; WhereClause = string.Empty; OrderByClause = string.Empty; UserClause = string.Empty;

            WhereClause = " and OER.ReportMonth=" + ReportMonth + " and OER.ReportYear=" + ReportYear + " and OER.ReportType='" + cmbReportType.Text + "' ";

            // OER.MachineId=" + cmbMachineName.SelectedValue + " and OER.ReportMonth=" + ReportMonth + " and OER.ReportYear=" + ReportYear + " and  and ReportType='"+cmbReportType.Text+"' ";

            // and DE.MachineId=" + cmbMachineName.SelectedValue + " and Month(DE.ProductionDate)=" + ReportMonth + " and Year(DE.ProductionDate)=" + ReportYear + " ";
            if (cmbReportType.Text == "Machine Wise Report")
            {
                WhereClause += " and OER.MachineId=" + cmbMachineName.SelectedValue + " ";
            }

            DataSet ds = new DataSet();

            if (cmbReportType.Text == "Machine Wise Report")
                MainQuery = "select OER.ReportId, OER.ReportMonth, OER.ReportYear, OER.MachineId,OER.ProductionDate as 'Date',M.MachineName as 'Machine', OER.TotalNosOfSKUS as 'Total Nos. of SKUS',OER.ShiftHours as 'Shift Hours', OER.WorkingHours as 'Working Hours', OER.ShiftStartupAndShiftEndDowntime as 'Shift Startup & Shift End Downtime', OER.TotalBreakDown as 'Total Break Down', OER.ProductionHours as 'Production Hours', OER.ProductionHoursAvailibity as 'Production Hours Availibity', OER.TotalProductionInBoxes as 'Total Production inBoxes', OER.TotalProductionInKg as 'Total Production in Kg.', OER.Rejection, OER.FinalProduction as 'Final Production', OER.Capacity, OER.FillingCapacityUtilization as 'Filling Capacity Utilization' from oeereport OER inner join machinemaster M on M.MachineId=OER.MachineId where M.CancelTag=0 and OER.CancelTag=0"; 
            else
                MainQuery = "select OER.ReportId, OER.ReportMonth, OER.ReportYear, OER.MachineId,OER.ProductionDate as 'Date',OER.TotalLineUsed as 'Total Line Used', OER.TotalNosOfSKUS as 'Total Nos. of SKUS',OER.ShiftHours as 'Shift Hours', OER.WorkingHours as 'Working Hours', OER.ShiftStartupAndShiftEndDowntime as 'Shift Startup & Shift End Downtime', OER.TotalBreakDown as 'Total Break Down', OER.ProductionHours as 'Production Hours', OER.ProductionHoursAvailibity as 'Production Hours Availibity', OER.TotalProductionInBoxes as 'Total Production inBoxes', OER.TotalProductionInKg as 'Total Production in Kg.', OER.Rejection, OER.FinalProduction as 'Final Production', OER.Capacity, OER.FillingCapacityUtilization as 'Filling Capacity Utilization' from oeereport OER where OER.CancelTag=0";

            OrderByClause = " order by OER.ProductionDate asc ";
            objBL.Query = MainQuery + WhereClause + OrderByClause;
            ds = objBL.ReturnDataSet();

            if (ds.Tables[0].Rows.Count > 0)
            {
                //0 ReportId,
                //1 ReportMonth,
                //2 ReportYear,
                //3 MachineId,
                //4 OER.ProductionDate as 'Date',
                //5 M.MachineName as 'Machine',
                //6 OER.TotalNosOfSKUS as 'Total Nos. of SKUS',
                //7 ShiftHours,
                //8 WorkingHours,
                //9 ShiftStartupAndShiftEndDowntime,
                //10 TotalBreakDown,
                //11 ProductionHours,
                //12 ProductionHoursAvailibity,
                //13 TotalProductionInBoxes,
                //14 TotalProductionInKg,
                //15 Rejection,
                //16 FinalProduction,
                //17 Capacity,
                //18 FillingCapacityUtilization

                dataGridView2.DataSource = ds.Tables[0];
                dataGridView2.Columns[0].Visible = false;
                dataGridView2.Columns[1].Visible = false;
                dataGridView2.Columns[2].Visible = false;
                dataGridView2.Columns[3].Visible = false;

                for (int i = 0; i < dataGridView2.Columns.Count; i++) 
                {
                    dataGridView2.Columns[i].Width = 70;
                }

                dataGridView2.Columns[4].Width = 90;
            }
        }
    }
}
