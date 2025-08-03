using BusinessLayerUtility;
using SPApplication.OEEApplication.Calculations;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SPApplication.OEEApplication.Reports
{
    public partial class DatewiseReport : Form
    {
        BusinessLayer objBL = new BusinessLayer();
        RedundancyLogics objRL = new RedundancyLogics();
        DesignLayer objDL = new DesignLayer();
        ErrorProvider objEP = new ErrorProvider();
        QueryLayer objQL = new QueryLayer();

        PropertyClass objPC = new PropertyClass();

        string MainQuery = string.Empty, WhereClause = string.Empty, OrderByClause = string.Empty, UserClause = string.Empty;
        public DatewiseReport()
        {
            InitializeComponent();
            objDL.SetDesignMaster(this, lblHeader, btnSave, btnClear, btnDelete, btnExit, "Datewise Report");
            btnSave.Text = BusinessResources.BTN_REPORT;
            objRL.Fill_Machine(cmbMachineName);
            objRL.Fill_Item_ListBox(lbItem, txtSearchProductName.Text, "All");
        }
        
        private void CommanReport_Load(object sender, EventArgs e)
        {
            //Day Wise Report
            //Date Wise Report
            //Machine Wise Report
            //Product Wise Report
            objRL.Fill_Category(cmbCategory);
            objRL.Fill_Location_ComboBox_By_Users(cmbLocation);
            ClearAll();
        }

        private void FreezeColumns(bool send)
        {
            // Assuming you have a DataGridView named 'dataGridView1'

            // Set the first column to be frozen
            dataGridView1.Columns["clmProductName"].Frozen = send;  // Freeze the first column

            // Set the second column to be frozen
            dataGridView1.Columns["clmMachineId"].Frozen = send;  // Freeze the second column

            dataGridView1.Rows[1].Frozen = true;
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
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

        private void cmbReportType_SelectionChangeCommitted(object sender, EventArgs e)
        {
            //dataGridView1.DataSource = null;
            ReportSelection();
        }

        private void ReportSelection()
        {
            //Day Wise Report
            //Date Wise Report
            //Month Wise Report
            //Machine Wise Report
            //Product Wise Report

            //pDate.Visible = false;
            //pMonth.Visible = false;
            //pMachineName.Visible = false;

            //Date Wise Report
            //Month Wise Report
            //All Months Report


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
                else if (cmbReportType.Text == "All Months Report")
                {
                    pDate.Visible = false;
                    pMonth.Visible = false;
                }
                else
                {
                    pDate.Visible = true;
                    pMonth.Visible = false;
                }

                //if (cmbReportType.Text == "Day Wise Report")
                //{
                //    pDate.Visible = true;
                //    cbToday.Checked = true;
                //}
                //else if (cmbReportType.Text == "Date Wise Report")
                //{
                //    pDate.Visible = true;
                //    cbToday.Checked = true;
                //}
                //else if (cmbReportType.Text == "Month Wise Report")
                //{
                //    pMonth.Visible = true;
                //}
                //else if (cmbReportType.Text == "Machine Wise Report")
                //{
                //    pMachineName.Visible = true;
                //}
                ////else if (cmbReportType.Text == "Product Wise Report")
                ////{
                ////    pProduct.Visible = true;
                ////    objRL.Fill_Item_ListBox(lbItem, txtSearchProductName.Text, "All");
                ////}
                //else
                //{
                //    pDate.Visible = false;
                //    pMonth.Visible = false;
                //    pMachineName.Visible = false;
                //}
            }
        }

        private void dataGridView1_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            if (e.RowIndex >= 0 && e.ColumnIndex == 38) // ColumnIndex = 2 is an example, change it to your target column index
            {
                //if (e.Value != null && e.Value.ToString() == "SpecificValue") // Add condition to identify the specific cell
                //{
                e.CellStyle.BackColor = Color.LightBlue; // Set the background color to yellow
                //}
            }

            if (e.RowIndex >= 0 && e.ColumnIndex == 44) // ColumnIndex = 2 is an example, change it to your target column index
            {
                //if (e.Value != null && e.Value.ToString() == "SpecificValue") // Add condition to identify the specific cell
                //{
                e.CellStyle.BackColor = Color.LightBlue; // Set the background color to yellow
                //}
            }

            if (e.RowIndex >= 0 && e.ColumnIndex == 48) // ColumnIndex = 2 is an example, change it to your target column index
            {
                //if (e.Value != null && e.Value.ToString() == "SpecificValue") // Add condition to identify the specific cell
                //{
                e.CellStyle.BackColor = Color.LightBlue; // Set the background color to yellow
                //}
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
            dataGridView1.DataSource = null;
            objEP.Clear();
            cmbLocation.SelectedIndex = -1;
            ClearAll_Item();
            //cbToday.Checked = false;
            cmbReportType.SelectedIndex = -1;
            dtpFromDate.Value = DateTime.Now.Date;
            dtpToDate.Value = DateTime.Now.Date;
            ProductId = 0;
            txtSearchCode.Text = "";
            txtSearchProductName.Text = "";
            rtbItem.Text = "";
            cmbMonth.SelectedIndex = -1;
            cmbYear.SelectedIndex = -1;
            cmbMachineName.SelectedIndex = -1;

            //pDate.Visible = false;
            //pMachineName.Visible = false;
            //pProduct.Visible = false;


            cbToday.Checked = true;
            cbSelectAllMachine.Checked = true;
            cbSelectAllCategory.Checked = true;
            cbSelectAllProdut.Checked = true;
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

        private void lbItem_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                FillItem();
        }

        private void lbItem_Leave(object sender, EventArgs e)
        {
            FillItem();
        }

        int ProductId = 0;
        private void FillItem()
        {
            if (lbItem.Items.Count > 0)
            {
                rtbItem.Text = "";

                if (objPC.WeeklyPlanningId == 0)
                    ProductId = Convert.ToInt32(lbItem.SelectedValue);

                objRL.FillItemDetailsRichTextBox(rtbItem, ProductId);

                if (!string.IsNullOrEmpty(objRL.ItemDetails_RTB))
                {
                    ProductId = objPC.ProductId;
                    lbItem.Visible = false;
                    rtbItem.Visible = true;
                }
                else
                    lbItem.Visible = true;

                cmbMachineName.Focus();
            }
        }

        private void lbItem_Click(object sender, EventArgs e)
        {
            FillItem();
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            ClearAll();
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

                    //ClearAll();
                    btnDelete.Enabled = true;
                    DataEntryId = Convert.ToInt32(dataGridView1.Rows[e.RowIndex].Cells[0].Value);

                    DataEntry objForm = new DataEntry(DataEntryId, "Search");
                    objForm.ShowDialog(this);
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
        int DataEntryId = 0, RowCount_Grid = 0, CurrentRowIndex = 0;

        private void cbSelectAllMachine_CheckedChanged(object sender, EventArgs e)
        {
            if (cbSelectAllMachine.Checked)
            {
                cmbMachineName.Enabled = false;
                cmbMachineName.SelectedIndex = -1;
            }
            else
            {
                cmbMachineName.Enabled = true;
                cmbMachineName.SelectedIndex = -1;
            }
        }

        private void cbSelectAllProdut_CheckedChanged(object sender, EventArgs e)
        {
            if (cbSelectAllProdut.Checked)
            {
                groupBox1.Enabled = false;
                ProductId = 0;
                txtSearchProductName.Text = "";
                txtSearchCode.Text = "";
            }
            else
            {
                ProductId = 0;
                groupBox1.Enabled = true;
            }
        }

        private void cbSelectAllCategory_CheckedChanged(object sender, EventArgs e)
        {
             
                if (cbSelectAllCategory.Checked)
                {
                    cmbCategory.Enabled = false;
                    cmbCategory.SelectedIndex = -1;
                }
                else
                {
                    cmbCategory.Enabled = true;
                    cmbCategory.SelectedIndex = -1;
                }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            FillGrid();
        }

        int Pending_Count = 0, Completed_Count = 0, Closed_Count = 0, Cancel_Count = 0, Remarks_Count = 0;

        private bool Validation()
        {
            objEP.Clear();

            if (cmbLocation.SelectedIndex == -1)
            {
                objEP.SetError(cmbLocation, "Select Location");
                cmbLocation.Focus();
                return true;
            }
            else if (!cbSelectAllMachine.Checked)
            {
                if (cmbMachineName.SelectedIndex == -1)
                {
                    objEP.SetError(cmbMachineName, "Select Machine Name");
                    cmbMachineName.Focus();
                    return true;
                }
                else
                    return false;
            }
            else if (!cbSelectAllCategory.Checked)
            {
                if (cmbCategory.SelectedIndex == -1)
                {
                    objEP.SetError(cmbCategory, "Select Category");
                    cmbCategory.Focus();
                    return true;
                }
                else
                    return false;
            }
            else if (!cbSelectAllProdut.Checked)
            {
                if (ProductId == 0)
                {
                    objEP.SetError(lbItem, "Select Product");
                    lbItem.Focus();
                    return true;
                }
                else
                    return false;
            }
            else
                return false;
        }

        private void ClearVariables()
        {
            ProcessCapacityTotal = 0;
            BottleNeckCapicityTotal = 0;
            ManpowerRequiredTotal = 0;
            ManpowerAvailableTotal = 0;
            TotalMinutesTotal = 0;
            CIPTotal = 0;
            ProductOrMachineSettingTotal = 0;
            RMPMNotAvailableTotal = 0;
            MealBreakTotal = 0;
            MaintenanceBreakdownTotal = 0;
            TotalDowntimeTotal = 0;
            OperatingTimeTotal = 0;
            AvailabiltyTotal = 0;
            ProductionTotal = 0;
            TotalProductionTotal = 0;
            ProductionDoneTotal = 0;
            BottleNeckTargetProductionBoxesTotal = 0;
            BottleNeckPerformanceTotal = 0;
            BottlePerMinuteActualTotal = 0;
            BottlePerMinuteDataTotal = 0;
        }

        double ProcessCapacity = 0, ProcessCapacityTotal = 0, BottleNeckCapicity = 0, BottleNeckCapicityTotal = 0, ManpowerRequired = 0, ManpowerRequiredTotal = 0, ManpowerAvailable = 0, ManpowerAvailableTotal = 0, TotalMinutes = 0, TotalMinutesTotal = 0, CIP = 0, CIPTotal = 0;
        double ProductOrMachineSetting = 0, ProductOrMachineSettingTotal = 0, RMPMNotAvailable = 0, RMPMNotAvailableTotal = 0, MealBreak = 0, MealBreakTotal = 0, MaintenanceBreakdown = 0, MaintenanceBreakdownTotal = 0;
        double TotalDowntime = 0, TotalDowntimeTotal = 0, OperatingTime = 0, OperatingTimeTotal = 0, Availabilty = 0, AvailabiltyTotal = 0;
        double Production = 0, ProductionTotal = 0, TotalProduction = 0, TotalProductionTotal = 0, ProductionDone = 0, ProductionDoneTotal = 0;
        double BottleNeckTargetProductionBoxes = 0, BottleNeckTargetProductionBoxesTotal = 0, BottleNeckPerformance = 0, BottleNeckPerformanceTotal = 0;
        double BottlePerMinuteActual = 0, BottlePerMinuteActualTotal = 0, BottlePerMinuteData = 0, BottlePerMinuteDataTotal = 0;

        private void FillGrid()
        {
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
                    //if (cmbReportType.Text == "Day Wise Report")
                    //{
                    //    pDate.Visible = true;
                    //    cbToday.Checked = true;
                    //}
                    //else if (cmbReportType.Text == "Date Wise Report")
                    //{
                    //    pDate.Visible = true;
                    //    cbToday.Checked = true;
                    //}
                    //else if (cmbReportType.Text == "Month Wise Report")
                    //{
                    //    pMonth.Visible = true;
                    //}
                    //else if (cmbReportType.Text == "Machine Wise Report")
                    //{
                    //    pMachineName.Visible = true;
                    //}

                    //Date Wise Report
                    //Month Wise Report
                    //All Months Report

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

                    //if (cmbReportType.Text == "Day Wise Report" || cmbReportType.Text == "Date Wise Report")
                    //{
                    //    WhereClause += " and DE.ProductionDate between '" + dtpFromDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "' and '" + dtpToDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "' ";
                    //}
                    ////else if (cmbReportType.Text == "Date Wise Report")
                    ////{
                    ////    pDate.Visible = true;
                    ////}
                    //else if (cmbReportType.Text == "Month Wise Report")
                    //{
                    //    //pMonth.Visible = true;
                    //    if (cmbMonth.SelectedIndex > -1 && cmbYear.SelectedIndex > -1)
                    //        WhereClause = " and Month(DE.ProductionDate)=" + objRL.GetMonthNumber(cmbMonth.Text) + " and Year(DE.ProductionDate)=" + cmbYear.Text + "";
                    //    //WhereClause = " and DE.ProductionDate between '" + dtpFromDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "' and '" + dtpToDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "' ";
                    //}
                    //else if (cmbReportType.Text == "Machine Wise Report")
                    //{
                    //    //pMachineName.Visible = true;
                    //    if (cmbMachineName.SelectedIndex > -1)
                    //    {
                    //        WhereClause = " and DE.MachineId=" + cmbMachineName.SelectedValue + "";
                    //    }
                    //}
                    //else if (cmbReportType.Text == "Product Wise Report")
                    //{
                    //    if (ProductId > 0)
                    //    {
                    //        //pProduct.Visible = true;
                    //        WhereClause = " and DE.ProductId=" + ProductId + "";
                    //    }
                    //}
                    //else
                    //{
                    //    pDate.Visible = false;
                    //    pMonth.Visible = false;
                    //    pMachineName.Visible = false;
                    //}


                    if(!cbSelectAllMachine.Checked && cmbMachineName.SelectedIndex >-1)
                        WhereClause += " and DE.MachineId=" + cmbMachineName.SelectedValue + "";

                    if (!cbSelectAllCategory.Checked && cmbCategory.SelectedIndex > -1)
                        WhereClause += " and PM.Category='" + cmbCategory.Text + "'";

                    if (!cbSelectAllProdut.Checked && ProductId >0 )
                        WhereClause += " and DE.ProductId=" + ProductId + "";

                    if(cmbLocation.SelectedIndex >-1)
                        WhereClause += " and DE.LocationId=" + cmbLocation.SelectedValue + "";

                    //MainQuery = "select DE.DataEntryId 'OEE ID',DE.EntryDate as 'Date',DE.EntryTime as 'Time',DE.Data,DE.WeeklyPlanningId,DE.ProductionDate as 'Production Date',DE.ProductId,PM.ProductName as 'Product Name',DE.MachineId,MM.MachineName as 'Machine',DE.NameOfIncharge as 'Incharge',DE.Shift,DE.StartTime as 'Start Time',DE.EndTime as 'End Time',DE.TotalHours as 'Total Hours',DE.TotalMinutes as 'Total Minutes',DE.ShiftLength,DE.ProcessCapacity as 'Process Capacity',DE.BottleNeckCapicity as 'Bottle Neck Capicity',DE.PackingSize as 'Packing Size',DE.ManpowerRequired as 'Manpower Required',DE.ManpowerAvailable as 'Manpower Available',DE.PlanQtyInBoxes as 'PlanQty In Boxes',DE.TotalAvilableHours as 'Total Avilable Minutes',DE.CIP,DE.ProductOrMachineSetting as 'Product or Machine Setting',DE.RMPMNotAvailable as 'RM/PM Not Available',DE.MealBreak as 'Meal Break',DE.MaintenanceBreakdown as 'Maintenance Breakdown',DE.NoElectricity as 'No Electricity',DE.ManpowerShortage as 'Manpower Shortage',DE.StartupLoss as 'Startup Loss',DE.NoPlanning as 'No Planning',DE.Others,DE.Others1,DE.Others2,DE.TotalDowntime as 'Total Downtime',DE.OperatingTime as 'Operating Time',DE.Availabilty,DE.Production,DE.TotalProduction as 'Total Production',DE.ProductionDone as 'Production Done',DE.BottleNeckTargetProduction as 'Bottle Neck Target Production',DE.BottleNeckTargetProductionBoxes as 'Bottle Neck Target Production Boxes',DE.BottleNeckPerformance as 'Bottle Neck Performance',DE.Reject,DE.Goods,DE.Quality,DE.OEE,DE.BottlePerMinuteActual as 'Bottle Per Minute Actual',DE.BottlePerMinuteData as 'Bottle Per Minute Data',DE.Diffrence,DE.Remarks,DE.Status,DE.RPONo from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId where DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 ";

                    MainQuery = "select DE.DataEntryId,DE.EntryDate,DE.EntryTime,DE.Data,DE.WeeklyPlanningId,DE.ProductionDate,DE.ProductId,PM.ProductName,DE.MachineId,MM.MachineName,DE.NameOfIncharge,DE.Shift,DE.StartTime,DE.EndTime,DE.TotalHours,DE.TotalMinutes,DE.ShiftLength,DE.ProcessCapacity,DE.BottleNeckCapicity,DE.PackingSize,DE.ManpowerRequired,DE.ManpowerAvailable,DE.PlanQtyInBoxes,DE.TotalAvilableHours,DE.CIP,DE.ProductOrMachineSetting,DE.RMPMNotAvailable,DE.MealBreak,DE.MaintenanceBreakdown,DE.NoElectricity,DE.ManpowerShortage,DE.StartupLoss,DE.NoPlanning,DE.Others,DE.Others1,DE.Others2,DE.TotalDowntime,DE.OperatingTime,DE.Availabilty,DE.Production,DE.TotalProduction,DE.ProductionDone,DE.BottleNeckTargetProduction,DE.BottleNeckTargetProductionBoxes,DE.BottleNeckPerformance,DE.Reject,DE.Goods,DE.Quality,DE.OEE,DE.BottlePerMinuteActual,DE.BottlePerMinuteData,DE.Diffrence,DE.Remarks,DE.Status,DE.RPONo,DE.LocationId from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId where DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 ";
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
                        dataGridView1.Rows[RCount].Cells["clmStatus"].Value = "Total";
                        RCount++;

                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                        {
                            dataGridView1.Rows.Add();

                            //Links
                            //dataGridView1.Rows[RCount].Cells["clmMaintenanceLink"].Value = "Maintenance";
                            //    dataGridView1.Rows[RCount].Cells["clmCostLink"].Value = "Cost";
                            // dataGridView1.Rows[RCount].Cells["clmTotalHoursLink"].Value = "Total Hours";



                            DateTime dtProductionDate;
                            dtProductionDate = Convert.ToDateTime(ds.Tables[0].Rows[i]["ProductionDate"]);

                            //Machine = 0; Products = 0;
                            //DataSet dsMachineSum= new DataSet();
                            //objBL.Query = "select count(DISTINCT MachineId),count(ProductId) from dataentry where CancelTag=0 and ProductionDate='" + dtProductionDate.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "'";
                            //dsMachineSum = objBL.ReturnDataSet();

                            //if(dsMachineSum.Tables[0].Rows.Count > 0)
                            //{
                            //    Machine = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dsMachineSum.Tables[0].Rows[0][0])));
                            //    Products = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dsMachineSum.Tables[0].Rows[0][1])));
                            //    TotalMachines += Machine;
                            //    TotalProducts += Products;
                            //}

                            dataGridView1.Rows[RCount].Cells["clmDataEntryId"].Value = ds.Tables[0].Rows[i]["DataEntryId"];
                            dataGridView1.Rows[RCount].Cells["clmStatus"].Value = ds.Tables[0].Rows[i]["Status"];
                            dataGridView1.Rows[RCount].Cells["clmProductionDate"].Value = dtProductionDate.ToString(BusinessResources.DATEFORMATDDMMYYYY);
                            dataGridView1.Rows[RCount].Cells["clmStartTime"].Value = ds.Tables[0].Rows[i]["StartTime"];
                            dataGridView1.Rows[RCount].Cells["clmEndTime"].Value = ds.Tables[0].Rows[i]["EndTime"];
                            dataGridView1.Rows[RCount].Cells["clmTotalHours"].Value = ds.Tables[0].Rows[i]["TotalHours"];
                            dataGridView1.Rows[RCount].Cells["clmShift"].Value = ds.Tables[0].Rows[i]["Shift"];
                            dataGridView1.Rows[RCount].Cells["clmProductName"].Value = ds.Tables[0].Rows[i]["ProductName"];
                            dataGridView1.Rows[RCount].Cells["clmMachineName"].Value = ds.Tables[0].Rows[i]["MachineName"];


                            ProcessCapacity = 0;
                            ProcessCapacity = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["ProcessCapacity"])));
                            dataGridView1.Rows[RCount].Cells["clmProcessCapacity"].Value = ProcessCapacity.ToString();
                            ProcessCapacityTotal += ProcessCapacity;

                            BottleNeckCapicity = 0;
                            BottleNeckCapicity = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["BottleNeckCapicity"])));
                            dataGridView1.Rows[RCount].Cells["clmBottleNeckCapicity"].Value = BottleNeckCapicity.ToString();
                            BottleNeckCapicityTotal += BottleNeckCapicity;

                            dataGridView1.Rows[RCount].Cells["clmPackingSize"].Value = ds.Tables[0].Rows[i]["PackingSize"];
                            dataGridView1.Rows[RCount].Cells["clmNameOfIncharge"].Value = ds.Tables[0].Rows[i]["NameOfIncharge"];

                            ManpowerRequired = 0;
                            BottleNeckCapicity = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["ManpowerRequired"])));
                            dataGridView1.Rows[RCount].Cells["clmManpowerRequired"].Value = ManpowerRequired.ToString();
                            ManpowerRequiredTotal += ManpowerRequired;

                            ManpowerAvailable = 0;
                            ManpowerAvailable = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["ManpowerAvailable"])));
                            dataGridView1.Rows[RCount].Cells["clmManpowerAvailable"].Value = BottleNeckCapicity.ToString();
                            ManpowerAvailableTotal += ManpowerAvailable;

                            TotalMinutes = 0;
                            TotalMinutes = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["TotalMinutes"])));
                            dataGridView1.Rows[RCount].Cells["clmTotalMinutes"].Value = TotalMinutes.ToString();
                            TotalMinutesTotal += TotalMinutes;

                            //dataGridView1.Rows[RCount].Cells["clmProcessCapacity"].Value = ds.Tables[0].Rows[i]["ProcessCapacity"];
                            //dataGridView1.Rows[RCount].Cells["clmBottleNeckCapicity"].Value = ds.Tables[0].Rows[i]["BottleNeckCapicity"];
                            //dataGridView1.Rows[RCount].Cells["clmManpowerRequired"].Value = ds.Tables[0].Rows[i]["ManpowerRequired"];
                            //dataGridView1.Rows[RCount].Cells["clmManpowerAvailable"].Value = ds.Tables[0].Rows[i]["ManpowerAvailable"];
                            //dataGridView1.Rows[RCount].Cells["clmTotalMinutes"].Value = ds.Tables[0].Rows[i]["TotalMinutes"];

                            CIP = 0;
                            CIP = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["CIP"])));
                            dataGridView1.Rows[RCount].Cells["clmCIP"].Value = CIP.ToString();
                            CIPTotal += CIP;

                            ProductOrMachineSetting = 0;
                            ProductOrMachineSetting = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["ProductOrMachineSetting"])));
                            dataGridView1.Rows[RCount].Cells["clmProductOrMachineSetting"].Value = ProductOrMachineSetting.ToString();
                            ProductOrMachineSettingTotal += ProductOrMachineSetting;

                            RMPMNotAvailable = 0;
                            RMPMNotAvailable = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["RMPMNotAvailable"])));
                            dataGridView1.Rows[RCount].Cells["clmRMPMNotAvailable"].Value = RMPMNotAvailable.ToString();
                            RMPMNotAvailableTotal += RMPMNotAvailable;

                            MealBreak = 0;
                            MealBreak = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["MealBreak"])));
                            dataGridView1.Rows[RCount].Cells["clmMealBreak"].Value = MealBreak.ToString();
                            MealBreakTotal += MealBreak;

                            MaintenanceBreakdown = 0;
                            MaintenanceBreakdown = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["MaintenanceBreakdown"])));
                            dataGridView1.Rows[RCount].Cells["clmMaintenanceBreakdown"].Value = MaintenanceBreakdown.ToString();
                            MaintenanceBreakdownTotal += MaintenanceBreakdown;

                            TotalDowntime = 0;
                            TotalDowntime = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["TotalDowntime"])));
                            dataGridView1.Rows[RCount].Cells["clmTotalDowntime"].Value = TotalDowntime.ToString();
                            TotalDowntimeTotal += TotalDowntime;

                            OperatingTime = 0;
                            OperatingTime = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["OperatingTime"])));
                            dataGridView1.Rows[RCount].Cells["clmOperatingTime"].Value = OperatingTime.ToString();
                            OperatingTimeTotal += OperatingTime;

                            Availabilty = 0;
                            Availabilty = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["Availabilty"])));
                            dataGridView1.Rows[RCount].Cells["clmAvailabilty"].Value = Availabilty.ToString();
                            AvailabiltyTotal += Availabilty;

                            Production = 0;
                            Production = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["Production"])));
                            dataGridView1.Rows[RCount].Cells["clmProduction"].Value = Availabilty.ToString();
                            ProductionTotal += Production;

                            TotalProduction = 0;
                            TotalProduction = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["TotalProduction"])));
                            dataGridView1.Rows[RCount].Cells["clmTotalProduction"].Value = TotalProduction.ToString();
                            TotalProductionTotal += TotalProduction;

                            ProductionDone = 0;
                            ProductionDone = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["ProductionDone"])));
                            dataGridView1.Rows[RCount].Cells["clmProductionDone"].Value = ProductionDone.ToString();
                            ProductionDoneTotal += ProductionDone;

                            BottleNeckTargetProductionBoxes = 0;
                            BottleNeckTargetProductionBoxes = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["BottleNeckTargetProductionBoxes"])));
                            dataGridView1.Rows[RCount].Cells["clmBottleNeckTargetProductionBoxes"].Value = BottleNeckTargetProductionBoxes.ToString();
                            BottleNeckTargetProductionBoxesTotal += BottleNeckTargetProductionBoxes;

                            BottleNeckPerformance = 0;
                            BottleNeckPerformance = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["BottleNeckPerformance"])));
                            dataGridView1.Rows[RCount].Cells["clmBottleNeckPerformance"].Value = BottleNeckPerformance.ToString();
                            BottleNeckPerformanceTotal += BottleNeckPerformance;

                            BottlePerMinuteActual = 0;
                            BottlePerMinuteActual = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["BottlePerMinuteActual"])));
                            dataGridView1.Rows[RCount].Cells["clmBottlePerMinuteActual"].Value = BottlePerMinuteActual.ToString();
                            BottlePerMinuteActualTotal += BottlePerMinuteActual;

                            BottlePerMinuteData = 0;
                            BottlePerMinuteData = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["BottlePerMinuteData"])));
                            dataGridView1.Rows[RCount].Cells["clmBottlePerMinuteData"].Value = BottlePerMinuteData.ToString();
                            BottlePerMinuteDataTotal += BottlePerMinuteData;


                            //dataGridView1.Rows[RCount].Cells["clmCIP"].Value = ds.Tables[0].Rows[i]["CIP"];
                            //dataGridView1.Rows[RCount].Cells["clmProductOrMachineSetting"].Value = ds.Tables[0].Rows[i]["ProductOrMachineSetting"];
                            //dataGridView1.Rows[RCount].Cells["clmRMPMNotAvailable"].Value = ds.Tables[0].Rows[i]["RMPMNotAvailable"];
                            //dataGridView1.Rows[RCount].Cells["clmMealBreak"].Value = ds.Tables[0].Rows[i]["MealBreak"];
                            //dataGridView1.Rows[RCount].Cells["clmMaintenanceBreakdown"].Value = ds.Tables[0].Rows[i]["MaintenanceBreakdown"];
                            //dataGridView1.Rows[RCount].Cells["clmTotalDowntime"].Value = ds.Tables[0].Rows[i]["TotalDowntime"];
                            //dataGridView1.Rows[RCount].Cells["clmOperatingTime"].Value = ds.Tables[0].Rows[i]["OperatingTime"];
                            //dataGridView1.Rows[RCount].Cells["clmAvailabilty"].Value = ds.Tables[0].Rows[i]["Availabilty"];

                            //dataGridView1.Rows[RCount].Cells["clmProduction"].Value = ds.Tables[0].Rows[i]["Production"];
                            //dataGridView1.Rows[RCount].Cells["clmTotalProduction"].Value = ds.Tables[0].Rows[i]["TotalProduction"];
                            //dataGridView1.Rows[RCount].Cells["clmProductionDone"].Value = ds.Tables[0].Rows[i]["ProductionDone"];

                            //dataGridView1.Rows[RCount].Cells["clmBottleNeckTargetProductionBoxes"].Value = ds.Tables[0].Rows[i]["BottleNeckTargetProductionBoxes"];
                            //dataGridView1.Rows[RCount].Cells["clmBottleNeckPerformance"].Value = ds.Tables[0].Rows[i]["BottleNeckPerformance"];
                            //dataGridView1.Rows[RCount].Cells["clmBottlePerMinuteActual"].Value = ds.Tables[0].Rows[i]["BottlePerMinuteActual"];
                            //dataGridView1.Rows[RCount].Cells["clmBottlePerMinuteData"].Value = ds.Tables[0].Rows[i]["BottlePerMinuteData"];

                            //dataGridView1.Rows[RCount].Cells["clmRemarks"].Value = ds.Tables[0].Rows[i]["Remarks"];

                            //dataGridView1.Rows[RCount].Cells["clmTotalAvilableHours"].Value = ds.Tables[0].Rows[i]["TotalAvilableHours"];
                            //dataGridView1.Rows[RCount].Cells["clmBottleNeckTargetProduction"].Value = ds.Tables[0].Rows[i]["BottleNeckTargetProduction"];
                            //dataGridView1.Rows[RCount].Cells["clmPlanQtyInBoxes"].Value = ds.Tables[0].Rows[i]["PlanQtyInBoxes"];

                            //dataGridView1.Rows[RCount].Cells["clmEntryDate"].Value = ds.Tables[0].Rows[i]["EntryDate"];
                            //dataGridView1.Rows[RCount].Cells["clmEntryTime"].Value = ds.Tables[0].Rows[i]["EntryTime"];
                            //dataGridView1.Rows[RCount].Cells["clmData"].Value = ds.Tables[0].Rows[i]["Data"];
                            //dataGridView1.Rows[RCount].Cells["clmWeeklyPlanningId"].Value = ds.Tables[0].Rows[i]["WeeklyPlanningId"];

                            //dataGridView1.Rows[RCount].Cells["clmProductId"].Value = ds.Tables[0].Rows[i]["ProductId"];

                            //dataGridView1.Rows[RCount].Cells["clmMachineId"].Value = ds.Tables[0].Rows[i]["MachineId"];

                            //



                            //dataGridView1.Rows[RCount].Cells["clmShiftLength"].Value = ds.Tables[0].Rows[i]["ShiftLength"];




                            //dataGridView1.Rows[RCount].Cells["clmNoElectricity"].Value = ds.Tables[0].Rows[i]["NoElectricity"];
                            //dataGridView1.Rows[RCount].Cells["clmManpowerShortage"].Value = ds.Tables[0].Rows[i]["ManpowerShortage"];
                            //dataGridView1.Rows[RCount].Cells["clmStartupLoss"].Value = ds.Tables[0].Rows[i]["StartupLoss"];
                            //dataGridView1.Rows[RCount].Cells["clmNoPlanning"].Value = ds.Tables[0].Rows[i]["NoPlanning"];
                            //dataGridView1.Rows[RCount].Cells["clmOthers"].Value = ds.Tables[0].Rows[i]["Others"];
                            //dataGridView1.Rows[RCount].Cells["clmOthers1"].Value = ds.Tables[0].Rows[i]["Others1"];
                            //dataGridView1.Rows[RCount].Cells["clmOthers2"].Value = ds.Tables[0].Rows[i]["Others2"];




                            //dataGridView1.Rows[RCount].Cells["clmReject"].Value = ds.Tables[0].Rows[i]["Reject"];
                            //dataGridView1.Rows[RCount].Cells["clmGoods"].Value = ds.Tables[0].Rows[i]["Goods"];
                            //dataGridView1.Rows[RCount].Cells["clmQuality"].Value = ds.Tables[0].Rows[i]["Quality"];
                            dataGridView1.Rows[RCount].Cells["clmOEE"].Value = ds.Tables[0].Rows[i]["OEE"];


                            //dataGridView1.Rows[RCount].Cells["clmDiffrence"].Value = ds.Tables[0].Rows[i]["Diffrence"];




                            // //dataGridView1.Rows[0].Cells["clmTotalMachineUsed"].Value = TotalMachines.ToString();
                            // //dataGridView1.Rows[0].Cells["clmTotalNosOfProducts"].Value = TotalProducts.ToString();

                            //// dataGridView1.Rows[RCount].Cells["clmTotalMachineUsed"].Value = Machine.ToString();
                            // //dataGridView1.Rows[RCount].Cells["clmTotalNosOfProducts"].Value = Products.ToString();

                            // //TotalProducts


                            // dataGridView1.Rows[RCount].Cells["clmEntryDate"].Value = ds.Tables[0].Rows[i]["EntryDate"];
                            // dataGridView1.Rows[RCount].Cells["clmEntryTime"].Value = ds.Tables[0].Rows[i]["EntryTime"];
                            // dataGridView1.Rows[RCount].Cells["clmData"].Value = ds.Tables[0].Rows[i]["Data"];
                            // dataGridView1.Rows[RCount].Cells["clmWeeklyPlanningId"].Value = ds.Tables[0].Rows[i]["WeeklyPlanningId"];
                            // dataGridView1.Rows[RCount].Cells["clmProductionDate"].Value = dtProductionDate.ToString(BusinessResources.DATEFORMATDDMMYYYY);
                            // dataGridView1.Rows[RCount].Cells["clmProductId"].Value = ds.Tables[0].Rows[i]["ProductId"];
                            // dataGridView1.Rows[RCount].Cells["clmProductName"].Value = ds.Tables[0].Rows[i]["ProductName"];
                            // dataGridView1.Rows[RCount].Cells["clmMachineId"].Value = ds.Tables[0].Rows[i]["MachineId"];
                            // dataGridView1.Rows[RCount].Cells["clmMachineName"].Value = ds.Tables[0].Rows[i]["MachineName"];
                            // dataGridView1.Rows[RCount].Cells["clmNameOfIncharge"].Value = ds.Tables[0].Rows[i]["NameOfIncharge"];
                            // dataGridView1.Rows[RCount].Cells["clmShift"].Value = ds.Tables[0].Rows[i]["Shift"];
                            // dataGridView1.Rows[RCount].Cells["clmStartTime"].Value = ds.Tables[0].Rows[i]["StartTime"];
                            // dataGridView1.Rows[RCount].Cells["clmEndTime"].Value = ds.Tables[0].Rows[i]["EndTime"];
                            // dataGridView1.Rows[RCount].Cells["clmTotalHours"].Value = ds.Tables[0].Rows[i]["TotalHours"];
                            // dataGridView1.Rows[RCount].Cells["clmTotalMinutes"].Value = ds.Tables[0].Rows[i]["TotalMinutes"];
                            // dataGridView1.Rows[RCount].Cells["clmShiftLength"].Value = ds.Tables[0].Rows[i]["ShiftLength"];
                            // dataGridView1.Rows[RCount].Cells["clmProcessCapacity"].Value = ds.Tables[0].Rows[i]["ProcessCapacity"];
                            // dataGridView1.Rows[RCount].Cells["clmBottleNeckCapicity"].Value = ds.Tables[0].Rows[i]["BottleNeckCapicity"];
                            // dataGridView1.Rows[RCount].Cells["clmPackingSize"].Value = ds.Tables[0].Rows[i]["PackingSize"];
                            // dataGridView1.Rows[RCount].Cells["clmManpowerRequired"].Value = ds.Tables[0].Rows[i]["ManpowerRequired"];
                            // dataGridView1.Rows[RCount].Cells["clmManpowerAvailable"].Value = ds.Tables[0].Rows[i]["ManpowerAvailable"];
                            // dataGridView1.Rows[RCount].Cells["clmPlanQtyInBoxes"].Value = ds.Tables[0].Rows[i]["PlanQtyInBoxes"];
                            // dataGridView1.Rows[RCount].Cells["clmTotalAvilableHours"].Value = ds.Tables[0].Rows[i]["TotalAvilableHours"];
                            // dataGridView1.Rows[RCount].Cells["clmCIP"].Value = ds.Tables[0].Rows[i]["CIP"];
                            // dataGridView1.Rows[RCount].Cells["clmProductOrMachineSetting"].Value = ds.Tables[0].Rows[i]["ProductOrMachineSetting"];
                            // dataGridView1.Rows[RCount].Cells["clmRMPMNotAvailable"].Value = ds.Tables[0].Rows[i]["RMPMNotAvailable"];
                            // dataGridView1.Rows[RCount].Cells["clmMealBreak"].Value = ds.Tables[0].Rows[i]["MealBreak"];
                            // dataGridView1.Rows[RCount].Cells["clmMaintenanceBreakdown"].Value = ds.Tables[0].Rows[i]["MaintenanceBreakdown"];
                            // dataGridView1.Rows[RCount].Cells["clmNoElectricity"].Value = ds.Tables[0].Rows[i]["NoElectricity"];
                            // dataGridView1.Rows[RCount].Cells["clmManpowerShortage"].Value = ds.Tables[0].Rows[i]["ManpowerShortage"];
                            // dataGridView1.Rows[RCount].Cells["clmStartupLoss"].Value = ds.Tables[0].Rows[i]["StartupLoss"];
                            // dataGridView1.Rows[RCount].Cells["clmNoPlanning"].Value = ds.Tables[0].Rows[i]["NoPlanning"];
                            // dataGridView1.Rows[RCount].Cells["clmOthers"].Value = ds.Tables[0].Rows[i]["Others"];
                            // dataGridView1.Rows[RCount].Cells["clmOthers1"].Value = ds.Tables[0].Rows[i]["Others1"];
                            // dataGridView1.Rows[RCount].Cells["clmOthers2"].Value = ds.Tables[0].Rows[i]["Others2"];
                            // dataGridView1.Rows[RCount].Cells["clmTotalDowntime"].Value = ds.Tables[0].Rows[i]["TotalDowntime"];
                            // dataGridView1.Rows[RCount].Cells["clmOperatingTime"].Value = ds.Tables[0].Rows[i]["OperatingTime"];
                            // dataGridView1.Rows[RCount].Cells["clmAvailabilty"].Value = ds.Tables[0].Rows[i]["Availabilty"];
                            // dataGridView1.Rows[RCount].Cells["clmProduction"].Value = ds.Tables[0].Rows[i]["Production"];
                            // dataGridView1.Rows[RCount].Cells["clmTotalProduction"].Value = ds.Tables[0].Rows[i]["TotalProduction"];
                            // dataGridView1.Rows[RCount].Cells["clmProductionDone"].Value = ds.Tables[0].Rows[i]["ProductionDone"];
                            // dataGridView1.Rows[RCount].Cells["clmBottleNeckTargetProduction"].Value = ds.Tables[0].Rows[i]["BottleNeckTargetProduction"];
                            // dataGridView1.Rows[RCount].Cells["clmBottleNeckTargetProductionBoxes"].Value = ds.Tables[0].Rows[i]["BottleNeckTargetProductionBoxes"];
                            // dataGridView1.Rows[RCount].Cells["clmBottleNeckPerformance"].Value = ds.Tables[0].Rows[i]["BottleNeckPerformance"];
                            // dataGridView1.Rows[RCount].Cells["clmReject"].Value = ds.Tables[0].Rows[i]["Reject"];
                            // dataGridView1.Rows[RCount].Cells["clmGoods"].Value = ds.Tables[0].Rows[i]["Goods"];
                            // dataGridView1.Rows[RCount].Cells["clmQuality"].Value = ds.Tables[0].Rows[i]["Quality"];
                            // dataGridView1.Rows[RCount].Cells["clmOEE"].Value = ds.Tables[0].Rows[i]["OEE"];
                            // dataGridView1.Rows[RCount].Cells["clmBottlePerMinuteActual"].Value = ds.Tables[0].Rows[i]["BottlePerMinuteActual"];
                            // dataGridView1.Rows[RCount].Cells["clmBottlePerMinuteData"].Value = ds.Tables[0].Rows[i]["BottlePerMinuteData"];
                            // dataGridView1.Rows[RCount].Cells["clmDiffrence"].Value = ds.Tables[0].Rows[i]["Diffrence"];
                            // dataGridView1.Rows[RCount].Cells["clmRemarks"].Value = ds.Tables[0].Rows[i]["Remarks"];
                            // dataGridView1.Rows[RCount].Cells["clmStatus"].Value = ds.Tables[0].Rows[i]["Status"];
                            // //dataGridView1.Rows[RCount].Cells["clmRPONo"].Value = ds.Tables[0].Rows[i]["RPONo"];

                            RCount++;

                        }

                        RCount = 0;
                        ProcessCapacityTotal = Math.Round(ProcessCapacityTotal);
                        dataGridView1.Rows[RCount].Cells["clmProcessCapacity"].Value = ProcessCapacityTotal.ToString();

                        BottleNeckCapicityTotal = Math.Round(BottleNeckCapicityTotal);
                        dataGridView1.Rows[RCount].Cells["clmBottleNeckCapicity"].Value = BottleNeckCapicityTotal.ToString();

                        ManpowerRequiredTotal = Math.Round(ManpowerRequiredTotal);
                        dataGridView1.Rows[RCount].Cells["clmManpowerRequired"].Value = ManpowerRequiredTotal.ToString();

                        ManpowerAvailableTotal = Math.Round(ManpowerAvailableTotal);
                        dataGridView1.Rows[RCount].Cells["clmManpowerAvailable"].Value = ManpowerAvailableTotal.ToString();

                        TotalMinutesTotal = Math.Round(TotalMinutesTotal);
                        dataGridView1.Rows[RCount].Cells["clmTotalMinutes"].Value = TotalMinutesTotal.ToString();

                        CIPTotal = Math.Round(CIPTotal);
                        dataGridView1.Rows[RCount].Cells["clmCIP"].Value = CIPTotal.ToString();

                        ProductOrMachineSettingTotal = Math.Round(ProductOrMachineSettingTotal);
                        dataGridView1.Rows[RCount].Cells["clmProductOrMachineSetting"].Value = ProductOrMachineSettingTotal.ToString();

                        RMPMNotAvailableTotal = Math.Round(RMPMNotAvailableTotal);
                        dataGridView1.Rows[RCount].Cells["clmRMPMNotAvailable"].Value = RMPMNotAvailableTotal.ToString();

                        MealBreakTotal = Math.Round(MealBreakTotal);
                        dataGridView1.Rows[RCount].Cells["clmMealBreak"].Value = MealBreakTotal.ToString();

                        MaintenanceBreakdownTotal = Math.Round(MaintenanceBreakdownTotal);
                        dataGridView1.Rows[RCount].Cells["clmMaintenanceBreakdown"].Value = MaintenanceBreakdownTotal.ToString();

                        TotalDowntimeTotal = Math.Round(TotalDowntimeTotal);
                        dataGridView1.Rows[RCount].Cells["clmTotalDowntime"].Value = TotalDowntimeTotal.ToString();

                        OperatingTimeTotal = Math.Round(OperatingTimeTotal);
                        dataGridView1.Rows[RCount].Cells["clmOperatingTime"].Value = OperatingTimeTotal.ToString();

                        AvailabiltyTotal = OperatingTimeTotal / TotalMinutesTotal * 100;
                        AvailabiltyTotal = Math.Round(AvailabiltyTotal);

                        dataGridView1.Rows[RCount].Cells["clmAvailabilty"].Value = AvailabiltyTotal.ToString() + "%";

                        ProductionTotal = Math.Round(ProductionTotal);
                        dataGridView1.Rows[RCount].Cells["clmProduction"].Value = ProductionTotal.ToString();

                        TotalProductionTotal = Math.Round(TotalProductionTotal);
                        dataGridView1.Rows[RCount].Cells["clmTotalProduction"].Value = TotalProductionTotal.ToString();

                        ProductionDoneTotal = Math.Round(ProductionDoneTotal);
                        dataGridView1.Rows[RCount].Cells["clmProductionDone"].Value = ProductionDoneTotal.ToString();

                        BottleNeckTargetProductionBoxesTotal = Math.Round(BottleNeckTargetProductionBoxesTotal);
                        dataGridView1.Rows[RCount].Cells["clmBottleNeckTargetProductionBoxes"].Value = BottleNeckTargetProductionBoxesTotal.ToString();

                        BottleNeckPerformanceTotal = TotalProductionTotal / BottleNeckTargetProductionBoxesTotal * 10;
                        BottleNeckPerformanceTotal = Math.Round(BottleNeckPerformanceTotal);

                        dataGridView1.Rows[RCount].Cells["clmBottleNeckPerformance"].Value = BottleNeckPerformanceTotal.ToString() + "%";

                        BottlePerMinuteActualTotal = Math.Round(BottlePerMinuteActualTotal);
                        dataGridView1.Rows[RCount].Cells["clmBottlePerMinuteActual"].Value = BottlePerMinuteActualTotal.ToString();

                        BottlePerMinuteDataTotal = Math.Round(BottlePerMinuteDataTotal);
                        dataGridView1.Rows[RCount].Cells["clmBottlePerMinuteData"].Value = BottlePerMinuteDataTotal.ToString();

                        dataGridView1.Rows[0].DefaultCellStyle.BackColor = Color.AliceBlue;

                        //lblTotalCount.Text = "Total Count-" + ds.Tables[0].Rows.Count;
                        //dataGridView1.DataSource = ds.Tables[0];
                        FreezeColumns(false);

                        //dataGridView1.Columns[0].Visible = false;
                        //dataGridView1.Columns[1].Visible = false;
                        //dataGridView1.Columns[2].Visible = false;
                        //dataGridView1.Columns[3].Visible = false;
                        //dataGridView1.Columns[4].Visible = false;
                        //dataGridView1.Columns[6].Visible = false;
                        //dataGridView1.Columns[8].Visible = false;

                        //dataGridView1.Columns[34].Visible = false;
                        //dataGridView1.Columns[35].Visible = false;

                        //dataGridView1.Columns[16].Visible = false;

                        //for (int i = 0; i < dataGridView1.Columns.Count; i++)
                        //{
                        //    dataGridView1.Columns[i].Width = 60;
                        //}

                        //dataGridView1.Columns[7].Width = 300;
                        //dataGridView1.Columns[5].Width = 80;

                        string Status = string.Empty;

                        Pending_Count = 0; Completed_Count = 0; Cancel_Count = 0; Closed_Count = 0; Remarks_Count = 0;

                        foreach (DataGridViewRow row in dataGridView1.Rows)
                        {
                            if (row.IsNewRow) continue;

                            DataGridViewCell cell = row.Cells["clmStatus"]; // column index 2

                            Status = objRL.CheckNullString(Convert.ToString(cell.Value));

                            if (Status != null && Status != "")
                            {

                                cell.Style.BackColor = Color.FromName(BusinessResources.LS_Pending_Color);
                                //cell.Style.ForeColor = Color.White;

                                if (Status == BusinessResources.LS_Pending)
                                {
                                    Pending_Count++;
                                    cell.Style.BackColor = Color.FromName(BusinessResources.LS_Pending_Color);
                                }
                                else if (Status == BusinessResources.LS_Completed)
                                {
                                    Completed_Count++;
                                    cell.Style.BackColor = Color.FromName(BusinessResources.LS_Completed_Color);
                                }
                                else if (Status == BusinessResources.LS_Cancel)
                                {
                                    Cancel_Count++;
                                    cell.Style.BackColor = Color.FromName(BusinessResources.LS_Cancel_Color);
                                }
                                else if (Status == BusinessResources.LS_Closed)
                                {
                                    Closed_Count++;
                                    cell.Style.BackColor = Color.FromName(BusinessResources.LS_Manager_Color);
                                }
                                else if (Status == BusinessResources.LS_Remarks)
                                {
                                    Remarks_Count++;
                                    cell.Style.BackColor = Color.FromName(BusinessResources.LS_Remarks_Color);
                                }
                                else if (Status == "Total")
                                {
                                    //Remarks_Count++;
                                    cell.Style.BackColor = Color.Cornsilk;
                                }
                                else
                                {
                                    //string hex = BusinessResources.BACKGROUND_COLOUR;
                                    //Color _color = System.Drawing.ColorTranslator.FromHtml(hex);
                                    //Myrow.DefaultCellStyle.BackColor = _color;
                                }
                            }
                        }




                        //foreach (DataGridViewRow row in dataGridView1.Rows)
                        //{
                        //    // Skip the new row used for adding data if AllowUserToAddRows = true
                        //    if (row.IsNewRow) continue;

                        //    foreach (DataGridViewCell cell in row.Cells)
                        //    {
                        //        // Example condition: Change color of cells with value "High"

                        //        Status =  objRL.CheckNullString(Convert.ToString(cell.Value));


                        //        if (Status != null && Status !="")
                        //        {

                        //            cell.Style.BackColor = Color.FromName(BusinessResources.LS_Pending_Color);
                        //            //cell.Style.ForeColor = Color.White;

                        //            if (Status == BusinessResources.LS_Pending)
                        //            {
                        //                Pending_Count++;
                        //                cell.Style.BackColor = Color.FromName(BusinessResources.LS_Pending_Color);
                        //            }
                        //            else if (Status == BusinessResources.LS_Completed)
                        //            {
                        //                Completed_Count++;
                        //                cell.Style.BackColor = Color.FromName(BusinessResources.LS_Completed_Color);
                        //            }
                        //            else if (Status == BusinessResources.LS_Cancel)
                        //            {
                        //                Cancel_Count++;
                        //                cell.Style.BackColor = Color.FromName(BusinessResources.LS_Cancel_Color);
                        //            }
                        //            else if (Status == BusinessResources.LS_Closed)
                        //            {
                        //                Closed_Count++;
                        //                cell.Style.BackColor = Color.FromName(BusinessResources.LS_Manager_Color);
                        //            }
                        //            else if (Status == BusinessResources.LS_Remarks)
                        //            {
                        //                Remarks_Count++;
                        //                cell.Style.BackColor = Color.FromName(BusinessResources.LS_Remarks_Color);
                        //            }
                        //            else
                        //            {
                        //                //string hex = BusinessResources.BACKGROUND_COLOUR;
                        //                //Color _color = System.Drawing.ColorTranslator.FromHtml(hex);
                        //                //Myrow.DefaultCellStyle.BackColor = _color;
                        //            }
                        //        }

                        //        //// Another condition: Change color of cells in a specific column index
                        //        //if (cell.ColumnIndex == 2)
                        //        //{
                        //        //    cell.Style.BackColor = Color.LightBlue;
                        //        //}
                        //    }
                        //}


                        //foreach (DataGridViewRow Myrow in dataGridView1.Rows)
                        //{
                        //    Status = string.Empty;
                        //    //Here 2 cell is target value and 1 cell is Volume

                        //    if (!string.IsNullOrEmpty(Convert.ToString(Myrow.Cells["clmStatus"].Value)))
                        //        Status = Convert.ToString(Myrow.Cells["clmStatus"].Value);

                        //    if (Status == BusinessResources.LS_Pending)
                        //    {
                        //        Pending_Count++;
                        //        Myrow.DefaultCellStyle.BackColor = Color.FromName(BusinessResources.LS_Pending_Color);
                        //    }
                        //    else if (Status == BusinessResources.LS_Completed)
                        //    {
                        //        Completed_Count++;
                        //        Myrow.DefaultCellStyle.BackColor = Color.FromName(BusinessResources.LS_Completed_Color);
                        //    }
                        //    else if (Status == BusinessResources.LS_Cancel)
                        //    {
                        //        Cancel_Count++;
                        //        Myrow.DefaultCellStyle.BackColor = Color.FromName(BusinessResources.LS_Cancel_Color);
                        //    }
                        //    else if (Status == BusinessResources.LS_Closed)
                        //    {
                        //        Closed_Count++;
                        //        Myrow.DefaultCellStyle.BackColor = Color.FromName(BusinessResources.LS_Manager_Color);
                        //    }
                        //    else if (Status == BusinessResources.LS_Remarks)
                        //    {
                        //        Remarks_Count++;
                        //        Myrow.DefaultCellStyle.BackColor = Color.FromName(BusinessResources.LS_Remarks_Color);
                        //    }
                        //    else
                        //    {
                        //        //string hex = BusinessResources.BACKGROUND_COLOUR;
                        //        //Color _color = System.Drawing.ColorTranslator.FromHtml(hex);
                        //        //Myrow.DefaultCellStyle.BackColor = _color;
                        //    }
                        //}

                        lblPending.Text = "Pending-" + Pending_Count.ToString();
                        lblCompleted.Text = "Completed-" + Completed_Count.ToString();
                        lblCancel.Text = "Cancel-" + Cancel_Count.ToString();
                        lblClosed.Text = "Closed-" + Closed_Count.ToString();
                        lblRemarks.Text = "Remarks-" + Remarks_Count.ToString();
                        FreezeColumns(true);

                        //dataGridView1.Rows.Add();
                        //dataGridView1.Rows[dataGridView1.Rows.Count].Cells[1].Value = "Total";

                        dataGridView1.ClearSelection();
                    }
                    else
                    {
                        objRL.ShowMessage(35, 4);
                        return;
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
