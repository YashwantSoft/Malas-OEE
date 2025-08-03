using BusinessLayerUtility;
using Microsoft.Office.Interop.Excel;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls.Primitives;
using System.Windows.Forms;

namespace SPApplication.OEEApplication.Reports
{
    public partial class OpertationSummaryReport : Form
    {
        BusinessLayer objBL = new BusinessLayer();
        RedundancyLogics objRL = new RedundancyLogics();
        DesignLayer objDL = new DesignLayer();
        ErrorProvider objEP = new ErrorProvider();
        QueryLayer objQL = new QueryLayer();
        PropertyClass objPC = new PropertyClass();

        string MainQuery = string.Empty, WhereClause = string.Empty, OrderByClause = string.Empty, UserClause = string.Empty;
        public OpertationSummaryReport()
        {
            InitializeComponent();
            objDL.SetDesignMaster(this, lblHeader, btnSave, btnClear, btnDelete, btnExit, "Operation Summary Report");
            btnSave.Text = BusinessResources.BTN_REPORT;
            //objRL.Fill_Machine(cmbMachineName);
        }
        private void btnClear_Click(object sender, EventArgs e)
        {
            ClearAll();
        }
        private void ClearAll()
        {
            cmbLocation.SelectedIndex = -1;
            dtpFromDate.Value = DateTime.Now;
            dtpToDate.Value = DateTime.Now;
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {

        }

        private void cbToday_CheckedChanged(object sender, EventArgs e)
        {
            dtpFromDate.Value = DateTime.Now.Date;
            dtpToDate.Value = DateTime.Now.Date;

            if (cbToday.Checked)
            {
                dtpFromDate.Enabled = false;
                dtpToDate.Enabled = false;
            }
            else
            {
                dtpFromDate.Enabled = true;
                dtpToDate.Enabled = true;
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            FillGrid();
        }

        int SrNo = 1;

        DateTime ProductionDate;

        double TotalMaintenanceBreakdown = 0, TotalCIP = 0, TotalProductOrMachineSetting = 0, TotalMealBreak = 0, TotalRMPMNotAvailable = 0, TotalTotalDowntime = 0;

        private void FillGrid()
        {
            SrNo = 1;
            dataGridView1.Rows.Clear();
            dgvDowntime.Rows.Clear();
            DataSet ds = new DataSet();
            WhereClause = " and DE.ProductionDate between '" + dtpFromDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "' and '" + dtpToDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "' ";
            
            if(cmbLocation.SelectedIndex >-1)
                WhereClause += " and DE.LocationId="+cmbLocation.SelectedValue+"";

            //MainQuery = "select distinct DE.MachineId,DE.DataEntryId as 'OEE ID',DE.EntryDate as 'Date',DE.EntryTime as 'Time',L.LocationName,DE.Data,DE.WeeklyPlanningId,DE.ProductionDate as 'Production Date',DE.ProductId,PM.ProductName as 'Product Name',MM.MachineName as 'Machine',DE.NameOfIncharge as 'Incharge',DE.Shift,DE.StartTime as 'Start Time',DE.EndTime as 'End Time',DE.TotalHours as 'Total Hours',DE.TotalMinutes as 'Total Minutes',DE.ShiftLength,DE.ProcessCapacity as 'Process Capacity',DE.BottleNeckCapicity as 'Bottle Neck Capicity',DE.PackingSize as 'Packing Size',DE.ManpowerRequired as 'Manpower Required',DE.ManpowerAvailable as 'Manpower Available',DE.PlanQtyInBoxes as 'PlanQty In Boxes',DE.TotalAvilableHours as 'Total Avilable Minutes',DE.CIP,DE.ProductOrMachineSetting as 'Product or Machine Setting',DE.RMPMNotAvailable as 'RM/PM Not Available',DE.MealBreak as 'Meal Break',DE.MaintenanceBreakdown as 'Maintenance Breakdown',DE.NoElectricity as 'No Electricity',DE.ManpowerShortage as 'Manpower Shortage',DE.StartupLoss as 'Startup Loss',DE.NoPlanning as 'No Planning',DE.Others,DE.Others1,DE.Others2,DE.TotalDowntime as 'Total Downtime',DE.OperatingTime as 'Operating Time',DE.Availabilty,DE.Production,DE.TotalProduction as 'Total Production',DE.ProductionDone as 'Production Done',DE.BottleNeckTargetProduction as 'Bottle Neck Target Production',DE.BottleNeckTargetProductionBoxes as 'Bottle Neck Target Production Boxes',DE.BottleNeckPerformance as 'Bottle Neck Performance',DE.Reject,DE.Goods,DE.Quality,DE.OEE,DE.BottlePerMinuteActual as 'Bottle Per Minute Actual',DE.BottlePerMinuteData as 'Bottle Per Minute Data',DE.Diffrence,DE.Remarks,DE.Status,DE.RPONo from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId inner join locationmaster L on L.LocationId=DE.LocationId where L.CancelTag=0 and DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 ";
            MainQuery = "SELECT SUM(TotalDowntime) AS total FROM(SELECT DISTINCT MachineId,TotalDowntime FROM dataentry) AS de";

            MainQuery = "select distinct DE.MachineId,MM.MachineName,DE.ProductionDate,L.LocationName from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId inner join locationmaster L on L.LocationId=DE.LocationId where L.CancelTag=0 and DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 ";
            OrderByClause = " order by DE.MachineId asc";
            objBL.Query = MainQuery + WhereClause + OrderByClause;
            ds = objBL.ReturnDataSet();

            //objBL.Query = "SELECT SUM(Production)/1000 AS Production,sum(BottleNeckTargetProduction)/1000,sum(TotalDowntime)/1000 AS TotalDowntime,sum(OperatingTime)/1000 AS OperatingTime,sum(MaintenanceBreakdown),sum(CIP),sum(RMPMNotAvailable),sum(ProductOrMachineSetting),sum(MealBreak), FROM(SELECT DISTINCT MachineId,Production,TotalDowntime,OperatingTime FROM dataentry) AS de";
            MainQuery = ""; WhereClause = ""; OrderByClause = "";

            WhereClause = " and ProductionDate between '" + dtpFromDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "' and '" + dtpToDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "' ";

            if (cmbLocation.SelectedIndex > -1)
                WhereClause += " and LocationId=" + cmbLocation.SelectedValue + "";

            //MainQuery = "SELECT sum(MaintenanceBreakdown),sum(CIP),sum(ProductOrMachineSetting),sum(MealBreak),sum(RMPMNotAvailable),sum(TotalDowntime) FROM(SELECT DISTINCT MachineId,MaintenanceBreakdown,CIP,ProductOrMachineSetting,MealBreak,RMPMNotAvailable,TotalDowntime FROM dataentry) AS de";
            //objBL.Query = MainQuery + WhereClause + OrderByClause;

            if (ds.Tables[0].Rows.Count > 0)
            {
                //MainQuery = "select DE.DataEntryId as 'OEE ID',DE.EntryDate as 'Date',DE.EntryTime as 'Time',L.LocationName,DE.Data,DE.WeeklyPlanningId,DE.ProductionDate as 'Production Date',DE.ProductId,PM.ProductName as 'Product Name',DE.MachineId,MM.MachineName as 'Machine',DE.NameOfIncharge as 'Incharge',DE.Shift,DE.StartTime as 'Start Time',DE.EndTime as 'End Time',DE.TotalHours as 'Total Hours',DE.TotalMinutes as 'Total Minutes',DE.ShiftLength,DE.ProcessCapacity as 'Process Capacity',DE.BottleNeckCapicity as 'Bottle Neck Capicity',DE.PackingSize as 'Packing Size',DE.ManpowerRequired as 'Manpower Required',DE.ManpowerAvailable as 'Manpower Available',DE.PlanQtyInBoxes as 'PlanQty In Boxes',DE.TotalAvilableHours as 'Total Avilable Minutes',DE.CIP,DE.ProductOrMachineSetting as 'Product or Machine Setting',DE.RMPMNotAvailable as 'RM/PM Not Available',DE.MealBreak as 'Meal Break',DE.MaintenanceBreakdown as 'Maintenance Breakdown',DE.NoElectricity as 'No Electricity',DE.ManpowerShortage as 'Manpower Shortage',DE.StartupLoss as 'Startup Loss',DE.NoPlanning as 'No Planning',DE.Others,DE.Others1,DE.Others2,DE.TotalDowntime as 'Total Downtime',DE.OperatingTime as 'Operating Time',DE.Availabilty,DE.Production,DE.TotalProduction as 'Total Production',DE.ProductionDone as 'Production Done',DE.BottleNeckTargetProduction as 'Bottle Neck Target Production',DE.BottleNeckTargetProductionBoxes as 'Bottle Neck Target Production Boxes',DE.BottleNeckPerformance as 'Bottle Neck Performance',DE.Reject,DE.Goods,DE.Quality,DE.OEE,DE.BottlePerMinuteActual as 'Bottle Per Minute Actual',DE.BottlePerMinuteData as 'Bottle Per Minute Data',DE.Diffrence,DE.Remarks,DE.Status,DE.RPONo from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId inner join locationmaster L on L.LocationId=DE.LocationId where L.CancelTag=0 and DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 ";

                lblTotalCount.Text = "Total Count-" + ds.Tables[0].Rows.Count;
                lblTotalCount1.Text = "Total Count-" + ds.Tables[0].Rows.Count;


                TotalMaintenanceBreakdown = 0; TotalCIP = 0; TotalProductOrMachineSetting = 0; TotalMealBreak = 0; TotalRMPMNotAvailable = 0; TotalTotalDowntime = 0;

                for (int i = 0; i < ds.Tables[0].Rows.Count;i++)
                {
                    ProductionDate = Convert.ToDateTime(ds.Tables[0].Rows[i]["ProductionDate"]);

                    dataGridView1.Rows.Add();
                    dgvDowntime.Rows.Add();
                    dataGridView1.Rows[i].Cells["clmSrNo"].Value = SrNo.ToString();
                    dgvDowntime.Rows[i].Cells["clmSrNo1"].Value = SrNo.ToString();
                    dataGridView1.Rows[i].Cells["clmDate"].Value = ProductionDate.ToString(BusinessResources.DATEFORMATDDMMYYYY);
                    dgvDowntime.Rows[i].Cells["clmDate1"].Value = ProductionDate.ToString(BusinessResources.DATEFORMATDDMMYYYY);
                    dataGridView1.Rows[i].Cells["clmUnit"].Value = ds.Tables[0].Rows[i]["LocationName"];
                    dgvDowntime.Rows[i].Cells["clmUnit1"].Value = ds.Tables[0].Rows[i]["LocationName"];
                    dataGridView1.Rows[i].Cells["clmMachineId"].Value = ds.Tables[0].Rows[i]["MachineId"];
                    dgvDowntime.Rows[i].Cells["clmMachineId1"].Value = ds.Tables[0].Rows[i]["MachineId"];
                    dataGridView1.Rows[i].Cells["clmMachine"].Value = ds.Tables[0].Rows[i]["MachineName"];
                    dgvDowntime.Rows[i].Cells["clmMachine1"].Value = ds.Tables[0].Rows[i]["MachineName"];

                    int MachineId = 0;

                    MachineId = objRL.CheckNullString_ReturnInt(Convert.ToString(ds.Tables[0].Rows[i]["MachineId"]));


                    //DataSet dsAttainable = new DataSet();
                    //objBL.Query = "SELECT SUM(Production)/1000 AS 'Production',sum(BottleNeckTargetProduction)/1000 as 'BottleNeckTargetProduction',sum(OperatingTime) AS 'OperatingTime'  FROM(SELECT DISTINCT MachineId,Production,TotalDowntime,OperatingTime FROM dataentry where MachineId=" + MachineId + " and CancelTag=0 " + WhereClause + ") AS de";
                    ////objBL.Query = "SELECT sum(MaintenanceBreakdown) as 'MaintenanceBreakdown',sum(CIP) as 'CIP',sum(ProductOrMachineSetting) as 'ProductOrMachineSetting',sum(MealBreak) as 'MealBreak',sum(RMPMNotAvailable) as 'RMPMNotAvailable',sum(TotalDowntime) as 'TotalDowntime' FROM(SELECT DISTINCT MachineId,MaintenanceBreakdown,CIP,ProductOrMachineSetting,MealBreak,RMPMNotAvailable,TotalDowntime FROM dataentry where MachineId=" + MachineId + " and CancelTag=0 " + WhereClause + ") AS de";
                    //dsAttainable = objBL.ReturnDataSet();


                    //sum(MaintenanceBreakdown),sum(CIP),sum(ProductOrMachineSetting),sum(MealBreak),sum(RMPMNotAvailable),sum(TotalDowntime)

                    DataSet dsSum = new DataSet();
                    objBL.Query = "SELECT sum(MaintenanceBreakdown) as 'MaintenanceBreakdown',sum(CIP) as 'CIP',sum(ProductOrMachineSetting) as 'ProductOrMachineSetting',sum(MealBreak) as 'MealBreak',sum(RMPMNotAvailable) as 'RMPMNotAvailable',sum(TotalDowntime) as 'TotalDowntime',SUM(Production)/1000 AS 'Production',sum(BottleNeckTargetProduction)/1000 as 'BottleNeckTargetProduction',sum(OperatingTime) AS 'OperatingTime' FROM(SELECT DISTINCT MachineId,MaintenanceBreakdown,CIP,ProductOrMachineSetting,MealBreak,RMPMNotAvailable,TotalDowntime,OperatingTime,Production,BottleNeckTargetProduction FROM dataentry where MachineId=" + MachineId + " and CancelTag=0 " + WhereClause + ") AS de";
                    dsSum = objBL.ReturnDataSet();

                    double MaintenanceBreakdown = 0, CIP = 0, ProductOrMachineSetting = 0, MealBreak = 0, RMPMNotAvailable = 0, TotalDowntime = 0, Production = 0, OperatingTime = 0, BottleNeckTargetProduction = 0; ;

                    if (dsSum.Tables[0].Rows.Count > 0)
                    {
                        MaintenanceBreakdown = 0; CIP = 0; ProductOrMachineSetting = 0; MealBreak = 0; RMPMNotAvailable = 0; TotalDowntime = 0; Production = 0; OperatingTime = 0; BottleNeckTargetProduction = 0;

                        MaintenanceBreakdown = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsSum.Tables[0].Rows[0]["MaintenanceBreakdown"])));
                        TotalMaintenanceBreakdown += MaintenanceBreakdown;
                        dgvDowntime.Rows[i].Cells["clmMaintenanceBreakdownMinutes"].Value = ConvertMinutes(MaintenanceBreakdown);

                        CIP = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsSum.Tables[0].Rows[0]["CIP"])));
                        TotalCIP += CIP;
                        dgvDowntime.Rows[i].Cells["clmCIP"].Value = ConvertMinutes(CIP);

                        ProductOrMachineSetting = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsSum.Tables[0].Rows[0]["ProductOrMachineSetting"])));
                        TotalProductOrMachineSetting += ProductOrMachineSetting;
                        dgvDowntime.Rows[i].Cells["clmProductOrMachineSetting"].Value = ConvertMinutes(ProductOrMachineSetting);
                        
                        MealBreak = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsSum.Tables[0].Rows[0]["MealBreak"])));
                        TotalMealBreak += MealBreak;
                        dgvDowntime.Rows[i].Cells["clmMealBreak"].Value = ConvertMinutes(MealBreak);

                        RMPMNotAvailable = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsSum.Tables[0].Rows[0]["RMPMNotAvailable"])));
                        TotalRMPMNotAvailable += RMPMNotAvailable;
                        dgvDowntime.Rows[i].Cells["clmRMPMNotAvailable"].Value = ConvertMinutes(RMPMNotAvailable);
                        
                        TotalDowntime = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsSum.Tables[0].Rows[0]["TotalDowntime"])));
                        TotalTotalDowntime += TotalDowntime;
                        dataGridView1.Rows[i].Cells["clmTotalDowntime"].Value = ConvertMinutes(TotalDowntime);
                        dgvDowntime.Rows[i].Cells["clmTotalDowntime1"].Value = ConvertMinutes(TotalDowntime);


                        Production = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsSum.Tables[0].Rows[0]["Production"])));
                        //TotalTotalDowntime += TotalDowntime;
                        dataGridView1.Rows[i].Cells["clmQtyPrd"].Value = Production.ToString();

                        BottleNeckTargetProduction = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsSum.Tables[0].Rows[0]["BottleNeckTargetProduction"])));
                        //TotalTotalDowntime += TotalDowntime;
                        dataGridView1.Rows[i].Cells["clmAttainableQtyTons"].Value = BottleNeckTargetProduction.ToString();

                        OperatingTime = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsSum.Tables[0].Rows[0]["OperatingTime"])));
                        //TotalTotalDowntime += TotalDowntime;
                        dataGridView1.Rows[i].Cells["clmOperationHours"].Value = ConvertMinutes(OperatingTime);
                        //dgvDowntime.Rows[i].Cells["clmTotalDowntime1"].Value = ConvertMinutes(TotalDowntime);


                        //string minutesString = "150";

                        //if (int.TryParse(minutesString, out int totalMinutes))
                        //{
                        //    TimeSpan time = TimeSpan.FromMinutes(totalMinutes);
                        //    Console.WriteLine($"Hours: {time.Hours}, Minutes: {time.Minutes}");
                        //}
                    }
                    SrNo++;
                }

                txtTotalMaintenanceBreakdown.Text = ConvertMinutes(TotalMaintenanceBreakdown); 
                txtTotalCIP.Text = ConvertMinutes(TotalCIP);
                txtTotalProductOrMachineSettings.Text = ConvertMinutes(TotalProductOrMachineSetting);
                txtTotalMealBreak.Text = ConvertMinutes(TotalMealBreak);
                txtTotalRMPMNotAvailable.Text = ConvertMinutes(TotalRMPMNotAvailable);
                txtTotalTotalDowntime.Text = ConvertMinutes(TotalTotalDowntime);

            }

            else
            {
                objRL.ShowMessage(17, 4);
                return;
            }
        }

        private string ConvertMinutes(double minutesString)
        {
            string ReturnTime="0";int totalMinutes=0;

            //minutesString = "150";

            if (!string.IsNullOrEmpty(Convert.ToString(minutesString)) && minutesString > 0 )
            {
                //if (int.TryParse(minutesString.ToString(), out int totalMinutes))
                //{
                    int.TryParse(minutesString.ToString(),out  totalMinutes);
                    //int.TryParse(minutesString.ToString(), out int totalMinutes);

                    TimeSpan time = TimeSpan.FromMinutes(totalMinutes);

                    ReturnTime = time.Hours + ":" + time.Minutes;

                    //Console.WriteLine($"Hours: {time.Hours}, Minutes: {time.Minutes}");
               // }
            }

            return ReturnTime;
        }

        private void FreezeColumns(bool send)
        {
            // Assuming you have a DataGridView named 'dataGridView1'

            // Set the first column to be frozen
            dataGridView1.Columns[7].Frozen = send;  // Freeze the first column

            // Set the second column to be frozen
            dataGridView1.Columns[8].Frozen = send;  // Freeze the second column
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void OpertationSummaryReport_Load(object sender, EventArgs e)
        {
            objRL.Fill_Location_ComboBox_By_Users(cmbLocation);
        }
    }
}
