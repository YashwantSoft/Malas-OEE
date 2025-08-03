namespace SPApplication.Reports
{
    partial class DaywiseReport
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lblHeader = new System.Windows.Forms.Label();
            this.dtpToDate = new System.Windows.Forms.DateTimePicker();
            this.cbToday = new System.Windows.Forms.CheckBox();
            this.dtpFromDate = new System.Windows.Forms.DateTimePicker();
            this.lblToDate = new System.Windows.Forms.Label();
            this.lblFromDate = new System.Windows.Forms.Label();
            this.lblMonth = new System.Windows.Forms.Label();
            this.cmbYear = new System.Windows.Forms.ComboBox();
            this.cmbMonth = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.lblTotalCount = new System.Windows.Forms.Label();
            this.pMonth = new System.Windows.Forms.Panel();
            this.lblYear = new System.Windows.Forms.Label();
            this.pDate = new System.Windows.Forms.Panel();
            this.cmbReportType = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.btnExit = new System.Windows.Forms.Button();
            this.btnDelete = new System.Windows.Forms.Button();
            this.btnSave = new System.Windows.Forms.Button();
            this.btnClear = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.label3 = new System.Windows.Forms.Label();
            this.cmbLocation = new System.Windows.Forms.ComboBox();
            this.clmMaintenanceLink = new System.Windows.Forms.DataGridViewLinkColumn();
            this.clmCostLink = new System.Windows.Forms.DataGridViewLinkColumn();
            this.clmTotalHoursLink = new System.Windows.Forms.DataGridViewLinkColumn();
            this.clmDataEntryId = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmProductionDate = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmTotalMachineUsed = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmTotalNosOfProducts = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmTotalEmployees = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmTotalOvertimeHrs = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmShiftHoursForPlant = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmShiftHours = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmWorkingHours = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmShiftStartupShiftEndDowntime = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmTotalBreakDown = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmProductionHours = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmProductionHoursAvailibity = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmTotalProductionInBoxes = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmTotalProductionInKg = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmReject = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmFinalProduction = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmCapacity = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmFillingCapacityUtilization = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmActualCapacity = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmActualCapacityUtilization = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmActualCapacityLessCIPHours = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmActualCapacityUtilizationT = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pMonth.SuspendLayout();
            this.pDate.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // lblHeader
            // 
            this.lblHeader.BackColor = System.Drawing.Color.Blue;
            this.lblHeader.Font = new System.Drawing.Font("Calibri", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblHeader.ForeColor = System.Drawing.Color.White;
            this.lblHeader.Location = new System.Drawing.Point(-1, 0);
            this.lblHeader.Name = "lblHeader";
            this.lblHeader.Size = new System.Drawing.Size(1299, 30);
            this.lblHeader.TabIndex = 11188;
            this.lblHeader.Text = "Daywise Report";
            this.lblHeader.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // dtpToDate
            // 
            this.dtpToDate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpToDate.Location = new System.Drawing.Point(270, 5);
            this.dtpToDate.Name = "dtpToDate";
            this.dtpToDate.Size = new System.Drawing.Size(100, 23);
            this.dtpToDate.TabIndex = 11689;
            // 
            // cbToday
            // 
            this.cbToday.AutoSize = true;
            this.cbToday.Location = new System.Drawing.Point(385, 7);
            this.cbToday.Name = "cbToday";
            this.cbToday.Size = new System.Drawing.Size(58, 19);
            this.cbToday.TabIndex = 11690;
            this.cbToday.Text = "Today";
            this.cbToday.UseVisualStyleBackColor = true;
            // 
            // dtpFromDate
            // 
            this.dtpFromDate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpFromDate.Location = new System.Drawing.Point(111, 5);
            this.dtpFromDate.Name = "dtpFromDate";
            this.dtpFromDate.Size = new System.Drawing.Size(100, 23);
            this.dtpFromDate.TabIndex = 11688;
            // 
            // lblToDate
            // 
            this.lblToDate.AutoSize = true;
            this.lblToDate.Location = new System.Drawing.Point(221, 9);
            this.lblToDate.Name = "lblToDate";
            this.lblToDate.Size = new System.Drawing.Size(47, 15);
            this.lblToDate.TabIndex = 11692;
            this.lblToDate.Text = "To Date";
            // 
            // lblFromDate
            // 
            this.lblFromDate.AutoSize = true;
            this.lblFromDate.Location = new System.Drawing.Point(46, 9);
            this.lblFromDate.Name = "lblFromDate";
            this.lblFromDate.Size = new System.Drawing.Size(63, 15);
            this.lblFromDate.TabIndex = 11691;
            this.lblFromDate.Text = "From Date";
            // 
            // lblMonth
            // 
            this.lblMonth.AutoSize = true;
            this.lblMonth.Location = new System.Drawing.Point(66, 8);
            this.lblMonth.Name = "lblMonth";
            this.lblMonth.Size = new System.Drawing.Size(43, 15);
            this.lblMonth.TabIndex = 11684;
            this.lblMonth.Text = "Month";
            // 
            // cmbYear
            // 
            this.cmbYear.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbYear.FormattingEnabled = true;
            this.cmbYear.Items.AddRange(new object[] {
            "2024",
            "2025",
            "2026",
            "2027",
            "2028",
            "2029",
            "2030"});
            this.cmbYear.Location = new System.Drawing.Point(270, 4);
            this.cmbYear.Name = "cmbYear";
            this.cmbYear.Size = new System.Drawing.Size(100, 23);
            this.cmbYear.TabIndex = 11687;
            // 
            // cmbMonth
            // 
            this.cmbMonth.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbMonth.FormattingEnabled = true;
            this.cmbMonth.Items.AddRange(new object[] {
            "January",
            "February",
            "March",
            "April",
            "May",
            "June",
            "July",
            "August",
            "September",
            "October",
            "November",
            "December"});
            this.cmbMonth.Location = new System.Drawing.Point(111, 4);
            this.cmbMonth.Name = "cmbMonth";
            this.cmbMonth.Size = new System.Drawing.Size(100, 23);
            this.cmbMonth.TabIndex = 11685;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(1113, 41);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(71, 15);
            this.label1.TabIndex = 11770;
            this.label1.Text = "Report Date";
            this.label1.Visible = false;
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dateTimePicker1.Location = new System.Drawing.Point(1186, 37);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(100, 23);
            this.dateTimePicker1.TabIndex = 11769;
            this.dateTimePicker1.Visible = false;
            // 
            // lblTotalCount
            // 
            this.lblTotalCount.AutoSize = true;
            this.lblTotalCount.Location = new System.Drawing.Point(12, 91);
            this.lblTotalCount.Name = "lblTotalCount";
            this.lblTotalCount.Size = new System.Drawing.Size(73, 15);
            this.lblTotalCount.TabIndex = 11768;
            this.lblTotalCount.Text = "Total Count-";
            // 
            // pMonth
            // 
            this.pMonth.Controls.Add(this.cmbYear);
            this.pMonth.Controls.Add(this.lblMonth);
            this.pMonth.Controls.Add(this.cmbMonth);
            this.pMonth.Controls.Add(this.lblYear);
            this.pMonth.Location = new System.Drawing.Point(492, 33);
            this.pMonth.Name = "pMonth";
            this.pMonth.Size = new System.Drawing.Size(495, 31);
            this.pMonth.TabIndex = 11764;
            this.pMonth.Visible = false;
            // 
            // lblYear
            // 
            this.lblYear.AutoSize = true;
            this.lblYear.Location = new System.Drawing.Point(238, 8);
            this.lblYear.Name = "lblYear";
            this.lblYear.Size = new System.Drawing.Size(30, 15);
            this.lblYear.TabIndex = 11686;
            this.lblYear.Text = "Year";
            // 
            // pDate
            // 
            this.pDate.Controls.Add(this.dtpToDate);
            this.pDate.Controls.Add(this.cbToday);
            this.pDate.Controls.Add(this.dtpFromDate);
            this.pDate.Controls.Add(this.lblToDate);
            this.pDate.Controls.Add(this.lblFromDate);
            this.pDate.Location = new System.Drawing.Point(492, 32);
            this.pDate.Name = "pDate";
            this.pDate.Size = new System.Drawing.Size(495, 33);
            this.pDate.TabIndex = 11763;
            this.pDate.Visible = false;
            // 
            // cmbReportType
            // 
            this.cmbReportType.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbReportType.FormattingEnabled = true;
            this.cmbReportType.Items.AddRange(new object[] {
            "Date Wise Report",
            "Month Wise Report"});
            this.cmbReportType.Location = new System.Drawing.Point(163, 59);
            this.cmbReportType.Name = "cmbReportType";
            this.cmbReportType.Size = new System.Drawing.Size(259, 23);
            this.cmbReportType.TabIndex = 11762;
            this.cmbReportType.SelectionChangeCommitted += new System.EventHandler(this.cmbReportType_SelectionChangeCommitted);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(91, 63);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(70, 15);
            this.label4.TabIndex = 11761;
            this.label4.Text = "Report Type";
            // 
            // btnExit
            // 
            this.btnExit.BackColor = System.Drawing.Color.DarkSlateBlue;
            this.btnExit.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnExit.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnExit.ForeColor = System.Drawing.Color.White;
            this.btnExit.Location = new System.Drawing.Point(651, 73);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(75, 30);
            this.btnExit.TabIndex = 11760;
            this.btnExit.Text = "Exit";
            this.btnExit.UseVisualStyleBackColor = false;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // btnDelete
            // 
            this.btnDelete.BackColor = System.Drawing.Color.DarkSlateBlue;
            this.btnDelete.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnDelete.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDelete.ForeColor = System.Drawing.Color.White;
            this.btnDelete.Location = new System.Drawing.Point(730, 73);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(75, 30);
            this.btnDelete.TabIndex = 11759;
            this.btnDelete.Text = "Delete";
            this.btnDelete.UseVisualStyleBackColor = false;
            this.btnDelete.Visible = false;
            // 
            // btnSave
            // 
            this.btnSave.BackColor = System.Drawing.Color.DarkSlateBlue;
            this.btnSave.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSave.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSave.ForeColor = System.Drawing.Color.White;
            this.btnSave.Location = new System.Drawing.Point(493, 73);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(75, 30);
            this.btnSave.TabIndex = 11757;
            this.btnSave.Text = "Save";
            this.btnSave.UseVisualStyleBackColor = false;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // btnClear
            // 
            this.btnClear.BackColor = System.Drawing.Color.DarkSlateBlue;
            this.btnClear.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnClear.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnClear.ForeColor = System.Drawing.Color.White;
            this.btnClear.Location = new System.Drawing.Point(572, 73);
            this.btnClear.Name = "btnClear";
            this.btnClear.Size = new System.Drawing.Size(75, 30);
            this.btnClear.TabIndex = 11758;
            this.btnClear.Text = "Clear";
            this.btnClear.UseVisualStyleBackColor = false;
            this.btnClear.Click += new System.EventHandler(this.btnClear_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.AllowUserToOrderColumns = true;
            this.dataGridView1.AllowUserToResizeColumns = false;
            this.dataGridView1.AllowUserToResizeRows = false;
            this.dataGridView1.BackgroundColor = System.Drawing.Color.White;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.clmMaintenanceLink,
            this.clmCostLink,
            this.clmTotalHoursLink,
            this.clmDataEntryId,
            this.clmProductionDate,
            this.clmTotalMachineUsed,
            this.clmTotalNosOfProducts,
            this.clmTotalEmployees,
            this.clmTotalOvertimeHrs,
            this.clmShiftHoursForPlant,
            this.clmShiftHours,
            this.clmWorkingHours,
            this.clmShiftStartupShiftEndDowntime,
            this.clmTotalBreakDown,
            this.clmProductionHours,
            this.clmProductionHoursAvailibity,
            this.clmTotalProductionInBoxes,
            this.clmTotalProductionInKg,
            this.clmReject,
            this.clmFinalProduction,
            this.clmCapacity,
            this.clmFillingCapacityUtilization,
            this.clmActualCapacity,
            this.clmActualCapacityUtilization,
            this.clmActualCapacityLessCIPHours,
            this.clmActualCapacityUtilizationT});
            this.dataGridView1.Location = new System.Drawing.Point(9, 108);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.RowHeadersVisible = false;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(1280, 586);
            this.dataGridView1.TabIndex = 11778;
            this.dataGridView1.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellClick);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(108, 38);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(53, 15);
            this.label3.TabIndex = 11780;
            this.label3.Text = "Location";
            // 
            // cmbLocation
            // 
            this.cmbLocation.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbLocation.FormattingEnabled = true;
            this.cmbLocation.Location = new System.Drawing.Point(163, 34);
            this.cmbLocation.Name = "cmbLocation";
            this.cmbLocation.Size = new System.Drawing.Size(259, 23);
            this.cmbLocation.TabIndex = 11779;
            // 
            // clmMaintenanceLink
            // 
            this.clmMaintenanceLink.HeaderText = "Break Down";
            this.clmMaintenanceLink.Name = "clmMaintenanceLink";
            this.clmMaintenanceLink.ReadOnly = true;
            this.clmMaintenanceLink.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.clmMaintenanceLink.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.clmMaintenanceLink.Width = 80;
            // 
            // clmCostLink
            // 
            this.clmCostLink.HeaderText = "Cost";
            this.clmCostLink.Name = "clmCostLink";
            this.clmCostLink.ReadOnly = true;
            this.clmCostLink.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.clmCostLink.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.clmCostLink.Visible = false;
            this.clmCostLink.Width = 30;
            // 
            // clmTotalHoursLink
            // 
            this.clmTotalHoursLink.HeaderText = "Hours";
            this.clmTotalHoursLink.Name = "clmTotalHoursLink";
            this.clmTotalHoursLink.ReadOnly = true;
            this.clmTotalHoursLink.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.clmTotalHoursLink.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.clmTotalHoursLink.Width = 60;
            // 
            // clmDataEntryId
            // 
            this.clmDataEntryId.HeaderText = "DataEntryId";
            this.clmDataEntryId.Name = "clmDataEntryId";
            this.clmDataEntryId.ReadOnly = true;
            this.clmDataEntryId.Visible = false;
            // 
            // clmProductionDate
            // 
            this.clmProductionDate.HeaderText = "Date";
            this.clmProductionDate.Name = "clmProductionDate";
            this.clmProductionDate.ReadOnly = true;
            this.clmProductionDate.Width = 80;
            // 
            // clmTotalMachineUsed
            // 
            this.clmTotalMachineUsed.HeaderText = "Total Machine Used";
            this.clmTotalMachineUsed.Name = "clmTotalMachineUsed";
            this.clmTotalMachineUsed.ReadOnly = true;
            this.clmTotalMachineUsed.Width = 50;
            // 
            // clmTotalNosOfProducts
            // 
            this.clmTotalNosOfProducts.HeaderText = "Total Nos of Products";
            this.clmTotalNosOfProducts.Name = "clmTotalNosOfProducts";
            this.clmTotalNosOfProducts.ReadOnly = true;
            this.clmTotalNosOfProducts.Width = 50;
            // 
            // clmTotalEmployees
            // 
            this.clmTotalEmployees.HeaderText = "Total Employees";
            this.clmTotalEmployees.Name = "clmTotalEmployees";
            this.clmTotalEmployees.ReadOnly = true;
            this.clmTotalEmployees.Width = 60;
            // 
            // clmTotalOvertimeHrs
            // 
            this.clmTotalOvertimeHrs.HeaderText = "Total Overtime Hrs.";
            this.clmTotalOvertimeHrs.Name = "clmTotalOvertimeHrs";
            this.clmTotalOvertimeHrs.ReadOnly = true;
            this.clmTotalOvertimeHrs.Width = 60;
            // 
            // clmShiftHoursForPlant
            // 
            this.clmShiftHoursForPlant.HeaderText = "Shift Hours for Plant";
            this.clmShiftHoursForPlant.Name = "clmShiftHoursForPlant";
            this.clmShiftHoursForPlant.ReadOnly = true;
            this.clmShiftHoursForPlant.Width = 60;
            // 
            // clmShiftHours
            // 
            this.clmShiftHours.HeaderText = "Shift Hours";
            this.clmShiftHours.Name = "clmShiftHours";
            this.clmShiftHours.ReadOnly = true;
            this.clmShiftHours.Width = 60;
            // 
            // clmWorkingHours
            // 
            this.clmWorkingHours.HeaderText = "Working Hours";
            this.clmWorkingHours.Name = "clmWorkingHours";
            this.clmWorkingHours.ReadOnly = true;
            this.clmWorkingHours.Width = 60;
            // 
            // clmShiftStartupShiftEndDowntime
            // 
            this.clmShiftStartupShiftEndDowntime.HeaderText = "Shift Startup & Shift End downtime";
            this.clmShiftStartupShiftEndDowntime.Name = "clmShiftStartupShiftEndDowntime";
            this.clmShiftStartupShiftEndDowntime.ReadOnly = true;
            this.clmShiftStartupShiftEndDowntime.Width = 60;
            // 
            // clmTotalBreakDown
            // 
            this.clmTotalBreakDown.HeaderText = "Total Break Down";
            this.clmTotalBreakDown.Name = "clmTotalBreakDown";
            this.clmTotalBreakDown.ReadOnly = true;
            this.clmTotalBreakDown.Width = 60;
            // 
            // clmProductionHours
            // 
            this.clmProductionHours.HeaderText = "Production Hours";
            this.clmProductionHours.Name = "clmProductionHours";
            this.clmProductionHours.ReadOnly = true;
            this.clmProductionHours.Width = 60;
            // 
            // clmProductionHoursAvailibity
            // 
            this.clmProductionHoursAvailibity.HeaderText = "Production Hours Availibity";
            this.clmProductionHoursAvailibity.Name = "clmProductionHoursAvailibity";
            this.clmProductionHoursAvailibity.ReadOnly = true;
            this.clmProductionHoursAvailibity.Width = 60;
            // 
            // clmTotalProductionInBoxes
            // 
            this.clmTotalProductionInBoxes.HeaderText = "Total Production In Boxes";
            this.clmTotalProductionInBoxes.Name = "clmTotalProductionInBoxes";
            this.clmTotalProductionInBoxes.ReadOnly = true;
            this.clmTotalProductionInBoxes.Width = 60;
            // 
            // clmTotalProductionInKg
            // 
            this.clmTotalProductionInKg.HeaderText = "Total Production in Kg.";
            this.clmTotalProductionInKg.Name = "clmTotalProductionInKg";
            this.clmTotalProductionInKg.ReadOnly = true;
            this.clmTotalProductionInKg.Width = 60;
            // 
            // clmReject
            // 
            this.clmReject.HeaderText = "Reject";
            this.clmReject.Name = "clmReject";
            this.clmReject.ReadOnly = true;
            this.clmReject.Width = 60;
            // 
            // clmFinalProduction
            // 
            this.clmFinalProduction.HeaderText = "Final Production";
            this.clmFinalProduction.Name = "clmFinalProduction";
            this.clmFinalProduction.ReadOnly = true;
            this.clmFinalProduction.Width = 60;
            // 
            // clmCapacity
            // 
            this.clmCapacity.HeaderText = "Capacity";
            this.clmCapacity.Name = "clmCapacity";
            this.clmCapacity.ReadOnly = true;
            this.clmCapacity.Width = 60;
            // 
            // clmFillingCapacityUtilization
            // 
            this.clmFillingCapacityUtilization.HeaderText = "Filling Capacity Utilization";
            this.clmFillingCapacityUtilization.Name = "clmFillingCapacityUtilization";
            this.clmFillingCapacityUtilization.ReadOnly = true;
            this.clmFillingCapacityUtilization.Width = 60;
            // 
            // clmActualCapacity
            // 
            this.clmActualCapacity.HeaderText = "Actual Capacity";
            this.clmActualCapacity.Name = "clmActualCapacity";
            this.clmActualCapacity.ReadOnly = true;
            this.clmActualCapacity.Visible = false;
            this.clmActualCapacity.Width = 60;
            // 
            // clmActualCapacityUtilization
            // 
            this.clmActualCapacityUtilization.HeaderText = "Actual Capacity Utilization";
            this.clmActualCapacityUtilization.Name = "clmActualCapacityUtilization";
            this.clmActualCapacityUtilization.ReadOnly = true;
            this.clmActualCapacityUtilization.Visible = false;
            this.clmActualCapacityUtilization.Width = 60;
            // 
            // clmActualCapacityLessCIPHours
            // 
            this.clmActualCapacityLessCIPHours.HeaderText = "Actual Capacity-Less CIP Hours";
            this.clmActualCapacityLessCIPHours.Name = "clmActualCapacityLessCIPHours";
            this.clmActualCapacityLessCIPHours.ReadOnly = true;
            this.clmActualCapacityLessCIPHours.Visible = false;
            this.clmActualCapacityLessCIPHours.Width = 60;
            // 
            // clmActualCapacityUtilizationT
            // 
            this.clmActualCapacityUtilizationT.HeaderText = "Actual Capacity Utilization";
            this.clmActualCapacityUtilizationT.Name = "clmActualCapacityUtilizationT";
            this.clmActualCapacityUtilizationT.ReadOnly = true;
            this.clmActualCapacityUtilizationT.Visible = false;
            this.clmActualCapacityUtilizationT.Width = 60;
            // 
            // DaywiseReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1298, 698);
            this.ControlBox = false;
            this.Controls.Add(this.label3);
            this.Controls.Add(this.cmbLocation);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dateTimePicker1);
            this.Controls.Add(this.lblTotalCount);
            this.Controls.Add(this.pMonth);
            this.Controls.Add(this.pDate);
            this.Controls.Add(this.cmbReportType);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.btnExit);
            this.Controls.Add(this.btnDelete);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.btnClear);
            this.Controls.Add(this.lblHeader);
            this.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "DaywiseReport";
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Load += new System.EventHandler(this.DaywiseReport_Load);
            this.pMonth.ResumeLayout(false);
            this.pMonth.PerformLayout();
            this.pDate.ResumeLayout(false);
            this.pDate.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblHeader;
        private System.Windows.Forms.DateTimePicker dtpToDate;
        private System.Windows.Forms.CheckBox cbToday;
        private System.Windows.Forms.DateTimePicker dtpFromDate;
        private System.Windows.Forms.Label lblToDate;
        private System.Windows.Forms.Label lblFromDate;
        private System.Windows.Forms.Label lblMonth;
        private System.Windows.Forms.ComboBox cmbYear;
        private System.Windows.Forms.ComboBox cmbMonth;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.Label lblTotalCount;
        private System.Windows.Forms.Panel pMonth;
        private System.Windows.Forms.Label lblYear;
        private System.Windows.Forms.Panel pDate;
        private System.Windows.Forms.ComboBox cmbReportType;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.Button btnDelete;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Button btnClear;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cmbLocation;
        private System.Windows.Forms.DataGridViewLinkColumn clmMaintenanceLink;
        private System.Windows.Forms.DataGridViewLinkColumn clmCostLink;
        private System.Windows.Forms.DataGridViewLinkColumn clmTotalHoursLink;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmDataEntryId;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmProductionDate;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmTotalMachineUsed;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmTotalNosOfProducts;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmTotalEmployees;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmTotalOvertimeHrs;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmShiftHoursForPlant;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmShiftHours;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmWorkingHours;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmShiftStartupShiftEndDowntime;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmTotalBreakDown;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmProductionHours;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmProductionHoursAvailibity;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmTotalProductionInBoxes;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmTotalProductionInKg;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmReject;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmFinalProduction;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmCapacity;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmFillingCapacityUtilization;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmActualCapacity;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmActualCapacityUtilization;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmActualCapacityLessCIPHours;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmActualCapacityUtilizationT;
    }
}