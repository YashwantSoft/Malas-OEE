using BusinessLayerUtility;
using SPApplication.HR;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using SPApplication.ListForms;
using SPApplication.Authentication;
using SPApplication.Master;
using System.Configuration;
using SPApplication.OEEApplication.Master;
using SPApplication.OEEApplication.Calculations;
using SPApplication.OEEApplication.Reports;
using System.Windows.Forms.DataVisualization.Charting;
using System.Data.SqlTypes;
//using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using System.Windows.Controls.Primitives;
using Microsoft.Reporting.Map.WebForms.VirtualEarth;
using SPApplication.Reports;

namespace SPApplication
{
    public partial class MainDashboard : Form
    {
        private int childFormNumber = 0;

        BusinessLayer objBL = new BusinessLayer();
        ErrorProvider objEP = new ErrorProvider();
        DesignLayer objDL = new DesignLayer();
        QueryLayer objQL = new QueryLayer();
        PropertyClass objPC = new PropertyClass();
        RedundancyLogics objRL = new RedundancyLogics();

        int SearchId = 0, TicketPendingCount = 0;
        public MainDashboard()
        {
            InitializeComponent();

            // btnExit.BackgroundImage = BusinessResources.Exit;
            this.Icon = BusinessResources.MalasICO;
            //pbCompanyBackground.Image = BusinessResources.MalasBackgroud;
            pbProductLogo.Image = BusinessResources.ClientLogo;

            //For M
            this.Text = BusinessResources.COMPANYNAME1;

            lblUser.Visible = true;
            SearchId = BusinessLayer.UserId_Static;
        }
        private void ExitToolsStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        private void CascadeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.Cascade);
        }
        private void TileVerticalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.TileVertical);
        }
        private void TileHorizontalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.TileHorizontal);
        }
        private void ArrangeIconsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.ArrangeIcons);
        }
        private void CloseAllToolStripMenuItem_Click(object sender, EventArgs e)
        {
            foreach (Form childForm in MdiChildren)
            {
                childForm.Close();
            }
        }
        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
        private void PopulateChartFromDataGridView1(DataGridView dgv,Chart chart)
        {
            //// Create a new chart area
            //ChartArea chartArea = new ChartArea("chartArea1");
            //chart1.ChartAreas.Add(chartArea);

            //// Create a new series for the pie chart
            //Series series = new Series("PieChart");
            //series.ChartType = SeriesChartType.Pie;

            //// Loop through DataGridView rows and add points to the chart
            //foreach (DataGridViewRow row in dataGridView2.Rows)
            //{
            //    // Make sure the row is not empty
            //    if (row.Cells[0].Value != null && row.Cells[1].Value != null)
            //    {
            //        string category = row.Cells[0].Value.ToString();
            //        double value = Convert.ToDouble(row.Cells[1].Value);

            //        // Add the data point to the series
            //        series.Points.AddXY(category, value);
            //    }
            //}

            //// Add the series to the chart
            //chart1.Series.Add(series);

            //// Customize the appearance (optional)
            //series["PieLabelStyle"] = "Outside";
            //series["DoughnutRadius"] = "50"; // Optional for doughnut-style pie chart
            //chart1.Titles.Add("Pie Chart from DataGridView");

            // Create chart control
            //Chart chart = new Chart();

            // Create two ChartAreas
            ChartArea chartArea1 = new ChartArea("ChartArea1");
            //chart1.Dock = DockStyle.Fill;
            // ChartArea chartArea2 = new ChartArea("ChartArea2");

            // Add the chart areas to the chart
            //chart1.ChartAreas.Add(chartArea1);
            //chart1.ChartAreas.Add(chartArea2);

            // Create series for pie chart
            Series pieSeries = new Series("PieSeries");
            pieSeries.ChartArea = "ChartArea1";  // Assign to ChartArea1
            pieSeries.ChartType = SeriesChartType.Pie;

            //pieSeries.LabelsVerticalAlignment = StringAlignment.Center;  // Align vertically in the center
            //pieSeries.LabelsHorizontalAlignment = StringAlignment.Center;  // Align horizontally in the center

            //pieSeries.SmartLabelStyle.Enabled = true;
            //pieSeries.SmartLabelStyle.IsMarkerOverlappingAllowed = true;
            //pieSeries.SmartLabelStyle.MovingDirection = LabelAlignmentStyles.Center;

            //pieSeries.IsValueShownAsLabel = true;
            ////pieSeries. = StringAlignment.Center;  // Align vertically in the center
            ////pieSeries.LabelHorizontalAlignment = StringAlignment.Center;  // Align horizontally in the center
            //pieSeries.LabelFormat = "#PERCENT";

            foreach (DataGridViewRow row in dgv.Rows)
            {
                // Make sure the row is not empty
                if (row.Cells[1].Value != null)
                {
                    string category = row.Cells[1].Value.ToString();
                    double value = Convert.ToDouble(row.Cells[4].Value);

                    if (value > 0)
                    {
                        // Add the data point to the series
                        pieSeries.Points.AddXY(category, value);
                    }
                }
            }

            foreach (DataPoint point in pieSeries.Points)
            {
                // Change font size
                point.Font = new Font("Calibri", 6); // Set font size to 12

                // Change font color
                point.LabelForeColor = Color.White; // Set font color to red
                point.Label = point.AxisLabel;
            }

            //pieSeries.Points.AddXY("A", 25);
            //pieSeries.Points.AddXY("B", 30);
            //pieSeries.Points.AddXY("C", 20);
            //pieSeries.Points.AddXY("D", 60);

            //// Create series for another chart type (e.g., bar chart)
            //Series barSeries = new Series("BarSeries");
            //barSeries.ChartArea = "ChartArea2";  // Assign to ChartArea2
            //barSeries.ChartType = SeriesChartType.Bar;
            //barSeries.Points.AddXY("Category1", 30);
            //barSeries.Points.AddXY("Category2", 40);

            // Add series to the chart
            chart.Series.Clear();
            chart.Series.Add(pieSeries);
            //chart1.Series.Add(barSeries);

            // Add chart to the form
            this.Controls.Add(chart);
        }
        private void MDIParent1_Load(object sender, EventArgs e)
        {
            objPC.FormName = string.Empty;
            cmbMonth.Text = objRL.GetMonthName(Convert.ToInt32(DateTime.Now.Month));
            cmbYear.Text = DateTime.Now.Year.ToString();
            lblUser.Text = "Welcome " + BusinessLayer.UserName_Full_Static; // | " + BusinessLayer.UserType;
            StartTimer();
            Get_UserRightsDetails();
            mtsImportForecast.Visible = true;
            mtsImportPlanning.Visible = true;

            Fill_Dashboard(dgvUnit48,cUnit48, 1);
            Fill_Dashboard(dgvUnit49, cUnit49, 2);
            Fill_Dashboard(dgvUnitB133, cUnitB133, 3);
            Fill_Dashboard(dgvPanchgani, cUnitPanchgani, 4);
        }
        private void Fill_Dashboard(DataGridView dgv, Chart chart,int LocationId)
        {
            int RCountGrid = 0;
            dgv.Rows.Clear();
            DataSet ds = new DataSet();
            objBL.Query = "select distinct Category,CategoryId from categorymaster where Category NOT IN('NA') and CancelTag=0 order by Category asc";
            ds = objBL.ReturnDataSet();
            if (ds.Tables[0].Rows.Count > 0)
            {
                RCountGrid = 0;
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    //dataGridView1.Rows[i].Cells["clmCategory"].Value = ds.Tables[0].Rows[i]["CategoryId"];

                    double RequiredQuantity = 0, ProductionDone = 0, Balance = 0;
                    Category = string.Empty;
                    Category = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["Category"]));
                    //Category = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[i].Cells["clmCategory"].Value));
                    Get_Requiered_Sum(LocationId);
                    RequiredQuantity = SumValue;
                    Get_Production_Sum(LocationId);
                    ProductionDone = SumValue;

                    if (RequiredQuantity > 0)
                    {
                        dgv.Rows.Add();

                        dgv.Rows[RCountGrid].Cells[1].Value = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["Category"]));
                        dgv.Rows[RCountGrid].Cells[3].Value = RequiredQuantity.ToString();
                        dgv.Rows[RCountGrid].Cells[4].Value = ProductionDone.ToString();
                        Balance = RequiredQuantity - ProductionDone;
                        dgv.Rows[RCountGrid].Cells[5].Value = Balance.ToString();


                        //dgv.Rows[RCountGrid].Cells["clmCategory"].Value = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["Category"]));
                        //dgv.Rows[RCountGrid].Cells["clmRequiredQuantity"].Value = RequiredQuantity.ToString();
                        //dgv.Rows[RCountGrid].Cells["clmProductionDone"].Value = ProductionDone.ToString();
                        //Balance = RequiredQuantity - ProductionDone;
                        //dgv.Rows[RCountGrid].Cells["clmBalanceQty"].Value = Balance.ToString();
                        ////dataGridView1.Rows.Remove(dataGridView1.CurrentRow);

                        if (Balance <= 0)
                            dgv.Rows[RCountGrid].DefaultCellStyle.BackColor = System.Drawing.Color.LightGreen;
                        else
                            dgv.Rows[RCountGrid].DefaultCellStyle.BackColor = System.Drawing.Color.Yellow;

                        RCountGrid++;
                    }

                }
                //PopulateChartFromDataGridView();
                PopulateChartFromDataGridView1(dgv,chart);
            }
        }

        //private void PopulateChartFromDataGridView()
        //{
        //    // Create a new chart area
        //    ChartArea chartArea = new ChartArea("cCategory");
        //    cCategory.ChartAreas.Add(chartArea);

        //    // Create a new series for the pie chart
        //    Series series = new Series("PieChart");
        //    series.ChartType = SeriesChartType.Pie;

        //    // Loop through DataGridView rows and add points to the chart
        //    foreach (DataGridViewRow row in dataGridView1.Rows)
        //    {
        //        // Make sure the row is not empty
        //        if (row.Cells[1].Value != null)
        //        {
        //            string category = row.Cells[1].Value.ToString();
        //            double value = Convert.ToDouble(row.Cells[2].Value);

        //            // Add the data point to the series
        //            series.Points.AddXY(category, value);
        //        }
        //    }

        //    // Add the series to the chart
        //    cCategory.Series.Add(series);

        //    // Customize the appearance (optional)
        //    series["PieLabelStyle"] = "Outside";
        //    series["DoughnutRadius"] = "50"; // Optional for doughnut-style pie chart
        //    cCategory.Titles.Add("Pie Chart from DataGridView");
        //    cCategory.Visible = true;
        //}

        double SumValue = 0;
        private void Get_Requiered_Sum(int LocationId)
        {
            SumValue = 0;
            DataSet ds = new DataSet();
            objBL.Query = "select sum(F.RequiredQuantity) from forecast F inner join ProductMaster P on P.ProductId=F.ProductId where F.LocationId="+ LocationId + " and P.Category='" + Category + "' and F.CancelTag=0 and P.CancelTag=0 and F.ForecastMonth='" + cmbMonth.Text + "' and F.ForecastYear=" + cmbYear.Text + " ";
            //objBL.Query = "select sum(DE.ProductionDone) from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId where PM.Category='" + Category + "'";
            ds = objBL.ReturnDataSet();
            if (ds.Tables[0].Rows.Count > 0)
            {
                SumValue = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][0]))); ;
            }
        }

        private void Get_Production_Sum(int LocationId)
        {
            SumValue = 0;
            DataSet ds = new DataSet();
            // WClasue += " and Month(FromDate) between 04 and " + objRL.GetMonthNumber(cmbMonth.Text) + " and Year(FromDate)=" + cmbYear.Text + "";
            objBL.Query = "select sum(DE.Production) from DataEntry DE inner join ProductMaster P on P.ProductId=DE.ProductId where DE.LocationId=" + LocationId + " and P.Category='" + Category + "' and DE.CancelTag=0 and P.CancelTag=0 and Month(DE.ProductionDate)=" + objRL.GetMonthNumber(cmbMonth.Text) + " and Year(DE.ProductionDate)=" + cmbYear.Text + "";
            //objBL.Query = "select sum(DE.ProductionDone) from DataEntry DE inner join ProductMaster PM on PM.ProductId=DE.ProductId where PM.Category='" + Category + "'";
            ds = objBL.ReturnDataSet();
            if (ds.Tables[0].Rows.Count > 0)
            {
                SumValue = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0][0]))); ;
            }
        }

        string Category = string.Empty;

        int PendingCount = 0, CompleteCount = 0, RemarkCount = 0;



        System.Windows.Forms.Timer tmr = null;
        private void StartTimer()
        {
            tmr = new System.Windows.Forms.Timer();
            tmr.Interval = 1000;
            tmr.Tick += new EventHandler(tmr_Tick);
            tmr.Enabled = true;
        }

        void tmr_Tick(object sender, EventArgs e)
        {
            lblDateTimeRunning.Text = DateTime.Now.ToString("dddd , dd/MMM/yyyy, hh:mm:ss tt");
        }

        private void btnSettings_Click(object sender, EventArgs e)
        {
            MenuSettings objForm = new MenuSettings();
            objForm.Show();
        }

       

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
         
        private void locationMasterToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LocationMaster objForm = new LocationMaster();
            objForm.ShowDialog(this);
        }

        private void departmentMasterToolStripMenuItem_Click(object sender, EventArgs e)
        {
            DepartmentMaster objForm = new DepartmentMaster();
            objForm.ShowDialog(this);
        }

        private void designationMasterToolStripMenuItem_Click(object sender, EventArgs e)
        {
            DesignationMaster objForm = new DesignationMaster();
            objForm.ShowDialog(this);
        }


        string MenuNameUR = string.Empty;

        private void MenuTrueFalse(ToolStripMenuItem tsI, System.Windows.Forms.Button bt)
        {
            if (objPC.ViewFlag == 1)
            {
                bt.Enabled = false;
                bt.Visible = false;
                tsI.Visible = true;
            }
            else
            {
                bt.Enabled = false;
                bt.Visible = false;
                tsI.Visible = false;
            }
        }

        public void Get_UserRightsDetails()
        {
            objPC.UserRightsId = 0;
            objPC.MenuName = string.Empty;
            objPC.AddFlag = 0;
            objPC.EditFlagUR = 0;
            objPC.DeleteFlagUR = 0;
            objPC.ViewFlag = 0;
            objPC.ApprovalFlag = 0;




            // mtsMaster.Visible = false;

            //mtsEmployeeProfile.Visible = false;

            //Attendance
            //mtsAttendance.Visible = false;
            //mtsOutdoorPunch.Visible = false;



            //Exit
            mtsExit.Visible = true;

            mtsFinancialMaster.Visible = false;
            mtsLocationMaster.Visible = false;
            //mtsDepartmentMaster.Visible=false;
            mtsMachineMaster.Visible = false;
            mtsProductMaster.Visible = false;
            mtsCategoryMaster.Visible = false;
            mtsShiftSchedule.Visible = false;

            //Menu Strip Line
            mtsImportForecast.Visible = false;
            mtsForecast.Visible = false;
            mtsImportPlanning.Visible = false;
            mtsPlanning.Visible = false;
            mtsDataEntry.Visible = false;
            mtsMaintenanceRemark.Visible = false;
            mtsChangePassword.Visible = false;

            //Reports
            //mtsOEEReport.Enabled = true;
            
            mtsOperationSummaryReport.Visible = false;

            //Settings
            mtsUpdatePlanning.Visible = false;
            mtsUsers.Visible = false;
            mtsUserRights.Visible = false;
            mtsUserWiseLocation.Visible = false;
            mtsAddMenu.Visible = false;
             
            DataSet ds = new DataSet();
            //objBL.Query = "select UserRightsId,UserId,MenuName,AddFlag,EditFlag,DeleteFlag,ViewFlag,ApprovalFlag from userrights where CancelTag=0 and UserId=" + BusinessLayer.UserId_Static + "";
            objBL.Query = "select UR.UserRightsId,UR.UserId,E.EmployeeName,UR.MenuId,MM.MenuName,MM.HeaderName,UR.AddFlag,UR.EditFlag,UR.DeleteFlag,UR.ViewFlag,UR.ApprovalFlag from UserRights UR inner join Users E on E.UserId=UR.UserId inner join menumaster MM on MM.MenuId=UR.MenuId where UR.CancelTag=0 and E.CancelTag=0 and MM.CancelTag=0 and UR.UserId=" + BusinessLayer.UserId_Static + " ";

            ds = objBL.ReturnDataSet();

            if (ds.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    objPC.MenuName = string.Empty;
                    objPC.AddFlag = 0;
                    objPC.EditFlagUR = 0;
                    objPC.DeleteFlagUR = 0;
                    objPC.ViewFlag = 0;
                    objPC.ApprovalFlag = 0;

                    objPC.UserRightsId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["UserRightsId"])));
                    objPC.MenuName = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["MenuName"]));
                    objPC.AddFlag = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["AddFlag"])));
                    objPC.EditFlagUR = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["EditFlag"])));
                    objPC.DeleteFlagUR = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["DeleteFlag"])));
                    objPC.ViewFlag = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["ViewFlag"])));
                    objPC.ApprovalFlag = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["ApprovalFlag"])));

                    //MenuName HeaderName
                    //FinancialMaster Financial Master
                    //CompanyProfile  Company Profile
                    //ProductMaster Product Master
                    //LocationMaster  Location Master
                    //DepartmentMaster Department Master
                    //DesignationMaster   Designation Master
                    //MachineMaster Machine Master
                    //CategoryMaster  Category Master
                    //ShiftSchedule Shift Schedule
                    //ImporForecast   Impor Forecast
                    //Forecast Forecast
                    //Import Planning Import Planning
                    //Planning Planning
                    //DataEntry Data Entry
                    //MaintenanceRemark   Maintenance Remark
                    //ChangePassword Change Password
                    //OEEReport   OEE Report
                    //DaywiseReport Daywise Report
                    //DailyReportDatewise Daily Report Datewise
                    //MonthwiseReport Monthwise Report
                    //Machinewise Machinewise
                    //ProductPerformance Product Performance
                    //ProductData Product Data
                    //CategoryWiseProductionReport Category wise Production Report
                    //UpdatePlanning  Update Planning
                    //Users Users
                    //UserRights User Rights
                    //ChangePassword  Change Password
                    //AddMenu Add Menu

                    //Master
                    if (objPC.MenuName == "FinancialMaster")
                        MenuTrueFalse(mtsFinancialMaster, btnVisibleFalse);
                    else if (objPC.MenuName == "LocationMaster")
                        MenuTrueFalse(mtsLocationMaster, btnVisibleFalse);
                    //else if (objPC.MenuName == "DepartmentMaster")
                    //    MenuTrueFalse(mtsDepartmentMaster, btnVisibleFalse);
                    else if (objPC.MenuName == "MachineMaster")
                        MenuTrueFalse(mtsMachineMaster, btnVisibleFalse);
                    else if (objPC.MenuName == "ProductMaster")
                        MenuTrueFalse(mtsProductMaster, btnVisibleFalse);
                    else if (objPC.MenuName == "CategoryMaster")
                        MenuTrueFalse(mtsCategoryMaster, btnVisibleFalse);
                    else if (objPC.MenuName == "ShiftSchedule")
                        MenuTrueFalse(mtsShiftSchedule, btnVisibleFalse);


                    //Menu Strip Line

                    else if (objPC.MenuName == "ImportForecast")
                        MenuTrueFalse(mtsImportForecast, btnVisibleFalse);
                    else if (objPC.MenuName == "Forecast")
                        MenuTrueFalse(mtsForecast, btnVisibleFalse);
                    else if (objPC.MenuName == "ImportPlanning")
                        MenuTrueFalse(mtsImportPlanning, btnVisibleFalse);
                    else if (objPC.MenuName == "Planning")
                        MenuTrueFalse(mtsPlanning, btnVisibleFalse);
                    else if (objPC.MenuName == "DataEntry")
                        MenuTrueFalse(mtsDataEntry, btnVisibleFalse);
                    else if (objPC.MenuName == "MaintenanceRemark")
                        MenuTrueFalse(mtsMaintenanceRemark, btnVisibleFalse);
                    else if (objPC.MenuName == "ChangePassword")
                        MenuTrueFalse(mtsChangePassword, btnVisibleFalse);

                    //Reports
                    else if (objPC.MenuName == "DatewiseReport")
                        MenuTrueFalse(mtsDatewiseReport, btnVisibleFalse);
                    else if (objPC.MenuName == "DaywiseReport")
                        MenuTrueFalse(mtsDaywiseReport, btnVisibleFalse);
                    else if (objPC.MenuName == "OperationSummaryReport")
                        MenuTrueFalse(mtsOperationSummaryReport, btnVisibleFalse);

                    else if (objPC.MenuName == "MonthwiseReport")
                        MenuTrueFalse(mtsMonthwiseReport, btnVisibleFalse);
                    else if (objPC.MenuName == "MachineWiseReport")
                        MenuTrueFalse(mtsMachineWiseReport, btnVisibleFalse);
                    else if (objPC.MenuName == "ProductPerformanceReport")
                        MenuTrueFalse(mtsProductPerformanceReport, btnVisibleFalse);
                    else if (objPC.MenuName == "ProductData")
                        MenuTrueFalse(mtsProductData, btnVisibleFalse);
                    else if (objPC.MenuName == "CategoryWiseProductionReport")
                        MenuTrueFalse(mtsCategoryWiseProductionReport, btnVisibleFalse);
                    else if (objPC.MenuName == "ProductPerformance")
                        MenuTrueFalse(mtsProductPerformanceReport, btnVisibleFalse);

                        

                    //Settings
                    else if (objPC.MenuName == "UpdatePlanning")
                        MenuTrueFalse(mtsUpdatePlanning, btnVisibleFalse);
                    else if (objPC.MenuName == "Users")
                        MenuTrueFalse(mtsUsers, btnVisibleFalse);
                    else if (objPC.MenuName == "UserRights")
                        MenuTrueFalse(mtsUserRights, btnVisibleFalse);
                    else if (objPC.MenuName == "UserWiseLocation")
                        MenuTrueFalse(mtsUserWiseLocation, btnVisibleFalse);
                    else if (objPC.MenuName == "AddMenu")
                        MenuTrueFalse(mtsAddMenu, btnVisibleFalse);
                    else
                    {

                    }
                }
            }
        }
        private void holidayMasterToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HolidayMaster objForm = new HolidayMaster();
            objForm.ShowDialog(this);
        }
        private void userRightsToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            UserRights objForm = new UserRights();
            objForm.ShowDialog(this);
        }
        private void mtsDataBackup_Click(object sender, EventArgs e)
        {
            DataBackup objForm = new DataBackup();
            objForm.ShowDialog(this);
        }
        private void mtsChangePassword_Click(object sender, EventArgs e)
        {
            ChangePassword objForm = new ChangePassword();
            objForm.ShowDialog(this);
        }
        private void mtsUpdateWizard_Click(object sender, EventArgs e)
        {
            UpdateWizard objForm = new UpdateWizard();
            objForm.ShowDialog(this);
        }
        private void financialMasterToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FinancialYearMaster objForm = new FinancialYearMaster();
            objForm.ShowDialog(this);
        }
        private void productMasterToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ProductMaster objForm = new ProductMaster();
            objForm.ShowDialog(this);
        }
        private void mtsAttendanceMainMenu_Click(object sender, EventArgs e)
        {
            DataEntry objForm = new DataEntry();
            objForm.ShowDialog(this);
        }
        private void importWeeklyPlanningToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ImportPlanning objForm = new ImportPlanning();
            objForm.ShowDialog(this);
        }
        private void dailyReportToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }
        private void imporForecastToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ImportForecast objForm = new ImportForecast();
            objForm.ShowDialog(this);
        }
        private void forecastToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Forecast objForm = new Forecast();
            objForm.ShowDialog(this);
        }
        private void lbLogout_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            Application.Exit();
        }
        private void llRefresh_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (cmbMonth.SelectedIndex > -1 && cmbYear.SelectedIndex > -1)
            {
                Fill_Dashboard(dgvUnit48, cUnit48, 1);
                Fill_Dashboard(dgvUnit49, cUnit49, 2);
                Fill_Dashboard(dgvUnitB133, cUnitB133, 3);
                Fill_Dashboard(dgvPanchgani, cUnitPanchgani, 4);
            }
            else
            {
                objRL.ShowMessage(17, 4);
                return;
            }
        }

        int RowCount_Grid = 0, CurrentRowIndex = 0;
        private void categoryWiseProductionReportToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ViewProduction objForm = new ViewProduction();
            objForm.ShowDialog(this);
        }
        private void maintenanceRemarkToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Maintenance objForm = new Maintenance();
            objForm.ShowDialog(this);
        }
        private void updatePlanningToolStripMenuItem_Click(object sender, EventArgs e)
        {
            UpdateBalance();
        }
        private void UpdateBalance()
        {
            int WeeklyPlanningId = 0, Result =0;
            double ProductionDone = 0, BalanceQty = 0;
            string Status = string.Empty, Remarks = string.Empty;

            DataSet ds = new DataSet();
            objBL.Query = "SELECT * FROM dataentry where CancelTag=0 order by WeeklyPlanningId asc";
            ds = objBL.ReturnDataSet();
            if (ds.Tables[0].Rows.Count >0)
            {
                for(int i = 0; i < ds.Tables[0].Rows.Count;i++)
                {
                    WeeklyPlanningId = 0; Result = 0; ProductionDone = 0; BalanceQty = 0;
                    Status = string.Empty; Remarks = string.Empty;

                    WeeklyPlanningId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["WeeklyPlanningId"])));
                    Status = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["Status"]));
                    Remarks = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["Remarks"]));

                    DataSet dsSumDouble =new DataSet();
                    objBL.Query = "SELECT WeeklyPlanningId, COUNT(*) AS count FROM dataentry where WeeklyPlanningId="+ WeeklyPlanningId + " and CancelTag=0 GROUP BY WeeklyPlanningId HAVING COUNT(*) > 1 ";
                    dsSumDouble = objBL.ReturnDataSet();

                    if (dsSumDouble.Tables[0].Rows.Count > 0)
                    {
                        DataSet dsSum = new DataSet();
                        objBL.Query = "SELECT sum(Production) from dataentry where WeeklyPlanningId=" + WeeklyPlanningId + " and CancelTag=0";
                        dsSum = objBL.ReturnDataSet();

                        if (dsSum.Tables[0].Rows.Count > 0)
                        {
                            ProductionDone = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dsSum.Tables[0].Rows[0][0])));
                        }
                    }
                    else
                    {
                        ProductionDone = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["Production"])));
                        BalanceQty = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["BalanceQty"])));
                    }
                    
                    objBL.Query = "update weeklyplanning set ProductionDone='" + ProductionDone + "',BalanceQty=RequiredQuantity-'" + ProductionDone + "',Status='" + Status + "',Remarks='" + Remarks + "' where WeeklyPlanningId=" + WeeklyPlanningId + "";
                    Result = objBL.Function_ExecuteNonQuery();
                }
                MessageBox.Show("Balance Updated Successfully");
            }
        }
        private void machineWiseReportToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ReportRDLC objForm=new ReportRDLC();
            objForm.ShowDialog(this);
        }
        private void shiftScheduleToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ShiftScheduleMaster objForm=new ShiftScheduleMaster();
            objForm.ShowDialog(this);
        }
        private void importShiftScheduleToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ImportShiftSchedule objForm = new ImportShiftSchedule();
            objForm.ShowDialog(this);
        }
        private void usersToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Users objForm = new Users();
            objForm.ShowDialog(this);
        }
        private void userRightsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            UserRights objForm = new UserRights();
            objForm.ShowDialog(this);
        }
        private void changePasswordToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ChangePassword objForm = new ChangePassword();
            objForm.ShowDialog(this);
        }
        private void userRightsNewToolStripMenuItem_Click(object sender, EventArgs e)
        {
            UserWiseLocation objForm = new UserWiseLocation();
            objForm.ShowDialog(this);
        }
        private void operationSummaryReportToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OpertationSummaryReport objForm = new OpertationSummaryReport();
            objForm.ShowDialog(this);
        }
        private void dgvUnit49_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (cmbMonth.SelectedIndex > -1 && cmbYear.SelectedIndex > -1)
            {
                try
                {
                    RowCount_Grid = dgvUnit49.Rows.Count;
                    CurrentRowIndex = dgvUnit49.CurrentRow.Index;

                    if (RowCount_Grid >= 0 && CurrentRowIndex >= 0)
                    {
                        string Category = objRL.CheckNullString(Convert.ToString(dgvUnit49.Rows[e.RowIndex].Cells[1].Value));
                        ViewProduction objForm = new ViewProduction(Category, cmbMonth.Text, cmbYear.Text);
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
        }
        private void dgvUnitB133_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (cmbMonth.SelectedIndex > -1 && cmbYear.SelectedIndex > -1)
            {
                try
                {
                    RowCount_Grid = dgvUnitB133.Rows.Count;
                    CurrentRowIndex = dgvUnitB133.CurrentRow.Index;

                    if (RowCount_Grid >= 0 && CurrentRowIndex >= 0)
                    {
                        string Category = objRL.CheckNullString(Convert.ToString(dgvUnitB133.Rows[e.RowIndex].Cells[1].Value));
                        ViewProduction objForm = new ViewProduction(Category, cmbMonth.Text, cmbYear.Text);
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
        }
        private void machineMasterToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MachineMaster objForm = new MachineMaster();
            objForm.ShowDialog(this);
        }

        private void mtsDatewiseReport_Click(object sender, EventArgs e)
        {
            DatewiseReport objForm = new DatewiseReport();
            objForm.ShowDialog(this);
        }

        private void mtsDaywiseReport_Click(object sender, EventArgs e)
        {
            DaywiseReport objForm = new DaywiseReport();
            objForm.ShowDialog(this);
        }

        private void monthwiseReportToolStripMenuItem_Click(object sender, EventArgs e)
        {
            DatewiseReport objForm = new DatewiseReport();
            objForm.ShowDialog(this);
        }

        private void machinewiseToolStripMenuItem_Click(object sender, EventArgs e)
        {
            DatewiseReport objForm = new DatewiseReport();
            objForm.ShowDialog(this);
        }

        private void productPerformanceToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ProductPerformanceReport objForm = new ProductPerformanceReport();
            objForm.ShowDialog(this);
        }

        private void productDataToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void daywiseReportToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void dailyReportDatewiseToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void categoryMasterToolStripMenuItem_Click(object sender, EventArgs e)
        {
            CategoryMaster objForm = new CategoryMaster();
            objForm.ShowDialog(this);
        }
        private void dgvPanchgani_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (cmbMonth.SelectedIndex > -1 && cmbYear.SelectedIndex > -1)
            {
                try
                {
                    RowCount_Grid = dgvPanchgani.Rows.Count;
                    CurrentRowIndex = dgvPanchgani.CurrentRow.Index;

                    if (RowCount_Grid >= 0 && CurrentRowIndex >= 0)
                    {
                        string Category = objRL.CheckNullString(Convert.ToString(dgvPanchgani.Rows[e.RowIndex].Cells[1].Value));
                        ViewProduction objForm = new ViewProduction(Category, cmbMonth.Text, cmbYear.Text);
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
        }
        private void dgvUnit48_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (cmbMonth.SelectedIndex > -1 && cmbYear.SelectedIndex > -1)
            {
                try
                {
                    RowCount_Grid = dgvUnit48.Rows.Count;
                    CurrentRowIndex = dgvUnit48.CurrentRow.Index;

                    if (RowCount_Grid >= 0 && CurrentRowIndex >= 0)
                    {
                        string Category = objRL.CheckNullString(Convert.ToString(dgvUnit48.Rows[e.RowIndex].Cells[1].Value));
                        ViewProduction objForm = new ViewProduction(Category, cmbMonth.Text, cmbYear.Text);
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
        }
        private void employeeProfielToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Planning objForm = new Planning();
            objForm.ShowDialog(this);
        }
    }
}
