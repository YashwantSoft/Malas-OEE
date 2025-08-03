using BusinessLayerUtility;
using Microsoft.Office.Interop.Excel;
using SPApplication.OEEApplication.Master;
using SPApplication.OEEApplication.Reports;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Forms;

namespace SPApplication.OEEApplication.Calculations
{
    public partial class DataEntry : Form
    {
        BusinessLayer objBL = new BusinessLayer();
        RedundancyLogics objRL = new RedundancyLogics();
        DesignLayer objDL = new DesignLayer();
        ErrorProvider objEP = new ErrorProvider();
        QueryLayer objQL = new QueryLayer();
        PropertyClass objPC = new PropertyClass();
         
        string MainQuery = string.Empty, WhereClause = string.Empty, OrderByClause = string.Empty, UserClause = string.Empty;

        public DataEntry()
        {
            Set_Design();
            txtPlanCode.Enabled = true;
        }

        private void Get_OEE_ID()
        {
            txtOEEId.Text = Convert.ToString(objRL.ReturnMaxID_Increase("DataEntry", "DataEntryId"));
        }
        private void Set_Design()
        {
            InitializeComponent();
            objDL.SetDesignMaster(this, lblHeader, btnSave, btnClear, btnDelete, btnExit, BusinessResources.LBL_OEE);
            //ClearAll();
            GridFlag = false;
            objDL.SetButtonDesign(btnNextPlanning, "NEXT PLANNING");
            objDL.SetButtonDesign(btnSearch, "SEARCH");
            objDL.SetButtonDesign(btnClear, "NEW");
            objRL.Fill_Item_ListBox(lbItem, txtSearchProductName.Text, "All");
            objRL.Fill_Incharge(cmbNameOfIncharge);
            objRL.Fill_Machine(cmbMachineName);
            objRL.Fill_Status(cmbStatus);
            Get_OEE_ID();
        }
        public DataEntry(int PlanId)
        {
            Set_Design();
            Fill_Plan_Entry();
        }
        public DataEntry(int DataEntryId, string FormName)
        {
            Set_Design();
            TableId = DataEntryId;
            FillData_By_DataEntryId();
        }
        private void FillData_By_DataEntryId()
        {
            DataSet ds = new DataSet();
            objBL.Query = "select DE.DataEntryId as 'OEE ID',DE.EntryDate as 'Date',DE.EntryTime as 'Time',DE.Data,DE.WeeklyPlanningId,DE.ProductionDate as 'Production Date',DE.ProductId,PM.ProductName as 'Product Name',DE.MachineId,MM.MachineName as 'Machine Name',DE.NameOfIncharge as 'Name of Incharge',DE.Shift,DE.StartTime as 'Start Time',DE.EndTime as 'End Time',DE.TotalHours as 'Total Hours',DE.TotalMinutes as 'Total Minutes',DE.ShiftLength,DE.ProcessCapacity as 'Process Capacity',DE.BottleNeckCapicity as 'Bottle Neck Capicity',DE.PackingSize as 'Packing Size',DE.ManpowerRequired as 'Manpower Required',DE.ManpowerAvailable as 'Manpower Available',DE.PlanQtyInBoxes as 'PlanQty In Boxes',DE.TotalAvilableHours as 'Total Avilable Minutes',DE.CIP,DE.ProductOrMachineSetting as 'Product or Machine Setting',DE.RMPMNotAvailable as 'RM/PM Not Available',DE.MealBreak as 'Meal Break',DE.MaintenanceBreakdown as 'Maintenance Breakdown',DE.NoElectricity as 'No Electricity',DE.ManpowerShortage as 'Manpower Shortage',DE.StartupLoss as 'Startup Loss',DE.NoPlanning as 'No Planning',DE.Others,DE.Others1,DE.Others2,DE.TotalDowntime as 'Total Downtime',DE.OperatingTime as 'Operating Time',DE.Availabilty,DE.Production,DE.TotalProduction as 'Total Production',DE.ProductionDone as 'Production Done',DE.BottleNeckTargetProduction as 'Bottle Neck Target Production',DE.BottleNeckTargetProductionBoxes as 'Bottle Neck Target Production Boxes',DE.BottleNeckPerformance as 'Bottle Neck Performance',DE.Reject,DE.Goods,DE.Quality,DE.OEE,DE.BottlePerMinuteActual as 'Bottle Per Minute Actual',DE.BottlePerMinuteData as 'Bottle Per Minute Data',DE.Diffrence,DE.Remarks,DE.Status,DE.RPONo from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId where DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 and DE.DataEntryId=" + TableId + "";
            ds = objBL.ReturnDataSet();
            if (ds.Tables[0].Rows.Count > 0)
            {
                ClearAll();
                btnDelete.Enabled = true;
                TableId = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
                txtOEEId.Text = TableId.ToString();
                dtpEntryDate.Value = Convert.ToDateTime(ds.Tables[0].Rows[0][1]);
                dtpEntryTime.Text = ds.Tables[0].Rows[0][2].ToString();
                cmbData.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][3]));
                Fill_Plan_Code();
                objPC.WeeklyPlanningId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(Convert.ToString(ds.Tables[0].Rows[0][4]))));
                txtPlanCode.Text = objPC.WeeklyPlanningId.ToString();
                dtpProductionDate.Value = Convert.ToDateTime(Convert.ToString(ds.Tables[0].Rows[0][5]));
                ProductId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][6])));
                FillItem();
                cmbMachineName.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][9]));
                cmbNameOfIncharge.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][10]));
                cmbShift.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][11]));
                dtpStartTime.Text = Convert.ToString(ds.Tables[0].Rows[0][12]); //Convert.ToDateTime(dataGridView1.Rows[e.RowIndex].Cells[12].Value);
                dtpEndTime.Text = Convert.ToString(ds.Tables[0].Rows[0][13]);// Convert.ToDateTime(dataGridView1.Rows[e.RowIndex].Cells[13].Value);
                txtTotalHours.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][14]));
                txtTotalMinutes.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][15]));
                txtShiftLength.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][16]));
                txtProcessCapacity.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][17]));
                txtBottleNeckCapicity.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][18]));
                txtPackingSize.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][19]));
                txtManpowerRequired.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][20]));
                txtManpowerAvailable.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][21]));
                txtPlanQtyInBoxes.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][22]));
                txtTotalAvilableHours.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][23]));
                txtCIP.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][24]));
                txtProductOrMachineSetting.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][25]));
                txtRMPMNotAvailable.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][26]));
                txtMealBreak.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][27]));
                txtMaintenanceBreakdown.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][28]));
                txtNoElectricity.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][29]));
                txtManpowerShortage.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][30]));
                txtStartupLoss.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][31]));
                txtNoPlanning.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][32]));
                txtOthers.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][33]));
                txtOthers1.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][34]));
                txtOthers2.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][35]));
                txtTotalDowntime.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][36]));
                txtOperatingTime.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][37]));
                txtAvailabilty.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][38]));
                txtProduction.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][39]));
                txtTotalProduction.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][40]));
                txtProductionDone.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][41]));
                txtBottleNeckTargetProduction.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][42]));
                txtBottleNeckTargetProductionBox.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][43]));
                txtBottleNeckPerformance.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][44]));
                txtReject.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][45]));
                txtGoods.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][46]));
                txtQuality.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][47]));
                txtOEE.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][48]));
                txtBottlePerMinuteActual.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][49]));
                txtBottlePerMinuteData.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][50]));
                txtDiffrence.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][51]));
                txtRemarks.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][52]));
                cmbStatus.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][53]));
                txtRPONo.Text = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][54]));
            }
        }
        private void Fill_Plan_Entry()
        {
            if (objPC.WeeklyPlanningId > 0)
            {
                DataSet ds = new DataSet();
                objBL.Query = "select WP.WeeklyPlanningId,WP.EntryDate,WP.PlanningDate,WP.ProductId,P.ProductName,WP.RequiredQuantity,WP.Remarks from weeklyplanning WP inner join ProductMaster P on P.ProductId=WP.ProductId where P.CancelTag=0 and WP.CancelTag=0 and WP.WeeklyPlanningId=" + objPC.WeeklyPlanningId + "";
                ds = objBL.ReturnDataSet();

                if (ds.Tables[0].Rows.Count > 0)
                {
                    txtPlanCode.Text = objPC.WeeklyPlanningId.ToString();
                    txtPlanCode.Enabled = false;
                    ProductId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0]["ProductId"])));
                    FillItem();
                    txtPlanQtyInBoxes.Text = objPC.Required.ToString();
                }
            }
        }
        private void txtSearchProductName_TextChanged(object sender, EventArgs e)
        {
            ClearAll_Item();
            if (txtSearchProductName.Text != "")
                objRL.Fill_Item_ListBox(lbItem, txtSearchProductName.Text, "Text");
            else
                objRL.Fill_Item_ListBox(lbItem, txtSearchProductName.Text, "All");
        }
        private void ClearAll_Item()
        {
            rtbItem.Text = "";
            rtbItem.Visible = false;
        }
        private void ClearAll()
        {
            objEP.Clear();
            TableId = 0;
            ClearAll_Item();
            TotalMinutes = 0; ShiftLength = 0; ProcessCapacity = 0; BottleNeckCapicity = 0; PackingSize = 0; ManpowerRequired = 0; ManpowerAvailable = 0; PlanQtyInBoxes = 0; TotalAvilableHours = 0; CIP = 0; ProductOrMachineSetting = 0; RMPMNotAvailable = 0; MealBreak = 0; MaintenanceBreakdown = 0; NoElectricity = 0; ManpowerShortage = 0; StartupLoss = 0; NoPlanning = 0; Others = 0; Others1 = 0; Others2 = 0; TotalDowntime = 0; OperatingTime = 0; Availabilty = 0; Production = 0; TotalProduction = 0; ProductionDone = 0; BottleNeckTargetProduction = 0; BottleNeckTargetProductionBoxes = 0; BottleNeckPerformance = 0; Reject = 0; Goods = 0; Quality = 0; OEE = 0; BottlePerMinuteActual = 0; BottlePerMinuteData = 0; Diffrence = 0;

            objPC.ProductId = 0;

            lblDay.Text = "";
            dtpEntryDate.Value = DateTime.Now.Date;
            dtpEntryTime.Value = DateTime.Now;
            dtpProductionDate.Value = DateTime.Now.Date;
            txtOEEId.Text = "";

            txtSearchProductName.Text = "";
            txtSearchCode.Text = "";

            cmbMachineName.SelectedIndex = -1;
            cmbNameOfIncharge.SelectedIndex = -1;
            cmbShift.SelectedIndex = -1;
            dtpStartTime.Value = DateTime.Now;
            dtpEndTime.Value = DateTime.Now;

            txtTotalHours.Text = "";
            txtTotalMinutes.Text = "";
            txtShiftLength.Text = "";
            txtProcessCapacity.Text = "";
            txtBottleNeckCapicity.Text = "";
            txtPackingSize.Text = "";
            txtManpowerRequired.Text = "";

            txtManpowerAvailable.Text = "";
            txtPlanQtyInBoxes.Text = "";
            txtTotalAvilableHours.Text = "";
            txtCIP.Text = "";
            txtProductOrMachineSetting.Text = "";
            txtRMPMNotAvailable.Text = "";
            txtMealBreak.Text = "";

            txtMaintenanceBreakdown.Text = "";
            txtNoElectricity.Text = "";
            txtManpowerShortage.Text = "";
            txtStartupLoss.Text = "";
            txtNoPlanning.Text = "";
            txtOthers.Text = "";
            txtOthers1.Text = "";
            txtOthers2.Text = "";
            txtTotalDowntime.Text = "";

            txtOperatingTime.Text = "";
            txtAvailabilty.Text = "";
            txtProduction.Text = "";
            txtTotalProduction.Text = "";

            txtProductionDone.Text = "";
            txtBottleNeckTargetProduction.Text = "";
            txtBottleNeckTargetProductionBox.Text = "";
            txtBottleNeckPerformance.Text = "";
            txtReject.Text = "";

            txtGoods.Text = "";
            txtQuality.Text = "";
            txtOEE.Text = "";
            txtBottlePerMinuteActual.Text = "";
            txtBottlePerMinuteData.Text = "";
            txtDiffrence.Text = "";
            objRL.Fill_Item_ListBox(lbItem, txtSearchProductName.Text, "All");

            //double number = double.NaN;
            //string displayValue = double.IsNaN(number) ? "" : number.ToString();
            //txtOEE.Text = displayValue;

            txtRemarks.Text = "";
            txtBottlePerMinuteData.Text = "";
            txtRPONo.Text = "";

            objRL.NaN_BlankValue(txtAvailabilty);
            objRL.NaN_BlankValue(txtBottleNeckPerformance);
            objRL.NaN_BlankValue(txtOEE);
            objRL.NaN_BlankValue(txtQuality);
            objRL.NaN_BlankValue(txtBottlePerMinuteActual);
            cbToday.Checked = true;
            Get_OEE_ID();
            txtSearchProductName.Focus();
        }
        private void lbItem_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                FillItem();
        }
        private void lbItem_Click(object sender, EventArgs e)
        {
            FillItem();
        }
        private void WeeklyPlaning_Load(object sender, EventArgs e)
        {
            //dtpStartTime.Format = DateTimePickerFormat.Custom;
            //dtpStartTime.CustomFormat = "dd/MM/yyyy HH:mm";
            
            //dtpEndTime.Format = DateTimePickerFormat.Custom;
            //dtpEndTime.CustomFormat = "dd/MM/yyyy HH:mm";
            //ClearAll();

            FillGrid();
            dtpStartTime.Format = DateTimePickerFormat.Custom;
            dtpEndTime.CustomFormat = "HH:mm";
        }

        int ProductId = 0;
        private void FillItem()
        {
            if (lbItem.Items.Count > 0)
            {
                rtbItem.Text = "";

                if (objPC.WeeklyPlanningId == 0 && TableId == 0)
                    ProductId = Convert.ToInt32(lbItem.SelectedValue);

                objRL.FillItemDetailsRichTextBox(rtbItem, ProductId);

                if (!string.IsNullOrEmpty(objRL.ItemDetails_RTB))
                {
                    ProductId = objPC.ProductId;
                    lbItem.Visible = false;
                    rtbItem.Visible = true;
                    //lbItem.Enabled = false;
                    txtManpowerAvailable.Text = objPC.LabourRequired.ToString();
                    Calculation_TotalDownTime();
                }
                else
                    lbItem.Visible = true;

                cmbMachineName.Focus();
            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }
        private void btnSave_Click(object sender, EventArgs e)
        {
            DeleteFlag = false;
            SaveDB();
        }

        int TableId = 0, Result = 0; bool DeleteFlag = false;
        private bool Validation()
        {
            objEP.Clear();

            if (ProductId == 0)
            {
                lbItem.Focus();
                objEP.SetError(lbItem, "Select Product");
                return true;
            }
            else if (cmbMachineName.SelectedIndex == -1)
            {
                cmbMachineName.Focus();
                objEP.SetError(cmbMachineName, "Select Machine Name");
                return true;
            }
            else if (cmbNameOfIncharge.SelectedIndex == -1)
            {
                cmbNameOfIncharge.Focus();
                objEP.SetError(cmbNameOfIncharge, "Select Name Of Incharge");
                return true;
            }
            else if (cmbShift.SelectedIndex == -1)
            {
                cmbShift.Focus();
                objEP.SetError(cmbShift, "Select Shift");
                return true;
            }
            else if (txtPlanQtyInBoxes.Text == "")
            {
                txtPlanQtyInBoxes.Focus();
                objEP.SetError(txtPlanQtyInBoxes, "Enter Plan Qty In Boxes");
                return true;
            }
            else if (txtTotalAvilableHours.Text == "")
            {
                txtTotalAvilableHours.Focus();
                objEP.SetError(txtTotalAvilableHours, "Enter Total Avilable Hours In Minutes");
                return true;
            }
            else if (txtOperatingTime.Text == "")
            {
                txtOperatingTime.Focus();
                objEP.SetError(txtOperatingTime, "Enter Operating Time");
                return true;
            }
            else if (txtAvailabilty.Text == "")
            {
                txtAvailabilty.Focus();
                objEP.SetError(txtAvailabilty, "Enter Availabilty");
                return true;
            }
            else if (txtProduction.Text == "")
            {
                txtProduction.Focus();
                objEP.SetError(txtProduction, "Enter Production In Boxes");
                return true;
            }
            else
                return false;
        }

        private bool CheckExist()
        {
            return false;
        }

        int Pending_Count = 0, Completed_Count = 0, Closed_Count = 0, Cancel_Count = 0, Remarks_Count = 0;
        private void FillGrid()
        {
            if (!GridFlag)
            {
                dataGridView1.DataSource = null;
                DataSet ds = new DataSet();

                WhereClause = " and DE.ProductionDate='" + dtpSearchDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "'";

                //MainQuery = "select DE.DataEntryId,DE.EntryDate,DE.EntryTime,DE.Data,DE.WeeklyPlanningId,DE.ProductionDate,DE.ProductId,PM.ProductName,DE.MachineId,MM.MachineName,DE.NameOfIncharge,DE.Shift,DE.StartTime,DE.EndTime,DE.TotalHours,DE.TotalMinutes,DE.ShiftLength,DE.ProcessCapacity,DE.BottleNeckCapicity,DE.PackingSize,DE.ManpowerRequired,DE.ManpowerAvailable,DE.PlanQtyInBoxes,DE.TotalAvilableHours,DE.CIP,DE.ProductOrMachineSetting,DE.RMPMNotAvailable,DE.MealBreak,DE.MaintenanceBreakdown,DE.NoElectricity,DE.ManpowerShortage,DE.StartupLoss,DE.NoPlanning,DE.Others,DE.Others1,DE.Others2,DE.TotalDowntime,DE.OperatingTime,DE.Availabilty,DE.Production,DE.TotalProduction,DE.ProductionDone,DE.BottleNeckTargetProduction,DE.BottleNeckTargetProductionBoxes,DE.BottleNeckPerformance,DE.Reject,DE.Goods,DE.Quality,DE.OEE,DE.BottlePerMinuteActual,DE.BottlePerMinuteData,DE.Diffrence,DE.Remarks from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId where DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 ";
                //MainQuery = "select DE.DataEntryId as 'OEE ID',DE.EntryDate as 'Date',DE.EntryTime as 'Time',DE.Data,DE.WeeklyPlanningId,DE.ProductionDate as 'Production Date',DE.ProductId,PM.ProductName as 'Product Name',DE.MachineId,MM.MachineName as 'Machine Name',DE.NameOfIncharge as 'Name of Incharge',DE.Shift,DE.StartTime,DE.EndTime,DE.TotalHours,DE.TotalMinutes,DE.ShiftLength,DE.ProcessCapacity,DE.BottleNeckCapicity,DE.PackingSize,DE.ManpowerRequired,DE.ManpowerAvailable,DE.PlanQtyInBoxes,DE.TotalAvilableHours,DE.CIP,DE.ProductOrMachineSetting,DE.RMPMNotAvailable,DE.MealBreak,DE.MaintenanceBreakdown,DE.NoElectricity,DE.ManpowerShortage,DE.StartupLoss,DE.NoPlanning,DE.Others,DE.Others1,DE.Others2,DE.TotalDowntime,DE.OperatingTime,DE.Availabilty,DE.Production,DE.TotalProduction,DE.ProductionDone,DE.BottleNeckTargetProduction,DE.BottleNeckTargetProductionBoxes,DE.BottleNeckPerformance,DE.Reject,DE.Goods,DE.Quality,DE.OEE,DE.BottlePerMinuteActual,DE.BottlePerMinuteData,DE.Diffrence,DE.Remarks,DE.Status from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId where DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 ";
                MainQuery = "select DE.DataEntryId as 'OEE ID',DE.EntryDate as 'Date',DE.EntryTime as 'Time',DE.Data,DE.WeeklyPlanningId,DE.ProductionDate as 'Production Date',DE.ProductId,PM.ProductName as 'Product Name',DE.MachineId,MM.MachineName as 'Machine Name',DE.NameOfIncharge as 'Name of Incharge',DE.Shift,DE.StartTime as 'Start Time',DE.EndTime as 'End Time',DE.TotalHours as 'Total Hours',DE.TotalMinutes as 'Total Minutes',DE.ShiftLength,DE.ProcessCapacity as 'Process Capacity',DE.BottleNeckCapicity as 'Bottle Neck Capicity',DE.PackingSize as 'Packing Size',DE.ManpowerRequired as 'Manpower Required',DE.ManpowerAvailable as 'Manpower Available',DE.PlanQtyInBoxes as 'PlanQty In Boxes',DE.TotalAvilableHours as 'Total Avilable Minutes',DE.CIP,DE.ProductOrMachineSetting as 'Product or Machine Setting',DE.RMPMNotAvailable as 'RM/PM Not Available',DE.MealBreak as 'Meal Break',DE.MaintenanceBreakdown as 'Maintenance Breakdown',DE.NoElectricity as 'No Electricity',DE.ManpowerShortage as 'Manpower Shortage',DE.StartupLoss as 'Startup Loss',DE.NoPlanning as 'No Planning',DE.Others,DE.Others1,DE.Others2,DE.TotalDowntime as 'Total Downtime',DE.OperatingTime as 'Operating Time',DE.Availabilty,DE.Production,DE.TotalProduction as 'Total Production',DE.ProductionDone as 'Production Done',DE.BottleNeckTargetProduction as 'Bottle Neck Target Production',DE.BottleNeckTargetProductionBoxes as 'Bottle Neck Target Production Boxes',DE.BottleNeckPerformance as 'Bottle Neck Performance',DE.Reject,DE.Goods,DE.Quality,DE.OEE,DE.BottlePerMinuteActual as 'Bottle Per Minute Actual',DE.BottlePerMinuteData as 'Bottle Per Minute Data',DE.Diffrence,DE.Remarks,DE.Status,DE.RPONo from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId where DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 and LocationId IN(select LocationId from userwiselocation where CancelTag=0 and UserId=" + BusinessLayer.UserId_Static + ") ";
                OrderByClause = " order by DataEntryId desc";
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

                    lblTotalCount.Text = "Total Count-" + ds.Tables[0].Rows.Count;
                    dataGridView1.DataSource = ds.Tables[0];
                    FreezeColumns(false);

                    dataGridView1.Columns[0].Visible = false;
                    dataGridView1.Columns[1].Visible = false;
                    dataGridView1.Columns[2].Visible = false;
                    dataGridView1.Columns[3].Visible = false;
                    dataGridView1.Columns[4].Visible = false;
                    dataGridView1.Columns[6].Visible = false;
                    dataGridView1.Columns[8].Visible = false;

                    dataGridView1.Columns[34].Visible = false;
                    dataGridView1.Columns[35].Visible = false;

                    dataGridView1.Columns[16].Visible = false;

                    for (int i = 0; i < dataGridView1.Columns.Count; i++)
                    {
                        dataGridView1.Columns[i].Width = 230;
                    }

                    dataGridView1.Columns[7].Width = 300;
                    dataGridView1.Columns[5].Width = 120;

                    string Status = string.Empty;
                    Pending_Count = 0; Completed_Count = 0; Cancel_Count = 0; Closed_Count = 0; Remarks_Count = 0;

                    foreach (DataGridViewRow Myrow in dataGridView1.Rows)
                    {
                        Status = string.Empty;
                        //Here 2 cell is target value and 1 cell is Volume

                        if (!string.IsNullOrEmpty(Convert.ToString(Myrow.Cells[53].Value)))
                            Status = Convert.ToString(Myrow.Cells[53].Value);

                        if (Status == BusinessResources.LS_Pending)
                        {
                            Pending_Count++;
                            Myrow.DefaultCellStyle.BackColor = Color.FromName(BusinessResources.LS_Pending_Color);
                        }
                        else if (Status == BusinessResources.LS_Completed)
                        {
                            Completed_Count++;
                            Myrow.DefaultCellStyle.BackColor = Color.FromName(BusinessResources.LS_Completed_Color);
                        }
                        else if (Status == BusinessResources.LS_Cancel)
                        {
                            Cancel_Count++;
                            Myrow.DefaultCellStyle.BackColor = Color.FromName(BusinessResources.LS_Cancel_Color);
                        }
                        else if (Status == BusinessResources.LS_Closed)
                        {
                            Closed_Count++;
                            Myrow.DefaultCellStyle.BackColor = Color.FromName(BusinessResources.LS_Manager_Color);
                        }
                        else if (Status == BusinessResources.LS_Remarks)
                        {
                            Remarks_Count++;
                            Myrow.DefaultCellStyle.BackColor = Color.FromName(BusinessResources.LS_Remarks_Color);
                        }
                        else
                        {
                            //string hex = BusinessResources.BACKGROUND_COLOUR;
                            //Color _color = System.Drawing.ColorTranslator.FromHtml(hex);
                            //Myrow.DefaultCellStyle.BackColor = _color;
                        }
                    }

                    lblPending.Text = "Pending-" + Pending_Count.ToString();
                    lblCompleted.Text = "Completed-" + Completed_Count.ToString();
                    lblCancel.Text = "Cancel-" + Cancel_Count.ToString();
                    lblClosed.Text = "Closed-" + Closed_Count.ToString();
                    lblRemarks.Text = "Remarks-" + Remarks_Count.ToString();
                    FreezeColumns(true);
                    dataGridView1.ClearSelection();
                }
            }
        }

        private void FreezeColumns(bool send)
        {
            // Assuming you have a DataGridView named 'dataGridView1'

            // Set the first column to be frozen
            dataGridView1.Columns[7].Frozen = send;  // Freeze the first column

            // Set the second column to be frozen
            dataGridView1.Columns[8].Frozen = send;  // Freeze the second column
        }

        private void SaveDB()
        {
            Result = 0;
            try
            {
                if (!Validation())
                {
                    if (!DeleteFlag)
                    {
                        if (CheckExist())
                        {
                            objRL.ShowMessage(34, 9);
                            return;
                        }
                    }

                    TotalMinutes = 0; ShiftLength = 0; ProcessCapacity = 0; BottleNeckCapicity = 0; PackingSize = 0; ManpowerRequired = 0; ManpowerAvailable = 0; PlanQtyInBoxes = 0; TotalAvilableHours = 0; CIP = 0; ProductOrMachineSetting = 0; RMPMNotAvailable = 0; MealBreak = 0; MaintenanceBreakdown = 0; NoElectricity = 0; ManpowerShortage = 0; StartupLoss = 0; NoPlanning = 0; Others = 0; Others1 = 0; Others2 = 0; TotalDowntime = 0; OperatingTime = 0; Availabilty = 0; Production = 0; TotalProduction = 0; ProductionDone = 0; BottleNeckTargetProduction = 0; BottleNeckTargetProductionBoxes = 0; BottleNeckPerformance = 0; Reject = 0; Goods = 0; Quality = 0; OEE = 0; BottlePerMinuteActual = 0; BottlePerMinuteData = 0; Diffrence = 0;

                    TotalMinutes = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtTotalMinutes.Text)));
                    ShiftLength = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtShiftLength.Text)));
                    ProcessCapacity = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtProcessCapacity.Text)));
                    BottleNeckCapicity = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtBottleNeckCapicity.Text)));
                    PackingSize = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtPackingSize.Text)));
                    ManpowerRequired = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtManpowerRequired.Text)));
                    ManpowerAvailable = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtManpowerAvailable.Text)));
                    PlanQtyInBoxes = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtPlanQtyInBoxes.Text)));
                    TotalAvilableHours = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtTotalAvilableHours.Text)));
                    CIP = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtCIP.Text)));
                    ProductOrMachineSetting = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtProductOrMachineSetting.Text)));
                    RMPMNotAvailable = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtRMPMNotAvailable.Text)));
                    MealBreak = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtMealBreak.Text)));
                    MaintenanceBreakdown = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtMaintenanceBreakdown.Text)));
                    NoElectricity = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtNoElectricity.Text)));
                    ManpowerShortage = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtManpowerShortage.Text)));
                    StartupLoss = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtStartupLoss.Text)));
                    NoPlanning = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtNoPlanning.Text)));
                    Others = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtOthers.Text)));
                    Others1 = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtOthers1.Text)));
                    Others2 = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtOthers2.Text)));
                    TotalDowntime = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtTotalDowntime.Text)));
                    OperatingTime = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtOperatingTime.Text)));
                    Availabilty = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtAvailabilty.Text)));
                    Production = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtProduction.Text)));
                    TotalProduction = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtTotalProduction.Text)));
                    ProductionDone = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtProductionDone.Text)));
                    BottleNeckTargetProduction = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtBottleNeckTargetProduction.Text)));
                    BottleNeckTargetProductionBoxes = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtBottleNeckTargetProductionBox.Text)));
                    BottleNeckPerformance = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtBottleNeckPerformance.Text)));
                    Reject = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtReject.Text)));
                    Goods = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtGoods.Text)));
                    Quality = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtQuality.Text)));
                    OEE = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtOEE.Text)));
                    BottlePerMinuteActual = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtBottlePerMinuteActual.Text)));
                    BottlePerMinuteData = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtBottlePerMinuteData.Text)));
                    Diffrence = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtDiffrence.Text)));
                    BalanceQty = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(txtBalanceQty.Text)));

                    if (TableId != 0)
                    {
                        if (DeleteFlag)
                            objBL.Query = "update dataentry set CancelTag=1 where DataEntryId=" + TableId + "";
                        else
                            objBL.Query = "update dataentry set EntryDate='" + dtpEntryDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "',EntryTime='" + dtpEntryTime.Value.ToString(@"hh\:mm\:ss") + "',Data='" + cmbData.Text + "',WeeklyPlanningId=" + objPC.WeeklyPlanningId + ",ProductionDate ='" + dtpProductionDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "',ProductId=" + ProductId + ",MachineId=" + cmbMachineName.SelectedValue + ",NameOfIncharge='" + cmbNameOfIncharge.Text + "',Shift='" + cmbShift.Text + "',StartTime='" + dtpStartTime.Value.ToString(@"hh\:mm\:ss") + "',EndTime='" + dtpEndTime.Value.ToString(@"hh\:mm\:ss") + "',TotalHours='" + txtTotalHours.Text + "',TotalMinutes='" + TotalMinutes + "',ShiftLength='" + ShiftLength + "',ProcessCapacity='" + ProcessCapacity + "',BottleNeckCapicity='" + BottleNeckCapicity + "',PackingSize='" + PackingSize + "',ManpowerRequired='" + ManpowerRequired + "',ManpowerAvailable='" + ManpowerAvailable + "',PlanQtyInBoxes='" + PlanQtyInBoxes + "',TotalAvilableHours='" + TotalAvilableHours + "',CIP='" + CIP + "',ProductOrMachineSetting='" + ProductOrMachineSetting + "',RMPMNotAvailable='" + RMPMNotAvailable + "',MealBreak='" + MealBreak + "',MaintenanceBreakdown='" + MaintenanceBreakdown + "',NoElectricity='" + NoElectricity + "',ManpowerShortage='" + ManpowerShortage + "',StartupLoss='" + StartupLoss + "',NoPlanning='" + NoPlanning + "',Others='" + Others + "',Others1='" + Others1 + "',Others2='" + Others2 + "',TotalDowntime='" + TotalDowntime + "',OperatingTime='" + OperatingTime + "',Availabilty='" + Availabilty + "',Production='" + Production + "',TotalProduction='" + TotalProduction + "',ProductionDone='" + ProductionDone + "',BottleNeckTargetProduction='" + BottleNeckTargetProduction + "',BottleNeckTargetProductionBoxes='" + BottleNeckTargetProductionBoxes + "',BottleNeckPerformance='" + BottleNeckPerformance + "',Reject='" + Reject + "',Goods='" + Goods + "',Quality='" + Quality + "',OEE='" + OEE + "',BottlePerMinuteActual='" + BottlePerMinuteActual + "',BottlePerMinuteData='" + BottlePerMinuteData + "',Diffrence='" + Diffrence + "',Remarks='" + txtRemarks.Text + "',BalanceQty='" + BalanceQty + "',Status='" + cmbStatus.Text + "',RPONo='" + txtRPONo.Text + "',ModifiedUserId=" + BusinessLayer.UserId_Static + " where DataEntryId=" + TableId + " and CancelTag=0";
                    }
                    else
                        objBL.Query = "insert into dataentry(EntryDate,EntryTime,Data,WeeklyPlanningId,ProductionDate,ProductId,MachineId,NameOfIncharge,Shift,StartTime,EndTime,TotalHours,TotalMinutes,ShiftLength,ProcessCapacity,BottleNeckCapicity,PackingSize,ManpowerRequired,ManpowerAvailable,PlanQtyInBoxes,TotalAvilableHours,CIP,ProductOrMachineSetting,RMPMNotAvailable,MealBreak,MaintenanceBreakdown,NoElectricity,ManpowerShortage,StartupLoss,NoPlanning,Others,Others1,Others2,TotalDowntime,OperatingTime,Availabilty,Production,TotalProduction,ProductionDone,BottleNeckTargetProduction,BottleNeckTargetProductionBoxes,BottleNeckPerformance,Reject,Goods,Quality,OEE,BottlePerMinuteActual,BottlePerMinuteData,Diffrence,Remarks,BalanceQty,Status,RPONo,UserId) values('" + dtpEntryDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "','" + dtpEntryTime.Value.ToString(@"hh\:mm\:ss") + "','" + cmbData.Text + "'," + objPC.WeeklyPlanningId + ",'" + dtpProductionDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "'," + ProductId + "," + cmbMachineName.SelectedValue + ",'" + cmbNameOfIncharge.Text + "','" + cmbShift.Text + "','" + dtpStartTime.Text + "','" + dtpEndTime.Text + "','" + txtTotalHours.Text + "','" + TotalMinutes + "','" + ShiftLength + "','" + ProcessCapacity + "','" + BottleNeckCapicity + "','" + PackingSize + "','" + ManpowerRequired + "','" + ManpowerAvailable + "','" + PlanQtyInBoxes + "','" + TotalAvilableHours + "','" + CIP + "','" + ProductOrMachineSetting + "','" + RMPMNotAvailable + "','" + MealBreak + "','" + MaintenanceBreakdown + "','" + NoElectricity + "','" + ManpowerShortage + "','" + StartupLoss + "','" + NoPlanning + "','" + Others + "','" + Others1 + "','" + Others2 + "','" + TotalDowntime + "','" + OperatingTime + "','" + Availabilty + "','" + Production + "','" + TotalProduction + "','" + ProductionDone + "','" + BottleNeckTargetProduction + "','" + BottleNeckTargetProductionBoxes + "','" + BottleNeckPerformance + "','" + Reject + "','" + Goods + "','" + Quality + "','" + OEE + "','" + BottlePerMinuteActual + "','" + BottlePerMinuteData + "','" + Diffrence + "','" + txtRemarks.Text + "','" + BalanceQty + "','" + cmbStatus.Text + "','" + txtRPONo.Text + "'," + BusinessLayer.UserId_Static + ")";

                    Result = objBL.Function_ExecuteNonQuery();

                    if (Result > 0)
                    {
                        if (txtPlanCode.Text != "")
                        {
                            objRL.UpdateBalance(Convert.ToInt32(txtPlanCode.Text));
                            //objBL.Query = "update weeklyplanning set ProductionDone='"+ Production + "',BalanceQty='" + BalanceQty + "',Status='" + cmbStatus.Text + "',Remarks='" + txtRemarks.Text + "' where WeeklyPlanningId=" + txtPlanCode.Text + "";
                            //Result = objBL.Function_ExecuteNonQuery();
                        }
                        if (!DeleteFlag)
                            objRL.ShowMessage(7, 1);
                        else
                            objRL.ShowMessage(9, 1);

                        ClearAll();
                        FillGrid();
                        objPC.WeeklyPlanningId = 0;
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

        private void btnClear_Click(object sender, EventArgs e)
        {
            ClearAll();
            GridFlag = false;
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (BusinessLayer.UserType == "ADMINISTRATOR")
            {
                DialogResult dr = objRL.Delete_Record_Show_Message();
                if (dr == System.Windows.Forms.DialogResult.Yes)
                {
                    DeleteFlag = true;
                    SaveDB();
                }
            }
            else
            {
                objRL.ShowMessage(24, 4);
                return;
            }
        }
        private void txtManpowerAvailable_TextChanged(object sender, EventArgs e)
        {
            // Calculations();
        }
        //private void Calculations()
        //{
        //    PlanQtyInBoxes = 0; TotalMinutes = 0; ManpowerAvailable = 0; CIPINMinutes = 0; ProductOrMachineSettingMiutes = 0; RMPMNotAvailableMminutes = 0; MealBreak = 0; MaintainanceBreakdown = 0; TotalBoxesInNos = 0; TotalProductionInKgLtr = 0; TotalProductionInNos = 0; RejectWastageInKgLtr = 0; Diffrence = 0; ManpowerShortage = 0;

        //    double.TryParse(txtPlanQtyInBoxes.Text,out PlanQtyInBoxes);
        //    //double.TryParse(txtTotalProductionInKgLtr.Text, out TotalProductionInKgLtr);

        //    Diffrence = TotalProductionInKgLtr - PlanQtyInBoxes;
        //    txtDiffrence.Text = Diffrence.ToString();
        //}

        double TotalMinutes = 0, ShiftLength = 0, ProcessCapacity = 0, BottleNeckCapicity = 0, PackingSize = 0, ManpowerRequired = 0, ManpowerAvailable = 0, PlanQtyInBoxes = 0, TotalAvilableHours = 0, CIP = 0, ProductOrMachineSetting = 0, RMPMNotAvailable = 0, MealBreak = 0, MaintenanceBreakdown = 0, NoElectricity = 0, ManpowerShortage = 0, StartupLoss = 0, NoPlanning = 0, Others = 0, Others1 = 0, Others2 = 0, TotalDowntime = 0, OperatingTime = 0, Availabilty = 0, Production = 0, TotalProduction = 0, ProductionDone = 0, BottleNeckTargetProduction = 0, BottleNeckTargetProductionBoxes = 0, BottleNeckPerformance = 0, Reject = 0, Goods = 0, Quality = 0, OEE = 0, BottlePerMinuteActual = 0, BottlePerMinuteData = 0, Diffrence = 0;
        private void Calculation_TotalDownTime()
        {
            //TotalMinutes = 0; ShiftLength = 0; 
            ProcessCapacity = 0; BottleNeckCapicity = 0; PackingSize = 0; ManpowerRequired = 0; ManpowerAvailable = 0; PlanQtyInBoxes = 0; TotalAvilableHours = 0; CIP = 0; ProductOrMachineSetting = 0; RMPMNotAvailable = 0; MealBreak = 0; MaintenanceBreakdown = 0; NoElectricity = 0; ManpowerShortage = 0; StartupLoss = 0; NoPlanning = 0; Others = 0; Others1 = 0; Others2 = 0; TotalDowntime = 0; OperatingTime = 0; Availabilty = 0; Production = 0; TotalProduction = 0; ProductionDone = 0; BottleNeckTargetProduction = 0; BottleNeckTargetProductionBoxes = 0; BottleNeckPerformance = 0; Reject = 0; Goods = 0; Quality = 0; OEE = 0; BottlePerMinuteActual = 0; BottlePerMinuteData = 0; Diffrence = 0;

            double.TryParse(txtCIP.Text, out CIP);

            double.TryParse(txtPlanQtyInBoxes.Text, out PlanQtyInBoxes);
            double.TryParse(txtProductOrMachineSetting.Text, out ProductOrMachineSetting);
            double.TryParse(txtRMPMNotAvailable.Text, out RMPMNotAvailable);
            double.TryParse(txtMealBreak.Text, out MealBreak);
            double.TryParse(txtMaintenanceBreakdown.Text, out MaintenanceBreakdown);
            double.TryParse(txtNoElectricity.Text, out NoElectricity);
            double.TryParse(txtManpowerShortage.Text, out ManpowerShortage);
            double.TryParse(txtStartupLoss.Text, out StartupLoss);
            double.TryParse(txtNoPlanning.Text, out NoPlanning);
            double.TryParse(txtOthers.Text, out Others);
            double.TryParse(txtOthers1.Text, out Others1);
            double.TryParse(txtOthers2.Text, out Others2);

            double.TryParse(txtProduction.Text, out Production);

            double.TryParse(txtReject.Text, out Reject);

            TotalDowntime = CIP + ProductOrMachineSetting + RMPMNotAvailable + MealBreak + MaintenanceBreakdown + NoElectricity + ManpowerShortage + StartupLoss + NoPlanning + Others + Others1 + Others2;
            TotalDowntime = Math.Round(TotalDowntime, 2);
            txtTotalDowntime.Text = TotalDowntime.ToString();

            ProcessCapacity = Math.Max(objPC.ProcessCapacity, objPC.MachineCapacity);
            ProcessCapacity = Math.Round(ProcessCapacity, 2);
            txtProcessCapacity.Text = ProcessCapacity.ToString();

            txtBottleNeckCapicity.Text = objPC.FinalCapacity.ToString();

            txtPackingSize.Text = objPC.PackingSize.ToString();

            txtManpowerRequired.Text = objPC.LabourRequired.ToString();

            double.TryParse(txtTotalAvilableHours.Text, out TotalAvilableHours);

            OperatingTime = TotalAvilableHours - TotalDowntime;
            OperatingTime = Math.Round(OperatingTime, 2);
            txtOperatingTime.Text = OperatingTime.ToString();

            Availabilty = (OperatingTime / TotalAvilableHours) * 100;
            Availabilty = Math.Round(Availabilty, 2);
            txtAvailabilty.Text = Availabilty.ToString();

            TotalProduction = Production * objPC.PackingSize;
            TotalProduction = Math.Round(TotalProduction, 2);
            txtTotalProduction.Text = TotalProduction.ToString();

            ProductionDone = Production * objPC.ConversionRate;
            ProductionDone = Math.Round(ProductionDone, 2);
            txtProductionDone.Text = ProductionDone.ToString();

            //Bottle Neck Target Production (I)= Bottle Neck Capicity/60*Operating Time
            BottleNeckTargetProduction = (objPC.FinalCapacity / 60) * OperatingTime;
            BottleNeckTargetProduction = Math.Round(BottleNeckTargetProduction, 2);
            txtBottleNeckTargetProduction.Text = BottleNeckTargetProduction.ToString();

            //BottleNeckTargetProductionBoxes = BottleNeckTargetProduction / objPC.PackingSize;
            BottleNeckTargetProductionBoxes = ((ProcessCapacity / objPC.ConversionRate) / 60) * OperatingTime;
            BottleNeckTargetProductionBoxes = Math.Round(BottleNeckTargetProductionBoxes);
            txtBottleNeckTargetProductionBox.Text = BottleNeckTargetProductionBoxes.ToString();

            BottleNeckPerformance = (ProductionDone / BottleNeckTargetProduction) * 100;
            BottleNeckPerformance = Math.Round(BottleNeckPerformance, 2);
            txtBottleNeckPerformance.Text = BottleNeckPerformance.ToString();

            Goods = ProductionDone - Reject;
            Goods = Math.Round(Goods, 2);
            txtGoods.Text = Goods.ToString();

            Quality = (Goods / ProductionDone) * 100;
            Quality = Math.Round(Quality, 2);
            txtQuality.Text = Quality.ToString();

            //double A1=0,B1=0,C1=0;

            //A1 = ProductionDone / BottleNeckTargetProduction;
            //B1 = OperatingTime / TotalAvilableHoursInMinutes;
            //C1 = GoodsInKg / ProductionDone;

            //OEE = (A1 + B1 + C1)/3*100;

            OEE = (Availabilty / 100) * (BottleNeckPerformance / 100) * (Quality / 100) * 100;

            //OEE = (Quality + BottleNeckPerformance + Availabilty) / 3;
            OEE = Math.Round(OEE, 2);
            txtOEE.Text = OEE.ToString();

            BottlePerMinuteActual = (Production * objPC.PackingSize) / OperatingTime;
            BottlePerMinuteActual = Math.Round(BottlePerMinuteActual);
            txtBottlePerMinuteActual.Text = BottlePerMinuteActual.ToString();

            txtBottlePerMinuteData.Text = objPC.FillingPerHour.ToString();

            Diffrence = Production - PlanQtyInBoxes;
            txtDiffrence.Text = Diffrence.ToString();

            if (Diffrence < 0)
                txtDiffrence.BackColor = Color.Red;
            else
                txtDiffrence.BackColor = Color.Green;

            BalanceQty = PlanQtyInBoxes - Production;
            BalanceQty = Math.Round(BalanceQty);
            txtBalanceQty.Text = BalanceQty.ToString();
        }

        private void txtCIP_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtProductOrMachineSetting_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtMaintenanceBreakdown_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtTotalProductionInKgLtr_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtShiftHours_KeyDown(object sender, KeyEventArgs e)
        {

        }

        private void txtShiftHours_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.NumericValue(sender, e, txtShiftLength);
        }

        private void txtCIP_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.FloatValue(sender, e, txtCIP);
        }

        private void txtProductOrMachineSetting_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.FloatValue(sender, e, txtProductOrMachineSetting);
        }

        private void txtRMPMNotAvailable_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.FloatValue(sender, e, txtRMPMNotAvailable);
        }

        private void txtMealBreak_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.FloatValue(sender, e, txtMealBreak);
        }

        private void txtMaintenanceBreakdown_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.FloatValue(sender, e, txtMaintenanceBreakdown);
        }

        private void txtNoElectricity_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.FloatValue(sender, e, txtNoElectricity);
        }

        private void txtEntryChecker_KeyPress(object sender, KeyPressEventArgs e)
        {

        }

        private void txtTotalAvilableHours_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtTotalMinutes_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtManpowerShortage_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtStartupLoss_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtNoPlanning_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtBottlePerMinuteActual_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtBottlePerMinuteData_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void dtpEntryDate_ValueChanged(object sender, EventArgs e)
        {
            lblDay.Text = Convert.ToString(dtpEndTime.Value.Date.DayOfWeek);
        }

        private void txtPlanCode_Leave(object sender, EventArgs e)
        {
            //lblPlanCode.Visible = false;
            //txtPlanCode.Visible = false;

            if (cmbData.SelectedIndex > -1)
            {
                if (cmbData.Text == "Planning")
                {
                    lblPlanCode.Visible = true;
                    txtPlanCode.Visible = true;
                }
            }
        }

        private void txtOthers1_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.FloatValue(sender, e, txtOthers1);
        }

        private void txtOthers2_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.FloatValue(sender, e, txtOthers2);
        }

        private void txtPlanQtyInBoxes_KeyPress_1(object sender, KeyPressEventArgs e)
        {
            objRL.FloatValue(sender, e, txtPlanQtyInBoxes);
        }

        private void cmbMachineName_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                cmbNameOfIncharge.Focus();
        }

        private void cmbShift_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                dtpStartTime.Focus();
        }

        private void dtpEndTime_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtManpowerAvailable.Focus();
        }

        private void txtManpowerAvailable_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtPlanQtyInBoxes.Focus();
        }

        private void txtPlanQtyInBoxes_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtCIP.Focus();
        }

        private void txtCIP_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtProductOrMachineSetting.Focus();
        }

        private void txtProductOrMachineSetting_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtRMPMNotAvailable.Focus();

        }

        private void txtRMPMNotAvailable_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtMealBreak.Focus();
        }

        private void txtMealBreak_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtMaintenanceBreakdown.Focus();
        }

        private void txtMaintenanceBreakdown_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtNoElectricity.Focus();
        }

        private void txtNoElectricity_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtManpowerShortage.Focus();

        }

        private void txtManpowerShortage_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtStartupLoss.Focus();
        }

        private void txtStartupLoss_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtNoPlanning.Focus();
        }

        private void txtNoPlanning_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtOthers.Focus();
        }

        private void txtOthers_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtOthers1.Focus();
        }

        private void txtOthers1_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtOthers2.Focus();
        }

        private void txtOthers2_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtProduction.Focus();
        }

        private void txtProduction_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtReject.Focus();
        }

        private void txtReject_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                cmbStatus.Focus();
        }

        int RowCount_Grid = 0, CurrentRowIndex = 0;



        private void txtBalanceQty_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtPlanQtyInBoxes_TextChanged_1(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        double BalanceQty = 0;

        private void cmbStatus_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtRPONo.Focus();
        }

        bool GridFlag = false;
        private void dtpProductionDate_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                if (cmbData.Text == "Planning")
                    cmbMachineName.Focus();
                else
                    txtSearchProductName.Focus();
            }
        }
        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                RowCount_Grid = dataGridView1.Rows.Count;
                CurrentRowIndex = dataGridView1.CurrentRow.Index;

                if (RowCount_Grid >= 0 && CurrentRowIndex >= 0)
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
                    //53 DE.Status
                    GridFlag = true;

                    ClearAll();
                    btnDelete.Enabled = true;
                    TableId = Convert.ToInt32(dataGridView1.Rows[e.RowIndex].Cells[0].Value);
                    txtOEEId.Text = TableId.ToString();
                    dtpEntryDate.Value = Convert.ToDateTime(dataGridView1.Rows[e.RowIndex].Cells[1].Value);
                    dtpEntryTime.Text = dataGridView1.Rows[e.RowIndex].Cells[2].Value.ToString();
                    cmbData.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[3].Value));
                    Fill_Plan_Code();
                    objPC.WeeklyPlanningId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[4].Value)));
                    txtPlanCode.Text = objPC.WeeklyPlanningId.ToString();
                    dtpProductionDate.Value = Convert.ToDateTime(dataGridView1.Rows[e.RowIndex].Cells[5].Value);
                    ProductId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[6].Value)));
                    FillItem();
                    cmbMachineName.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[9].Value));
                    cmbNameOfIncharge.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[10].Value));
                    cmbShift.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[11].Value));
                    dtpStartTime.Text = dataGridView1.Rows[e.RowIndex].Cells[12].Value.ToString(); //Convert.ToDateTime(dataGridView1.Rows[e.RowIndex].Cells[12].Value);
                    dtpEndTime.Text = dataGridView1.Rows[e.RowIndex].Cells[13].Value.ToString();// Convert.ToDateTime(dataGridView1.Rows[e.RowIndex].Cells[13].Value);
                    txtTotalHours.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[14].Value));
                    txtTotalMinutes.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[15].Value));
                    txtShiftLength.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[16].Value));
                    txtProcessCapacity.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[17].Value));
                    txtBottleNeckCapicity.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[18].Value));
                    txtPackingSize.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[19].Value));
                    txtManpowerRequired.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[20].Value));
                    txtManpowerAvailable.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[21].Value));
                    txtPlanQtyInBoxes.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[22].Value));
                    txtTotalAvilableHours.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[23].Value));
                    txtCIP.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[24].Value));
                    txtProductOrMachineSetting.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[25].Value));
                    txtRMPMNotAvailable.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[26].Value));
                    txtMealBreak.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[27].Value));
                    txtMaintenanceBreakdown.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[28].Value));
                    txtNoElectricity.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[29].Value));
                    txtManpowerShortage.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[30].Value));
                    txtStartupLoss.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[31].Value));
                    txtNoPlanning.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[32].Value));
                    txtOthers.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[33].Value));
                    txtOthers1.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[34].Value));
                    txtOthers2.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[35].Value));
                    txtTotalDowntime.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[36].Value));
                    txtOperatingTime.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[37].Value));
                    txtAvailabilty.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[38].Value));
                    txtProduction.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[39].Value));
                    txtTotalProduction.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[40].Value));
                    txtProductionDone.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[41].Value));
                    txtBottleNeckTargetProduction.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[42].Value));
                    txtBottleNeckTargetProductionBox.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[43].Value));
                    txtBottleNeckPerformance.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[44].Value));
                    txtReject.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[45].Value));
                    txtGoods.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[46].Value));
                    txtQuality.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[47].Value));
                    txtOEE.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[48].Value));
                    txtBottlePerMinuteActual.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[49].Value));
                    txtBottlePerMinuteData.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[50].Value));
                    txtDiffrence.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[51].Value));
                    txtRemarks.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[52].Value));
                    cmbStatus.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[53].Value));
                    txtRPONo.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[54].Value));
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

        int WeeklyPlanningId_Increase = 0;

        private void dtpSearchDate_ValueChanged(object sender, EventArgs e)
        {
            if (!cbToday.Checked)
                FillGrid();
        }

        private void gbPerformance_Enter(object sender, EventArgs e)
        {

        }

        private void Get_PlanId()
        {
            txtPlanCode.Text = "";
            WeeklyPlanningId_Increase = 0;
            DataSet ds = new DataSet();
            objBL.Query = "select WeeklyPlanningId from dataentry where CancelTag=0  order by WeeklyPlanningId desc LIMIT 1";
            ds = objBL.ReturnDataSet();
            if (ds.Tables[0].Rows.Count > 0)
            {
                WeeklyPlanningId_Increase = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][0])));
                WeeklyPlanningId_Increase++;

                txtPlanCode.Text = WeeklyPlanningId_Increase.ToString();
                objBL.Query = "select WeeklyPlanningId from weeklyplanning where WeeklyPlanningId=" + WeeklyPlanningId_Increase + " and CancelTag=0 and LocationId IN(select LocationId from userwiselocation where CancelTag=0 and UserId="+ BusinessLayer.UserId_Static+") order by WeeklyPlanningId desc";
                //
                ds = objBL.ReturnDataSet();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    WeeklyPlanningId_Increase = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][0])));
                    objPC.WeeklyPlanningId = WeeklyPlanningId_Increase;
                    txtPlanCode.Text = WeeklyPlanningId_Increase.ToString();
                    Fill_Plan_Entry();
                }
                else
                {
                    objRL.ShowMessage(51, 4);
                    return;
                }
            }
            else
            {
                WeeklyPlanningId_Increase = 0;
                //objBL.Query = "select top 1 WeeklyPlanningId from weeklyplanning where WeeklyPlanningId NOT IN(select WeeklyPlanningId from dataentry where CancelTag=0) and CancelTag=0 order by WeeklyPlanningId desc";
                //ds = objBL.ReturnDataSet();
                //if (ds.Tables[0].Rows.Count > 0)
                //{
                //    WeeklyPlanningId_Increase = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][0])));
                //}
            }
        }
        private void btnNextPlanning_Click(object sender, EventArgs e)
        {
            cmbData.Text = "Planning";
            Get_PlanId();
            //WeeklyPlanningId_Increase++;
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            DatewiseReport objForm = new DatewiseReport();
            objForm.ShowDialog(this);
        }

        private void cbToday_CheckedChanged(object sender, EventArgs e)
        {
            if (cbToday.Checked)
            {
                dtpSearchDate.Enabled = false;
                dtpSearchDate.Value = DateTime.Now.Date;
            }
            else
                dtpSearchDate.Enabled = true;

            FillGrid();
        }

        private void txtRemarks_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                btnSave.Focus();
        }

        private void txtReject_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.FloatValue(sender, e, txtReject);
        }

        private void txtGoods_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtOthers1_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtOthers2_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void btnAddProduct_Click(object sender, EventArgs e)
        {
            ProductMaster objForm = new ProductMaster();
            objForm.ShowDialog(this);
            objRL.Fill_Item_ListBox(lbItem, txtSearchProductName.Text, "All");
        }

        private void txtSearchCode_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtSearchCode_Leave(object sender, EventArgs e)
        {
            if (txtSearchCode.Text != "")
            {
                objRL.Fill_Item_By_ItemCode(rtbItem, txtSearchCode.Text);

                if (rtbItem.Text != "")
                {
                    rtbItem.Visible = true;
                    lbItem.Visible = false;
                }
            }
            else
            {
                objRL.Fill_Item_ListBox(lbItem, txtSearchProductName.Text, "All");
                txtSearchProductName.Focus();
            }
        }

        private void cmbData_SelectionChangeCommitted(object sender, EventArgs e)
        {
            Fill_Plan_Code();
        }

        private void Fill_Plan_Code()
        {
            if (cmbData.SelectedIndex > -1)
            {
                if (cmbData.Text == "Planning")
                {
                    lblPlanCode.Visible = true;
                    txtPlanCode.Visible = true;
                    gbSearchProduct.Enabled = false;
                }
                else
                {
                    lblPlanCode.Visible = false;
                    txtPlanCode.Visible = false;
                    gbSearchProduct.Enabled = true;
                }
            }
        }

        private void txtOthers_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtTotalDowntime_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtQuality_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtOperatingTime_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtBottleNeckPerformance_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtBottleNeckTargetProduction_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtProductionDone_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtProduction_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtManpowerShortage_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.FloatValue(sender, e, txtManpowerShortage);
        }

        private void txtStartupLoss_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.FloatValue(sender, e, txtStartupLoss);
        }

        private void txtNoPlanning_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.FloatValue(sender, e, txtNoPlanning);
        }

        private void txtOthers_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.FloatValue(sender, e, txtOthers);
        }

        private void txtTotalHours_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.FloatValue(sender, e, txtTotalHours);
        }

        private void txtManpowerAvailable_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.NumericValue(sender, e, txtManpowerAvailable);
        }

        private void txtPlanQtyInBoxes_KeyPress(object sender, KeyPressEventArgs e)
        {

        }

        private void txtNoElectricity_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtProduction_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.FloatValue(sender, e, txtProduction);
        }

        private void txtTotalProduction_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.FloatValue(sender, e, txtTotalProduction);
        }

        private void txtTotalProductionInNos_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtTotalBoxesInNos_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtReject_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtShiftHours_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtRMPMNotAvailable_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void txtMealBreak_TextChanged(object sender, EventArgs e)
        {
            Calculation_TotalDownTime();
        }

        private void dtpStartTime_ValueChanged(object sender, EventArgs e)
        {
            CalculateHours();
        }

        private void dtpEndTime_ValueChanged(object sender, EventArgs e)
        {
            CalculateHours();
        }
        DateTime endTime, startTime;
        private void CalculateHours()
        {
            startTime = dtpStartTime.Value;
            endTime = dtpEndTime.Value;

            // If the end time is earlier than the start time, it means the shift crosses midnight
            if (endTime < startTime)
            {
                // Add 24 hours to the end time to reflect that it is on the next day
                endTime = endTime.AddDays(1);
            }

            // Calculate the difference in minutes
            TimeSpan shiftDuration = endTime - startTime;

            txtTotalHours.Text = objRL.Get_String_TimeSpan(shiftDuration);

            //double HOURS= endTime.Subtract(startTime).TotalHours;
            //string MI = totalHours + ":" + totalMinutes;
            ////double totalHours = duration.TotalHours;
            //txtTotalHours.Text = MI.ToString();
            TotalMinutes = Convert.ToDouble(shiftDuration.TotalMinutes);
            TotalMinutes = Math.Round(TotalMinutes);
            txtTotalMinutes.Text = TotalMinutes.ToString();
            txtTotalAvilableHours.Text = TotalMinutes.ToString();

            //startTime = dtpStartTime.Value;
            //endTime = dtpEndTime.Value;
            //TimeSpan duration = endTime - startTime;
            ////int totalHours = (int)duration.TotalHours; // Get the whole hours
            ////int totalMinutes = duration.Minutes;
            //txtTotalHours.Text = objAL.Get_String_TimeSpan(duration);

            ////double HOURS= endTime.Subtract(startTime).TotalHours;
            ////string MI = totalHours + ":" + totalMinutes;
            //////double totalHours = duration.TotalHours;
            ////txtTotalHours.Text = MI.ToString();
            //TotalMinutes = Convert.ToDouble(duration.TotalMinutes);
            //TotalMinutes = Math.Round(TotalMinutes);
            //txtTotalMinutes.Text = TotalMinutes.ToString();
            //txtTotalAvilableHours.Text = TotalMinutes.ToString();
        }

        private void CalculateNightShiftMinutes()
        {
            startTime = dtpStartTime.Value;
            endTime = dtpEndTime.Value;

            // If the end time is earlier than the start time, it means the shift crosses midnight
            if (endTime < startTime)
            {
                // Add 24 hours to the end time to reflect that it is on the next day
                endTime = endTime.AddDays(1);
            }

            // Calculate the difference in minutes
            TimeSpan shiftDuration = endTime - startTime;

            txtTotalHours.Text = objRL.Get_String_TimeSpan(shiftDuration);

            //double HOURS= endTime.Subtract(startTime).TotalHours;
            //string MI = totalHours + ":" + totalMinutes;
            ////double totalHours = duration.TotalHours;
            //txtTotalHours.Text = MI.ToString();
            TotalMinutes = Convert.ToDouble(shiftDuration.TotalMinutes);
            TotalMinutes = Math.Round(TotalMinutes);
            txtTotalMinutes.Text = TotalMinutes.ToString();
            txtTotalAvilableHours.Text = TotalMinutes.ToString();

            //return (int)shiftDuration.TotalMinutes;
        }
        private void txtDiffrence_TextChanged(object sender, EventArgs e)
        {
            //Calculations();
        }

        private void txtPlanQtyInBoxes_TextChanged(object sender, EventArgs e)
        {

        }

        private void cmbShift_SelectionChangeCommitted(object sender, EventArgs e)
        {
            Fill_Shift_Hours();
        }

        private void Fill_Shift_Hours()
        {
            if (cmbShift.SelectedIndex > -1)
            {
                string Shift = string.Empty;
                Shift = cmbShift.Text;

                if (Shift == "I")
                {
                    dtpStartTime.Text = "07:00";
                    dtpEndTime.Text = "15:00";
                }
                else if (Shift == "II")
                {
                    dtpStartTime.Text = "15:00";
                    dtpEndTime.Text = "23:00";
                }
                else if (Shift == "III")
                {
                    dtpStartTime.Text = "15:00";
                    dtpEndTime.Text = "23:00";
                }
                else  
                {
                    dtpStartTime.Text = "00:00";
                    dtpEndTime.Text = "00:00";
                }
            }
        }
    }
}
