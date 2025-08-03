using BusinessLayerUtility;
using Microsoft.Office.Interop.Excel;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Forms;

namespace SPApplication.OEEApplication.Calculations
{
    public partial class Maintenance : Form
    {
        BusinessLayer objBL = new BusinessLayer();
        RedundancyLogics objRL = new RedundancyLogics();
        DesignLayer objDL = new DesignLayer();
        ErrorProvider objEP = new ErrorProvider();
        QueryLayer objQL = new QueryLayer();
        PropertyClass objPC = new PropertyClass();
        

        string MainQuery = string.Empty, WhereClause = string.Empty, OrderByClause = string.Empty, UserClause = string.Empty;

        int Result = 0;
        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        public Maintenance()
        {
            InitializeComponent();
            objDL.SetDesignMaster(this, lblHeader, btnSave, btnClear, btnDelete, btnExit, "MAINTENANCE REMARKS");
            objRL.Fill_Incharge(cmbNameOfIncharge);
            objRL.Fill_Machine(cmbMachineName);
            objRL.Fill_Status(cmbStatus);
        }

        private void DataEntrySearch_Load(object sender, EventArgs e)
        {
            ClearAll();
            Fill_Breakdown_List();
            FillGrid();
        }

        bool DeleteFlag = false;
        private void btnSave_Click(object sender, EventArgs e)
        {
            DeleteFlag = false;
            SaveDB();
        }

        private bool Validation()
        {
            objEP.Clear();

            if (txtOEEId.Text == "")
            {
                txtOEEId.Focus();
                objEP.SetError(txtOEEId, "Enter OEE Id");
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
                objEP.SetError(cmbNameOfIncharge, "Select Name of Incharge");
                return true;
            }
            else if (cmbShift.SelectedIndex == -1)
            {
                cmbShift.Focus();
                objEP.SetError(cmbShift, "Select Shift");
                return true;
            }
            else if (txtMaintenanceBreakdown.Text == "")
            {
                txtMaintenanceBreakdown.Focus();
                objEP.SetError(txtMaintenanceBreakdown, "Enter Maintenance Breakdown");
                return true;
            }
            else if (txtRemarkId.Text == "")
            {
                txtRemarkId.Focus();
                objEP.SetError(txtRemarkId, "Enter Remark Id");
                return true;
            }
            else if (txtRemarks.Text == "")
            {
                txtRemarks.Focus();
                objEP.SetError(txtRemarks, "Enter Remarks");
                return true;
            }
            else
                return false;
        }

        private bool CheckExist()
        {
            return false;
        }

        private void SaveDB()
        {
            Result = 0;
            try
            {
                if (!Validation())
                {

                    if (TableId != 0)
                    {
                        if (DeleteFlag)
                            objBL.Query = "update maintenanceremark set CancelTag=1 where MaintenanceRemarkId=" + TableId + "";
                        else
                            objBL.Query = "update maintenanceremark set RemarkDate='" + dtpRemarkDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "',DataEntryId=" + txtOEEId.Text + ",MaintenanceBreakdown='" + txtMaintenanceBreakdown.Text + "',Remarks='" + txtRemarks.Text + "',Status='" + cmbStatus.Text + "',ModifiedUserId=" + BusinessLayer.UserId_Static + " where MaintenanceRemarkId=" + TableId + " and CancelTag=0";
                    }
                    else
                        objBL.Query = "insert into maintenanceremark(RemarkDate,DataEntryId,MaintenanceBreakdown,Remarks,Status,UserId) values('" + dtpRemarkDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "'," + txtOEEId.Text + ",'" + txtMaintenanceBreakdown.Text + "','" + txtRemarks.Text + "','" + cmbStatus.Text + "'," + BusinessLayer.UserId_Static + ")";
                    Result = objBL.Function_ExecuteNonQuery();
                    if (Result > 0)
                    {
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
        }
        private void btnDelete_Click(object sender, EventArgs e)
        {
        }
        private void Get_Remarks_ID()
        {
            txtRemarkId.Text = Convert.ToString(objRL.ReturnMaxID_Increase("MaintenanceRemark", "MaintenanceRemarkId"));
        }

        private void ClearAll()
        {
            txtOEEId.Text = "";
            txtProductName.Text = "";
            txtRemarkId.Text = "";
            txtRemarks.Text = "";
            cmbNameOfIncharge.SelectedIndex = -1;
            cmbMachineName.SelectedIndex = -1;
            cmbShift.SelectedIndex = -1;
            cmbStatus.SelectedIndex = -1;
            dtpProductionDate.Value = DateTime.Now.Date;
            dtpRemarkDate.Value = DateTime.Now.Date;
            dtpStartTime.Value = DateTime.Now;
            dtpEndTime.Value = DateTime.Now;
            txtMaintenanceBreakdown.Text = "";
            Get_Remarks_ID();
            txtRemarks.Focus();

        }
        private void dataGridView1_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            if (e.RowIndex >= 0 && e.ColumnIndex == 28) // ColumnIndex = 2 is an example, change it to your target column index
            {
                //if (e.Value != null && e.Value.ToString() == "SpecificValue") // Add condition to identify the specific cell
                //{
                e.CellStyle.BackColor = Color.LightBlue; // Set the background color to yellow
                //}
            }
        }

        int RowCount_Grid = 0, CurrentRowIndex = 0, DataEntryId = 0, TableId = 0;
        bool GridFlag = false;

        private void label3_Click(object sender, EventArgs e)
        {

        }
        private void FillGrid()
        {

            MainQuery = string.Empty;
            WhereClause = string.Empty;
            OrderByClause = string.Empty;

            dataGridView2.DataSource = null;
            DataSet ds = new DataSet();

            //WhereClause = " and MR.RemarkDate='" + dtpSearchDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "'";

            //MainQuery = "select DE.DataEntryId,DE.EntryDate,DE.EntryTime,DE.Data,DE.WeeklyPlanningId,DE.ProductionDate,DE.ProductId,PM.ProductName,DE.MachineId,MM.MachineName,DE.NameOfIncharge,DE.Shift,DE.StartTime,DE.EndTime,DE.TotalHours,DE.TotalMinutes,DE.ShiftLength,DE.ProcessCapacity,DE.BottleNeckCapicity,DE.PackingSize,DE.ManpowerRequired,DE.ManpowerAvailable,DE.PlanQtyInBoxes,DE.TotalAvilableHours,DE.CIP,DE.ProductOrMachineSetting,DE.RMPMNotAvailable,DE.MealBreak,DE.MaintenanceBreakdown,DE.NoElectricity,DE.ManpowerShortage,DE.StartupLoss,DE.NoPlanning,DE.Others,DE.Others1,DE.Others2,DE.TotalDowntime,DE.OperatingTime,DE.Availabilty,DE.Production,DE.TotalProduction,DE.ProductionDone,DE.BottleNeckTargetProduction,DE.BottleNeckTargetProductionBoxes,DE.BottleNeckPerformance,DE.Reject,DE.Goods,DE.Quality,DE.OEE,DE.BottlePerMinuteActual,DE.BottlePerMinuteData,DE.Diffrence,DE.Remarks from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId where DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 ";
            //MainQuery = "select DE.DataEntryId as 'OEE ID',DE.EntryDate as 'Date',DE.EntryTime as 'Time',DE.Data,DE.WeeklyPlanningId,DE.ProductionDate as 'Production Date',DE.ProductId,PM.ProductName as 'Product Name',DE.MachineId,MM.MachineName as 'Machine Name',DE.NameOfIncharge as 'Name of Incharge',DE.Shift,DE.StartTime,DE.EndTime,DE.TotalHours,DE.TotalMinutes,DE.ShiftLength,DE.ProcessCapacity,DE.BottleNeckCapicity,DE.PackingSize,DE.ManpowerRequired,DE.ManpowerAvailable,DE.PlanQtyInBoxes,DE.TotalAvilableHours,DE.CIP,DE.ProductOrMachineSetting,DE.RMPMNotAvailable,DE.MealBreak,DE.MaintenanceBreakdown,DE.NoElectricity,DE.ManpowerShortage,DE.StartupLoss,DE.NoPlanning,DE.Others,DE.Others1,DE.Others2,DE.TotalDowntime,DE.OperatingTime,DE.Availabilty,DE.Production,DE.TotalProduction,DE.ProductionDone,DE.BottleNeckTargetProduction,DE.BottleNeckTargetProductionBoxes,DE.BottleNeckPerformance,DE.Reject,DE.Goods,DE.Quality,DE.OEE,DE.BottlePerMinuteActual,DE.BottlePerMinuteData,DE.Diffrence,DE.Remarks,DE.Status from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId where DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 ";
            MainQuery = "select MR.MaintenanceRemarkId as 'ID',MR.RemarkDate as 'Remark Date',MR.DataEntryId as 'Data Entry No',MR.MaintenanceBreakdown as 'Maintenance Breakdown',MR.Remarks,MR.Status,DE.ProductionDate as 'Production Date',MM.MachineName as 'Machine Name',DE.Shift,DE.StartTime,DE.EndTime,PM.ProductName as 'Product Name',DE.NameOfIncharge from maintenanceremark MR inner join DataEntry DE on DE.DataEntryId=MR.DataEntryId inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId where DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 and MR.CancelTag=0";
            OrderByClause = " order by MR.RemarkDate desc";
            objBL.Query = MainQuery + WhereClause + OrderByClause;

            ds = objBL.ReturnDataSet();

            if (ds.Tables[0].Rows.Count > 0)
            {
                //0 MR.MaintenanceRemarkId,
                //1 MR.RemarkDate,
                //2 MR.DataEntryId,
                //3 MR.MaintenanceBreakdown as 'Maintenance Breakdown',
                //4 MR.Remarks,
                //5 MR.Status,
                //6 DE.ProductionDate,
                //7 MM.MachineName,
                //8 DE.Shift,
                //9 DE.StartTime,
                //10 DE.EndTime,
                //11 PM.ProductName 
                //12 DE.NameOfIncharge,

                lblTotalCount.Text = "Total Count-" + ds.Tables[0].Rows.Count;
                dataGridView2.DataSource = ds.Tables[0];

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

                for (int i = 0; i < dataGridView2.Columns.Count; i++)
                {
                    dataGridView2.Columns[i].Width = 250;
                }

                dataGridView2.Columns[0].Width = 60;
                //dataGridView1.Columns[5].Width = 120;

                string Status = string.Empty;
                Pending_Count = 0; Completed_Count = 0; Cancel_Count = 0; Closed_Count = 0; Remarks_Count = 0;

                foreach (DataGridViewRow Myrow in dataGridView2.Rows)
                {
                    Status = string.Empty;
                    //Here 2 cell is target value and 1 cell is Volume

                    if (!string.IsNullOrEmpty(Convert.ToString(Myrow.Cells[5].Value)))
                        Status = Convert.ToString(Myrow.Cells[5].Value);

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
                //FreezeColumns(true);
                dataGridView2.ClearSelection();
            }
            // }
        }

        private void dataGridView2_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                RowCount_Grid = dataGridView2.Rows.Count;
                CurrentRowIndex = dataGridView2.CurrentRow.Index;

                if (RowCount_Grid >= 0 && CurrentRowIndex >= 0)
                {
                    //0 MR.MaintenanceRemarkId,
                    //1 MR.RemarkDate,
                    //2 MR.DataEntryId,
                    //3 MR.MaintenanceBreakdown as 'Maintenance Breakdown',
                    //4 MR.Remarks,
                    //5 MR.Status,
                    //6 DE.ProductionDate,
                    //7 MM.MachineName,
                    //8 DE.Shift,
                    //9 DE.StartTime,
                    //10 DE.EndTime,
                    //11 PM.ProductName 
                    //12 DE.NameOfIncharge,

                    GridFlag = true;
                    ClearAll();
                    btnDelete.Enabled = true;
                    TableId = Convert.ToInt32(dataGridView2.Rows[e.RowIndex].Cells[0].Value);
                    txtOEEId.Text = TableId.ToString();
                    dtpRemarkDate.Value = Convert.ToDateTime(dataGridView2.Rows[e.RowIndex].Cells[1].Value);
                    DataEntryId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dataGridView2.Rows[e.RowIndex].Cells[2].Value)));
                    txtMaintenanceBreakdown.Text = objRL.CheckNullString(Convert.ToString(dataGridView2.Rows[e.RowIndex].Cells[3].Value));
                    txtRemarks.Text = objRL.CheckNullString(Convert.ToString(dataGridView2.Rows[e.RowIndex].Cells[4].Value));
                    cmbStatus.Text = objRL.CheckNullString(Convert.ToString(dataGridView2.Rows[e.RowIndex].Cells[5].Value));
                    dtpProductionDate.Value = Convert.ToDateTime(dataGridView2.Rows[e.RowIndex].Cells[6].Value);
                    cmbMachineName.Text = objRL.CheckNullString(Convert.ToString(dataGridView2.Rows[e.RowIndex].Cells[7].Value));
                    cmbShift.Text = objRL.CheckNullString(Convert.ToString(dataGridView2.Rows[e.RowIndex].Cells[8].Value));
                    dtpStartTime.Text = dataGridView2.Rows[e.RowIndex].Cells[9].Value.ToString();
                    dtpEndTime.Text = dataGridView2.Rows[e.RowIndex].Cells[10].Value.ToString();
                    txtProductName.Text = objRL.CheckNullString(Convert.ToString(dataGridView2.Rows[e.RowIndex].Cells[11].Value));
                    cmbNameOfIncharge.Text = objRL.CheckNullString(Convert.ToString(dataGridView2.Rows[e.RowIndex].Cells[12].Value));
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
                    //53 DE.Status,
                    //54 DE.RPONo

                    GridFlag = true;

                    ClearAll();
                    btnDelete.Enabled = true;
                    DataEntryId = Convert.ToInt32(dataGridView1.Rows[e.RowIndex].Cells[0].Value);

                    txtProductName.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[7].Value));
                    dtpProductionDate.Value = Convert.ToDateTime(dataGridView1.Rows[e.RowIndex].Cells[5].Value);
                    cmbMachineName.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[9].Value));
                    cmbNameOfIncharge.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[10].Value));
                    cmbShift.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[11].Value));
                    txtOEEId.Text = DataEntryId.ToString();
                    dtpStartTime.Text = dataGridView1.Rows[e.RowIndex].Cells[12].Value.ToString();
                    dtpEndTime.Text = dataGridView1.Rows[e.RowIndex].Cells[13].Value.ToString();
                    txtMaintenanceBreakdown.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[28].Value));

                    txtProductName.Enabled = false;
                    dtpProductionDate.Enabled = false;
                    cmbMachineName.Enabled = false;
                    cmbNameOfIncharge.Enabled = false;
                    cmbShift.Enabled = false;
                    txtOEEId.Enabled = false;
                    dtpStartTime.Enabled = false;
                    dtpEndTime.Enabled = false;
                    txtMaintenanceBreakdown.Enabled = false;
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

        private void Set_Values()
        {

        }
        
        int Pending_Count = 0, Completed_Count = 0, Closed_Count = 0, Cancel_Count = 0, Remarks_Count = 0;
        private void Fill_Breakdown_List()
        {
            dataGridView1.DataSource = null;
            DataSet ds = new DataSet();

            WhereClause = " and DE.MaintenanceBreakdown > 0 ";

            //MainQuery = "select DE.DataEntryId,DE.EntryDate,DE.EntryTime,DE.Data,DE.WeeklyPlanningId,DE.ProductionDate,DE.ProductId,PM.ProductName,DE.MachineId,MM.MachineName,DE.NameOfIncharge,DE.Shift,DE.StartTime,DE.EndTime,DE.TotalHours,DE.TotalMinutes,DE.ShiftLength,DE.ProcessCapacity,DE.BottleNeckCapicity,DE.PackingSize,DE.ManpowerRequired,DE.ManpowerAvailable,DE.PlanQtyInBoxes,DE.TotalAvilableHours,DE.CIP,DE.ProductOrMachineSetting,DE.RMPMNotAvailable,DE.MealBreak,DE.MaintenanceBreakdown,DE.NoElectricity,DE.ManpowerShortage,DE.StartupLoss,DE.NoPlanning,DE.Others,DE.Others1,DE.Others2,DE.TotalDowntime,DE.OperatingTime,DE.Availabilty,DE.Production,DE.TotalProduction,DE.ProductionDone,DE.BottleNeckTargetProduction,DE.BottleNeckTargetProductionBoxes,DE.BottleNeckPerformance,DE.Reject,DE.Goods,DE.Quality,DE.OEE,DE.BottlePerMinuteActual,DE.BottlePerMinuteData,DE.Diffrence,DE.Remarks from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId where DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 ";
            //MainQuery = "select DE.DataEntryId as 'OEE ID',DE.EntryDate as 'Date',DE.EntryTime as 'Time',DE.Data,DE.WeeklyPlanningId,DE.ProductionDate as 'Production Date',DE.ProductId,PM.ProductName as 'Product Name',DE.MachineId,MM.MachineName as 'Machine Name',DE.NameOfIncharge as 'Name of Incharge',DE.Shift,DE.StartTime,DE.EndTime,DE.TotalHours,DE.TotalMinutes,DE.ShiftLength,DE.ProcessCapacity,DE.BottleNeckCapicity,DE.PackingSize,DE.ManpowerRequired,DE.ManpowerAvailable,DE.PlanQtyInBoxes,DE.TotalAvilableHours,DE.CIP,DE.ProductOrMachineSetting,DE.RMPMNotAvailable,DE.MealBreak,DE.MaintenanceBreakdown,DE.NoElectricity,DE.ManpowerShortage,DE.StartupLoss,DE.NoPlanning,DE.Others,DE.Others1,DE.Others2,DE.TotalDowntime,DE.OperatingTime,DE.Availabilty,DE.Production,DE.TotalProduction,DE.ProductionDone,DE.BottleNeckTargetProduction,DE.BottleNeckTargetProductionBoxes,DE.BottleNeckPerformance,DE.Reject,DE.Goods,DE.Quality,DE.OEE,DE.BottlePerMinuteActual,DE.BottlePerMinuteData,DE.Diffrence,DE.Remarks,DE.Status from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId where DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 ";
            MainQuery = "select DE.DataEntryId as 'OEE ID',DE.EntryDate as 'Date',DE.EntryTime as 'Time',DE.Data,DE.WeeklyPlanningId,DE.ProductionDate as 'Production Date',DE.ProductId,PM.ProductName as 'Product Name',DE.MachineId,MM.MachineName as 'Machine Name',DE.NameOfIncharge as 'Name of Incharge',DE.Shift,DE.StartTime as 'Start Time',DE.EndTime as 'End Time',DE.TotalHours as 'Total Hours',DE.TotalMinutes as 'Total Minutes',DE.ShiftLength,DE.ProcessCapacity as 'Process Capacity',DE.BottleNeckCapicity as 'Bottle Neck Capicity',DE.PackingSize as 'Packing Size',DE.ManpowerRequired as 'Manpower Required',DE.ManpowerAvailable as 'Manpower Available',DE.PlanQtyInBoxes as 'PlanQty In Boxes',DE.TotalAvilableHours as 'Total Avilable Minutes',DE.CIP,DE.ProductOrMachineSetting as 'Product or Machine Setting',DE.RMPMNotAvailable as 'RM/PM Not Available',DE.MealBreak as 'Meal Break',DE.MaintenanceBreakdown as 'Maintenance Breakdown',DE.NoElectricity as 'No Electricity',DE.ManpowerShortage as 'Manpower Shortage',DE.StartupLoss as 'Startup Loss',DE.NoPlanning as 'No Planning',DE.Others,DE.Others1,DE.Others2,DE.TotalDowntime as 'Total Downtime',DE.OperatingTime as 'Operating Time',DE.Availabilty,DE.Production,DE.TotalProduction as 'Total Production',DE.ProductionDone as 'Production Done',DE.BottleNeckTargetProduction as 'Bottle Neck Target Production',DE.BottleNeckTargetProductionBoxes as 'Bottle Neck Target Production Boxes',DE.BottleNeckPerformance as 'Bottle Neck Performance',DE.Reject,DE.Goods,DE.Quality,DE.OEE,DE.BottlePerMinuteActual as 'Bottle Per Minute Actual',DE.BottlePerMinuteData as 'Bottle Per Minute Data',DE.Diffrence,DE.Remarks,DE.Status,DE.RPONo from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId where DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 and DE.DataEntryId NOT IN(select DataEntryId from maintenanceremark where CancelTag=0) ";
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
                    dataGridView1.Columns[i].Visible = false;
                    dataGridView1.Columns[i].Width = 60;
                }

                dataGridView1.Columns[5].Visible = true;
                dataGridView1.Columns[7].Visible = true;
                dataGridView1.Columns[9].Visible = true;
                dataGridView1.Columns[10].Visible = true;
                dataGridView1.Columns[11].Visible = true;
                dataGridView1.Columns[12].Visible = true;
                dataGridView1.Columns[13].Visible = true;
                dataGridView1.Columns[15].Visible = true;
                dataGridView1.Columns[23].Visible = true;
                dataGridView1.Columns[24].Visible = true;
                dataGridView1.Columns[28].Visible = true;
                dataGridView1.Columns[36].Visible = true;
                dataGridView1.Columns[37].Visible = true;
                dataGridView1.Columns[38].Visible = true;

                dataGridView1.Columns[7].Width = 300;
                dataGridView1.Columns[5].Width = 80;

                string Status = string.Empty;


                Pending_Count = 0; Completed_Count = 0; Cancel_Count = 0; Closed_Count = 0; Remarks_Count = 0;

                //foreach (DataGridViewRow Myrow in dataGridView1.Rows)
                //{
                //    Status = string.Empty;
                //    //Here 2 cell is target value and 1 cell is Volume

                //    if (!string.IsNullOrEmpty(Convert.ToString(Myrow.Cells[53].Value)))
                //        Status = Convert.ToString(Myrow.Cells[53].Value);

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

                //lblPending.Text = "Pending-" + Pending_Count.ToString();
                //lblCompleted.Text = "Completed-" + Completed_Count.ToString();
                //lblCancel.Text = "Cancel-" + Cancel_Count.ToString();
                //lblClosed.Text = "Closed-" + Closed_Count.ToString();
                //lblRemarks.Text = "Remarks-" + Remarks_Count.ToString();

                dataGridView1.ClearSelection();

            }
        }
    }
}
