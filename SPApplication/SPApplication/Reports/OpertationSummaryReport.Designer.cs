namespace SPApplication.OEEApplication.Reports
{
    partial class OpertationSummaryReport
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
            this.pDate = new System.Windows.Forms.Panel();
            this.dtpToDate = new System.Windows.Forms.DateTimePicker();
            this.cbToday = new System.Windows.Forms.CheckBox();
            this.dtpFromDate = new System.Windows.Forms.DateTimePicker();
            this.lblToDate = new System.Windows.Forms.Label();
            this.lblFromDate = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.clmSrNo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmDate = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmUnit = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmMachineId = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmMachine = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmDownTimeHrs = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmQtyPrd = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmAttainableQtyTons = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmOperationHours = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmAttainedCapacitHours = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmAttainableCapacityHours = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmTotalDowntime = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.lblTotalCount = new System.Windows.Forms.Label();
            this.btnExit = new System.Windows.Forms.Button();
            this.btnDelete = new System.Windows.Forms.Button();
            this.btnClear = new System.Windows.Forms.Button();
            this.btnSave = new System.Windows.Forms.Button();
            this.lblMonth = new System.Windows.Forms.Label();
            this.cmbLocation = new System.Windows.Forms.ComboBox();
            this.dgvDowntime = new System.Windows.Forms.DataGridView();
            this.clmSrNo1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmDate1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmUnit1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmMachineId1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmMachine1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmDownTimeHrs1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmMaintenanceBreakdownMinutes = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmCIP = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmProductOrMachineSetting = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmRMPMNotAvailable = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmMealBreak = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmTotalDowntime1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.lblTotalCount1 = new System.Windows.Forms.Label();
            this.txtTotalDownTime = new System.Windows.Forms.TextBox();
            this.txtTotalMaintenanceBreakdown = new System.Windows.Forms.TextBox();
            this.txtTotalCIP = new System.Windows.Forms.TextBox();
            this.txtTotalProductOrMachineSettings = new System.Windows.Forms.TextBox();
            this.txtTotalRMPMNotAvailable = new System.Windows.Forms.TextBox();
            this.txtTotalMealBreak = new System.Windows.Forms.TextBox();
            this.txtTotalTotalDowntime = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.pDate.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDowntime)).BeginInit();
            this.SuspendLayout();
            // 
            // lblHeader
            // 
            this.lblHeader.BackColor = System.Drawing.Color.Blue;
            this.lblHeader.Font = new System.Drawing.Font("Calibri", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblHeader.ForeColor = System.Drawing.Color.White;
            this.lblHeader.Location = new System.Drawing.Point(1, 0);
            this.lblHeader.Name = "lblHeader";
            this.lblHeader.Size = new System.Drawing.Size(1199, 30);
            this.lblHeader.TabIndex = 11188;
            this.lblHeader.Text = "OVERALL EQUIPMENT EFFECTIVENESS";
            this.lblHeader.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // pDate
            // 
            this.pDate.Controls.Add(this.dtpToDate);
            this.pDate.Controls.Add(this.cbToday);
            this.pDate.Controls.Add(this.dtpFromDate);
            this.pDate.Controls.Add(this.lblToDate);
            this.pDate.Controls.Add(this.lblFromDate);
            this.pDate.Location = new System.Drawing.Point(344, 33);
            this.pDate.Name = "pDate";
            this.pDate.Size = new System.Drawing.Size(495, 33);
            this.pDate.TabIndex = 11694;
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
            this.cbToday.CheckedChanged += new System.EventHandler(this.cbToday_CheckedChanged);
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
            this.clmSrNo,
            this.clmDate,
            this.clmUnit,
            this.clmMachineId,
            this.clmMachine,
            this.clmDownTimeHrs,
            this.clmQtyPrd,
            this.clmAttainableQtyTons,
            this.clmOperationHours,
            this.clmAttainedCapacitHours,
            this.clmAttainableCapacityHours,
            this.clmTotalDowntime});
            this.dataGridView1.Location = new System.Drawing.Point(12, 80);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(1174, 264);
            this.dataGridView1.TabIndex = 11702;
            // 
            // clmSrNo
            // 
            this.clmSrNo.HeaderText = "SrNo.";
            this.clmSrNo.Name = "clmSrNo";
            this.clmSrNo.ReadOnly = true;
            this.clmSrNo.Width = 50;
            // 
            // clmDate
            // 
            this.clmDate.HeaderText = "Date";
            this.clmDate.Name = "clmDate";
            this.clmDate.ReadOnly = true;
            // 
            // clmUnit
            // 
            this.clmUnit.HeaderText = "Unit";
            this.clmUnit.Name = "clmUnit";
            this.clmUnit.ReadOnly = true;
            // 
            // clmMachineId
            // 
            this.clmMachineId.HeaderText = "MachineId";
            this.clmMachineId.Name = "clmMachineId";
            this.clmMachineId.ReadOnly = true;
            this.clmMachineId.Visible = false;
            // 
            // clmMachine
            // 
            this.clmMachine.HeaderText = "Machine";
            this.clmMachine.Name = "clmMachine";
            this.clmMachine.ReadOnly = true;
            // 
            // clmDownTimeHrs
            // 
            this.clmDownTimeHrs.HeaderText = "Down Time (Hrs)";
            this.clmDownTimeHrs.Name = "clmDownTimeHrs";
            this.clmDownTimeHrs.ReadOnly = true;
            // 
            // clmQtyPrd
            // 
            this.clmQtyPrd.HeaderText = "Qty Prd. Tons";
            this.clmQtyPrd.Name = "clmQtyPrd";
            this.clmQtyPrd.ReadOnly = true;
            // 
            // clmAttainableQtyTons
            // 
            this.clmAttainableQtyTons.HeaderText = "Attainable Qty (Tons)";
            this.clmAttainableQtyTons.Name = "clmAttainableQtyTons";
            this.clmAttainableQtyTons.ReadOnly = true;
            // 
            // clmOperationHours
            // 
            this.clmOperationHours.HeaderText = "Operation Hours";
            this.clmOperationHours.Name = "clmOperationHours";
            this.clmOperationHours.ReadOnly = true;
            // 
            // clmAttainedCapacitHours
            // 
            this.clmAttainedCapacitHours.HeaderText = "Attained Capacit (Hours)";
            this.clmAttainedCapacitHours.Name = "clmAttainedCapacitHours";
            this.clmAttainedCapacitHours.ReadOnly = true;
            // 
            // clmAttainableCapacityHours
            // 
            this.clmAttainableCapacityHours.HeaderText = "Attainable Capacity / Hours";
            this.clmAttainableCapacityHours.Name = "clmAttainableCapacityHours";
            this.clmAttainableCapacityHours.ReadOnly = true;
            // 
            // clmTotalDowntime
            // 
            this.clmTotalDowntime.HeaderText = "Total Downtime HH:MM";
            this.clmTotalDowntime.Name = "clmTotalDowntime";
            this.clmTotalDowntime.ReadOnly = true;
            // 
            // lblTotalCount
            // 
            this.lblTotalCount.AutoSize = true;
            this.lblTotalCount.Location = new System.Drawing.Point(15, 63);
            this.lblTotalCount.Name = "lblTotalCount";
            this.lblTotalCount.Size = new System.Drawing.Size(73, 15);
            this.lblTotalCount.TabIndex = 11703;
            this.lblTotalCount.Text = "Total Count-";
            // 
            // btnExit
            // 
            this.btnExit.BackColor = System.Drawing.Color.DarkSlateBlue;
            this.btnExit.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnExit.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnExit.ForeColor = System.Drawing.Color.White;
            this.btnExit.Location = new System.Drawing.Point(1032, 34);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(75, 30);
            this.btnExit.TabIndex = 11701;
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
            this.btnDelete.Location = new System.Drawing.Point(1111, 34);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(75, 30);
            this.btnDelete.TabIndex = 11700;
            this.btnDelete.Text = "Delete";
            this.btnDelete.UseVisualStyleBackColor = false;
            this.btnDelete.Visible = false;
            this.btnDelete.Click += new System.EventHandler(this.btnDelete_Click);
            // 
            // btnClear
            // 
            this.btnClear.BackColor = System.Drawing.Color.DarkSlateBlue;
            this.btnClear.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnClear.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnClear.ForeColor = System.Drawing.Color.White;
            this.btnClear.Location = new System.Drawing.Point(953, 34);
            this.btnClear.Name = "btnClear";
            this.btnClear.Size = new System.Drawing.Size(75, 30);
            this.btnClear.TabIndex = 11699;
            this.btnClear.Text = "Clear";
            this.btnClear.UseVisualStyleBackColor = false;
            this.btnClear.Click += new System.EventHandler(this.btnClear_Click);
            // 
            // btnSave
            // 
            this.btnSave.BackColor = System.Drawing.Color.DarkSlateBlue;
            this.btnSave.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSave.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSave.ForeColor = System.Drawing.Color.White;
            this.btnSave.Location = new System.Drawing.Point(874, 34);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(75, 30);
            this.btnSave.TabIndex = 11698;
            this.btnSave.Text = "Save";
            this.btnSave.UseVisualStyleBackColor = false;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // lblMonth
            // 
            this.lblMonth.AutoSize = true;
            this.lblMonth.Location = new System.Drawing.Point(22, 37);
            this.lblMonth.Name = "lblMonth";
            this.lblMonth.Size = new System.Drawing.Size(53, 15);
            this.lblMonth.TabIndex = 11711;
            this.lblMonth.Text = "Location";
            // 
            // cmbLocation
            // 
            this.cmbLocation.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbLocation.FormattingEnabled = true;
            this.cmbLocation.Location = new System.Drawing.Point(77, 33);
            this.cmbLocation.Name = "cmbLocation";
            this.cmbLocation.Size = new System.Drawing.Size(251, 23);
            this.cmbLocation.TabIndex = 11710;
            // 
            // dgvDowntime
            // 
            this.dgvDowntime.AllowUserToAddRows = false;
            this.dgvDowntime.AllowUserToDeleteRows = false;
            this.dgvDowntime.AllowUserToOrderColumns = true;
            this.dgvDowntime.AllowUserToResizeColumns = false;
            this.dgvDowntime.AllowUserToResizeRows = false;
            this.dgvDowntime.BackgroundColor = System.Drawing.Color.White;
            this.dgvDowntime.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDowntime.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.clmSrNo1,
            this.clmDate1,
            this.clmUnit1,
            this.clmMachineId1,
            this.clmMachine1,
            this.clmDownTimeHrs1,
            this.clmMaintenanceBreakdownMinutes,
            this.clmCIP,
            this.clmProductOrMachineSetting,
            this.clmRMPMNotAvailable,
            this.clmMealBreak,
            this.clmTotalDowntime1});
            this.dgvDowntime.Location = new System.Drawing.Point(12, 373);
            this.dgvDowntime.Name = "dgvDowntime";
            this.dgvDowntime.ReadOnly = true;
            this.dgvDowntime.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvDowntime.Size = new System.Drawing.Size(1174, 234);
            this.dgvDowntime.TabIndex = 11712;
            // 
            // clmSrNo1
            // 
            this.clmSrNo1.HeaderText = "SrNo.";
            this.clmSrNo1.Name = "clmSrNo1";
            this.clmSrNo1.ReadOnly = true;
            this.clmSrNo1.Width = 50;
            // 
            // clmDate1
            // 
            this.clmDate1.HeaderText = "Date";
            this.clmDate1.Name = "clmDate1";
            this.clmDate1.ReadOnly = true;
            // 
            // clmUnit1
            // 
            this.clmUnit1.HeaderText = "Unit";
            this.clmUnit1.Name = "clmUnit1";
            this.clmUnit1.ReadOnly = true;
            // 
            // clmMachineId1
            // 
            this.clmMachineId1.HeaderText = "MachineId";
            this.clmMachineId1.Name = "clmMachineId1";
            this.clmMachineId1.ReadOnly = true;
            this.clmMachineId1.Visible = false;
            // 
            // clmMachine1
            // 
            this.clmMachine1.HeaderText = "Machine";
            this.clmMachine1.Name = "clmMachine1";
            this.clmMachine1.ReadOnly = true;
            // 
            // clmDownTimeHrs1
            // 
            this.clmDownTimeHrs1.HeaderText = "Down Time (Hrs)";
            this.clmDownTimeHrs1.Name = "clmDownTimeHrs1";
            this.clmDownTimeHrs1.ReadOnly = true;
            // 
            // clmMaintenanceBreakdownMinutes
            // 
            this.clmMaintenanceBreakdownMinutes.HeaderText = "Maintenance Breakdown (Minutes) ";
            this.clmMaintenanceBreakdownMinutes.Name = "clmMaintenanceBreakdownMinutes";
            this.clmMaintenanceBreakdownMinutes.ReadOnly = true;
            // 
            // clmCIP
            // 
            this.clmCIP.HeaderText = "CIP (Minutes)";
            this.clmCIP.Name = "clmCIP";
            this.clmCIP.ReadOnly = true;
            // 
            // clmProductOrMachineSetting
            // 
            this.clmProductOrMachineSetting.HeaderText = "Product or Machine Setting (Minutes)";
            this.clmProductOrMachineSetting.Name = "clmProductOrMachineSetting";
            this.clmProductOrMachineSetting.ReadOnly = true;
            // 
            // clmRMPMNotAvailable
            // 
            this.clmRMPMNotAvailable.HeaderText = "RM/PM Not Available (Minutes)";
            this.clmRMPMNotAvailable.Name = "clmRMPMNotAvailable";
            this.clmRMPMNotAvailable.ReadOnly = true;
            // 
            // clmMealBreak
            // 
            this.clmMealBreak.HeaderText = "Meal Break (Minutes)";
            this.clmMealBreak.Name = "clmMealBreak";
            this.clmMealBreak.ReadOnly = true;
            // 
            // clmTotalDowntime1
            // 
            this.clmTotalDowntime1.HeaderText = "Total Downtime HH:MM";
            this.clmTotalDowntime1.Name = "clmTotalDowntime1";
            this.clmTotalDowntime1.ReadOnly = true;
            // 
            // lblTotalCount1
            // 
            this.lblTotalCount1.AutoSize = true;
            this.lblTotalCount1.Location = new System.Drawing.Point(14, 357);
            this.lblTotalCount1.Name = "lblTotalCount1";
            this.lblTotalCount1.Size = new System.Drawing.Size(73, 15);
            this.lblTotalCount1.TabIndex = 11713;
            this.lblTotalCount1.Text = "Total Count-";
            // 
            // txtTotalDownTime
            // 
            this.txtTotalDownTime.Location = new System.Drawing.Point(405, 613);
            this.txtTotalDownTime.Name = "txtTotalDownTime";
            this.txtTotalDownTime.Size = new System.Drawing.Size(77, 23);
            this.txtTotalDownTime.TabIndex = 11714;
            // 
            // txtTotalMaintenanceBreakdown
            // 
            this.txtTotalMaintenanceBreakdown.Location = new System.Drawing.Point(506, 613);
            this.txtTotalMaintenanceBreakdown.Name = "txtTotalMaintenanceBreakdown";
            this.txtTotalMaintenanceBreakdown.Size = new System.Drawing.Size(77, 23);
            this.txtTotalMaintenanceBreakdown.TabIndex = 11715;
            // 
            // txtTotalCIP
            // 
            this.txtTotalCIP.Location = new System.Drawing.Point(607, 613);
            this.txtTotalCIP.Name = "txtTotalCIP";
            this.txtTotalCIP.Size = new System.Drawing.Size(77, 23);
            this.txtTotalCIP.TabIndex = 11716;
            // 
            // txtTotalProductOrMachineSettings
            // 
            this.txtTotalProductOrMachineSettings.Location = new System.Drawing.Point(708, 613);
            this.txtTotalProductOrMachineSettings.Name = "txtTotalProductOrMachineSettings";
            this.txtTotalProductOrMachineSettings.Size = new System.Drawing.Size(77, 23);
            this.txtTotalProductOrMachineSettings.TabIndex = 11717;
            // 
            // txtTotalRMPMNotAvailable
            // 
            this.txtTotalRMPMNotAvailable.Location = new System.Drawing.Point(809, 613);
            this.txtTotalRMPMNotAvailable.Name = "txtTotalRMPMNotAvailable";
            this.txtTotalRMPMNotAvailable.Size = new System.Drawing.Size(77, 23);
            this.txtTotalRMPMNotAvailable.TabIndex = 11718;
            // 
            // txtTotalMealBreak
            // 
            this.txtTotalMealBreak.Location = new System.Drawing.Point(910, 613);
            this.txtTotalMealBreak.Name = "txtTotalMealBreak";
            this.txtTotalMealBreak.Size = new System.Drawing.Size(77, 23);
            this.txtTotalMealBreak.TabIndex = 11719;
            // 
            // txtTotalTotalDowntime
            // 
            this.txtTotalTotalDowntime.Location = new System.Drawing.Point(1011, 613);
            this.txtTotalTotalDowntime.Name = "txtTotalTotalDowntime";
            this.txtTotalTotalDowntime.Size = new System.Drawing.Size(77, 23);
            this.txtTotalTotalDowntime.TabIndex = 11720;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(291, 617);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(74, 15);
            this.label1.TabIndex = 11721;
            this.label1.Text = "Grand Total:";
            // 
            // OpertationSummaryReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1198, 641);
            this.ControlBox = false;
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtTotalTotalDowntime);
            this.Controls.Add(this.txtTotalMealBreak);
            this.Controls.Add(this.txtTotalRMPMNotAvailable);
            this.Controls.Add(this.txtTotalProductOrMachineSettings);
            this.Controls.Add(this.txtTotalCIP);
            this.Controls.Add(this.txtTotalMaintenanceBreakdown);
            this.Controls.Add(this.txtTotalDownTime);
            this.Controls.Add(this.lblTotalCount1);
            this.Controls.Add(this.dgvDowntime);
            this.Controls.Add(this.lblMonth);
            this.Controls.Add(this.cmbLocation);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.lblTotalCount);
            this.Controls.Add(this.btnExit);
            this.Controls.Add(this.btnDelete);
            this.Controls.Add(this.btnClear);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.pDate);
            this.Controls.Add(this.lblHeader);
            this.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.Name = "OpertationSummaryReport";
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Load += new System.EventHandler(this.OpertationSummaryReport_Load);
            this.pDate.ResumeLayout(false);
            this.pDate.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDowntime)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblHeader;
        private System.Windows.Forms.Panel pDate;
        private System.Windows.Forms.DateTimePicker dtpToDate;
        private System.Windows.Forms.CheckBox cbToday;
        private System.Windows.Forms.DateTimePicker dtpFromDate;
        private System.Windows.Forms.Label lblToDate;
        private System.Windows.Forms.Label lblFromDate;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label lblTotalCount;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.Button btnDelete;
        private System.Windows.Forms.Button btnClear;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Label lblMonth;
        private System.Windows.Forms.ComboBox cmbLocation;
        private System.Windows.Forms.DataGridView dgvDowntime;
        private System.Windows.Forms.Label lblTotalCount1;
        private System.Windows.Forms.TextBox txtTotalDownTime;
        private System.Windows.Forms.TextBox txtTotalMaintenanceBreakdown;
        private System.Windows.Forms.TextBox txtTotalCIP;
        private System.Windows.Forms.TextBox txtTotalProductOrMachineSettings;
        private System.Windows.Forms.TextBox txtTotalRMPMNotAvailable;
        private System.Windows.Forms.TextBox txtTotalMealBreak;
        private System.Windows.Forms.TextBox txtTotalTotalDowntime;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmSrNo;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmDate;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmUnit;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmMachineId;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmMachine;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmDownTimeHrs;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmQtyPrd;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmAttainableQtyTons;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmOperationHours;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmAttainedCapacitHours;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmAttainableCapacityHours;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmTotalDowntime;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmSrNo1;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmDate1;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmUnit1;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmMachineId1;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmMachine1;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmDownTimeHrs1;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmMaintenanceBreakdownMinutes;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmCIP;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmProductOrMachineSetting;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmRMPMNotAvailable;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmMealBreak;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmTotalDowntime1;
    }
}