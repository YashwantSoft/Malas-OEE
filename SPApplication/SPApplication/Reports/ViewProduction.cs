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
using System.Windows.Forms;

namespace SPApplication.OEEApplication.Reports
{
    public partial class ViewProduction : Form
    {
        BusinessLayer objBL = new BusinessLayer();
        RedundancyLogics objRL = new RedundancyLogics();
        DesignLayer objDL = new DesignLayer();
        ErrorProvider objEP = new ErrorProvider();
        QueryLayer objQL = new QueryLayer();
        
        PropertyClass objPC = new PropertyClass();

        string MainQuery = string.Empty, WhereClause = string.Empty, OrderByClause = string.Empty, UserClause = string.Empty;

        private void ViewProduction_Load(object sender, EventArgs e)
        {
            FillGrid();
        }

        public ViewProduction()
        {
            SetDesign();
        }

        private void SetDesign()
        {
            InitializeComponent();
            objDL.SetDesignMaster(this, lblHeader, btnSave, btnClear, btnDelete, btnExit, "PRODUCTION LIST");
            objRL.Fill_Category(cmbCategory);
            objDL.SetButtonDesign(btnDelete, BusinessResources.BTN_SEARCH);
        }
        public ViewProduction(string Category,string Month,string Year)
        {
            SetDesign();
            cmbCategory.Text = Category.ToString();
            cmbMonth.Text = Month.ToString();
            cmbYear.Text = Year.ToString();
           
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            if(cmbCategory.SelectedIndex >-1 && cmbMonth.SelectedIndex >-1 && cmbYear.SelectedIndex >-1)
                 FillGrid();
            else
            {
                objRL.ShowMessage(17, 4);
                return;
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

        int Pending_Count = 0, Completed_Count = 0, Closed_Count = 0, Cancel_Count = 0, Remarks_Count = 0;
        private void FillGrid()
        {
            txtTotalProduction.Text = "";
            if (cmbCategory.SelectedIndex > -1)
            {
                //dataGridView1.DataSource = null;
                dataGridView1.DataSource = null;
                DataSet ds = new DataSet();

                if(cmbCategory.SelectedIndex >-1)
                    WhereClause =" and PM.Category='"+cmbCategory.Text+"' ";

                if(cmbMonth.SelectedIndex > -1)
                    WhereClause += " and Month(DE.ProductionDate)=" + objRL.GetMonthNumber(cmbMonth.Text) + "";

                if (cmbYear.SelectedIndex > -1)
                    WhereClause += " and Year(DE.ProductionDate)=" +  cmbYear.Text + "";

                MainQuery = "select DE.DataEntryId as 'OEE ID',DE.EntryDate as 'Date',DE.EntryTime as 'Time',DE.Data,DE.WeeklyPlanningId,DE.ProductionDate as 'Production Date',DE.ProductId,PM.ProductName as 'Product Name',DE.MachineId,MM.MachineName as 'Machine',DE.NameOfIncharge as 'Incharge',DE.Shift,DE.StartTime as 'Start Time',DE.EndTime as 'End Time',DE.TotalHours as 'Total Hours',DE.TotalMinutes as 'Total Minutes',DE.ShiftLength,DE.ProcessCapacity as 'Process Capacity',DE.BottleNeckCapicity as 'Bottle Neck Capicity',DE.PackingSize as 'Packing Size',DE.ManpowerRequired as 'Manpower Required',DE.ManpowerAvailable as 'Manpower Available',DE.PlanQtyInBoxes as 'PlanQty In Boxes',DE.TotalAvilableHours as 'Total Avilable Minutes',DE.CIP,DE.ProductOrMachineSetting as 'Product or Machine Setting',DE.RMPMNotAvailable as 'RM/PM Not Available',DE.MealBreak as 'Meal Break',DE.MaintenanceBreakdown as 'Maintenance Breakdown',DE.NoElectricity as 'No Electricity',DE.ManpowerShortage as 'Manpower Shortage',DE.StartupLoss as 'Startup Loss',DE.NoPlanning as 'No Planning',DE.Others,DE.Others1,DE.Others2,DE.TotalDowntime as 'Total Downtime',DE.OperatingTime as 'Operating Time',DE.Availabilty,DE.Production,DE.TotalProduction as 'Total Production',DE.ProductionDone as 'Production Done',DE.BottleNeckTargetProduction as 'Bottle Neck Target Production',DE.BottleNeckTargetProductionBoxes as 'Bottle Neck Target Production Boxes',DE.BottleNeckPerformance as 'Bottle Neck Performance',DE.Reject,DE.Goods,DE.Quality,DE.OEE,DE.BottlePerMinuteActual as 'Bottle Per Minute Actual',DE.BottlePerMinuteData as 'Bottle Per Minute Data',DE.Diffrence,DE.Remarks,DE.Status,DE.RPONo from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId inner join machinemaster MM on MM.MachineId=DE.MachineId where DE.CancelTag=0 and PM.CancelTag=0 and MM.CancelTag=0 ";
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
                        dataGridView1.Columns[i].Width = 60;
                    }
                   
                    double TotalProduction = 0;
                    for (int i = 0; i < dataGridView1.Rows.Count; i++)
                    {
                        TotalProduction += objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[i].Cells[39].Value)));
                    }
                    txtTotalProduction.Text = TotalProduction.ToString();

                    dataGridView1.Columns[7].Width = 300;
                    dataGridView1.Columns[5].Width = 80;

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
            else
            {
                objRL.ShowMessage(17, 4);
                return;
            }
        }

    }
}
