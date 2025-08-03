namespace SPApplication.OEEApplication.Master
{
    partial class ShiftScheduleMaster
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
            this.cmbMachineName = new System.Windows.Forms.ComboBox();
            this.lblMachineName = new System.Windows.Forms.Label();
            this.label25 = new System.Windows.Forms.Label();
            this.dtpShiftDate = new System.Windows.Forms.DateTimePicker();
            this.label24 = new System.Windows.Forms.Label();
            this.txtMachineRunMinutes = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txtMachineRunHours = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtTimeInHours = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.txtTimeInMinutes = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.lbSearch = new System.Windows.Forms.Label();
            this.txtSearch = new System.Windows.Forms.TextBox();
            this.lblTotalCount = new System.Windows.Forms.Label();
            this.btnExit = new System.Windows.Forms.Button();
            this.btnDelete = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.btnClear = new System.Windows.Forms.Button();
            this.btnSave = new System.Windows.Forms.Button();
            this.btnDownloadTemplate = new System.Windows.Forms.Button();
            this.btnImport = new System.Windows.Forms.Button();
            this.dgvShift = new System.Windows.Forms.DataGridView();
            this.clmDate = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmMachine = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmMachineRun = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmMachineRunHours = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmTimeInMinutes = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmTimeInHours = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmShiftScheduleId = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.label5 = new System.Windows.Forms.Label();
            this.dtpFromDate = new System.Windows.Forms.DateTimePicker();
            this.label9 = new System.Windows.Forms.Label();
            this.dtpToDate = new System.Windows.Forms.DateTimePicker();
            this.btnView = new System.Windows.Forms.Button();
            this.lblTotalCountGrid = new System.Windows.Forms.Label();
            this.cmbYear = new System.Windows.Forms.ComboBox();
            this.label10 = new System.Windows.Forms.Label();
            this.cmbMonth = new System.Windows.Forms.ComboBox();
            this.label87 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvShift)).BeginInit();
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
            this.lblHeader.TabIndex = 11190;
            this.lblHeader.Text = "SHIFT SCHEDULE ENTRY";
            this.lblHeader.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // cmbMachineName
            // 
            this.cmbMachineName.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbMachineName.FormattingEnabled = true;
            this.cmbMachineName.Location = new System.Drawing.Point(476, 61);
            this.cmbMachineName.Name = "cmbMachineName";
            this.cmbMachineName.Size = new System.Drawing.Size(245, 23);
            this.cmbMachineName.TabIndex = 11585;
            // 
            // lblMachineName
            // 
            this.lblMachineName.AutoSize = true;
            this.lblMachineName.Location = new System.Drawing.Point(385, 65);
            this.lblMachineName.Name = "lblMachineName";
            this.lblMachineName.Size = new System.Drawing.Size(89, 15);
            this.lblMachineName.TabIndex = 11586;
            this.lblMachineName.Text = "Machine Name";
            // 
            // label25
            // 
            this.label25.AutoSize = true;
            this.label25.Location = new System.Drawing.Point(17, 74);
            this.label25.Name = "label25";
            this.label25.Size = new System.Drawing.Size(60, 15);
            this.label25.TabIndex = 11588;
            this.label25.Text = "Shift Date";
            this.label25.Visible = false;
            // 
            // dtpShiftDate
            // 
            this.dtpShiftDate.Enabled = false;
            this.dtpShiftDate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpShiftDate.Location = new System.Drawing.Point(79, 70);
            this.dtpShiftDate.Name = "dtpShiftDate";
            this.dtpShiftDate.Size = new System.Drawing.Size(100, 23);
            this.dtpShiftDate.TabIndex = 11587;
            this.dtpShiftDate.Visible = false;
            // 
            // label24
            // 
            this.label24.AutoSize = true;
            this.label24.Location = new System.Drawing.Point(827, 36);
            this.label24.Name = "label24";
            this.label24.Size = new System.Drawing.Size(79, 15);
            this.label24.TabIndex = 11637;
            this.label24.Text = "Machine Run";
            this.label24.Visible = false;
            // 
            // txtMachineRunMinutes
            // 
            this.txtMachineRunMinutes.BackColor = System.Drawing.Color.White;
            this.txtMachineRunMinutes.Location = new System.Drawing.Point(908, 32);
            this.txtMachineRunMinutes.Name = "txtMachineRunMinutes";
            this.txtMachineRunMinutes.Size = new System.Drawing.Size(25, 23);
            this.txtMachineRunMinutes.TabIndex = 11638;
            this.txtMachineRunMinutes.TabStop = false;
            this.txtMachineRunMinutes.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtMachineRunMinutes.Visible = false;
            this.txtMachineRunMinutes.TextChanged += new System.EventHandler(this.txtMachineRunMinutes_TextChanged);
            this.txtMachineRunMinutes.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtMachineRunMinutes_KeyPress);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(935, 36);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(74, 15);
            this.label1.TabIndex = 11639;
            this.label1.Text = "(in Minutes)";
            this.label1.Visible = false;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(1127, 36);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(62, 15);
            this.label2.TabIndex = 11642;
            this.label2.Text = "(in Hours)";
            this.label2.Visible = false;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(1019, 37);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(79, 15);
            this.label3.TabIndex = 11640;
            this.label3.Text = "Machine Run";
            this.label3.Visible = false;
            // 
            // txtMachineRunHours
            // 
            this.txtMachineRunHours.BackColor = System.Drawing.Color.White;
            this.txtMachineRunHours.Location = new System.Drawing.Point(1100, 33);
            this.txtMachineRunHours.Name = "txtMachineRunHours";
            this.txtMachineRunHours.ReadOnly = true;
            this.txtMachineRunHours.Size = new System.Drawing.Size(25, 23);
            this.txtMachineRunHours.TabIndex = 11641;
            this.txtMachineRunHours.TabStop = false;
            this.txtMachineRunHours.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtMachineRunHours.Visible = false;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(1127, 60);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(62, 15);
            this.label4.TabIndex = 11648;
            this.label4.Text = "(in Hours)";
            this.label4.Visible = false;
            // 
            // txtTimeInHours
            // 
            this.txtTimeInHours.BackColor = System.Drawing.Color.White;
            this.txtTimeInHours.Location = new System.Drawing.Point(1100, 57);
            this.txtTimeInHours.Name = "txtTimeInHours";
            this.txtTimeInHours.ReadOnly = true;
            this.txtTimeInHours.Size = new System.Drawing.Size(25, 23);
            this.txtTimeInHours.TabIndex = 11647;
            this.txtTimeInHours.TabStop = false;
            this.txtTimeInHours.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtTimeInHours.Visible = false;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(935, 60);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(74, 15);
            this.label6.TabIndex = 11645;
            this.label6.Text = "(in Minutes)";
            this.label6.Visible = false;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(1091, 78);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(95, 15);
            this.label7.TabIndex = 11643;
            this.label7.Text = "Time In Minutes";
            this.label7.Visible = false;
            // 
            // txtTimeInMinutes
            // 
            this.txtTimeInMinutes.BackColor = System.Drawing.Color.White;
            this.txtTimeInMinutes.Location = new System.Drawing.Point(908, 56);
            this.txtTimeInMinutes.Name = "txtTimeInMinutes";
            this.txtTimeInMinutes.Size = new System.Drawing.Size(25, 23);
            this.txtTimeInMinutes.TabIndex = 11644;
            this.txtTimeInMinutes.TabStop = false;
            this.txtTimeInMinutes.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtTimeInMinutes.Visible = false;
            this.txtTimeInMinutes.TextChanged += new System.EventHandler(this.txtTimeInMinutes_TextChanged);
            this.txtTimeInMinutes.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtTimeInMinutes_KeyPress);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(1015, 60);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(83, 15);
            this.label8.TabIndex = 11649;
            this.label8.Text = "Time In Hours";
            this.label8.Visible = false;
            // 
            // lbSearch
            // 
            this.lbSearch.AutoSize = true;
            this.lbSearch.Location = new System.Drawing.Point(958, 566);
            this.lbSearch.Name = "lbSearch";
            this.lbSearch.Size = new System.Drawing.Size(47, 15);
            this.lbSearch.TabIndex = 11657;
            this.lbSearch.Text = "Search ";
            this.lbSearch.Visible = false;
            // 
            // txtSearch
            // 
            this.txtSearch.Location = new System.Drawing.Point(1007, 562);
            this.txtSearch.Name = "txtSearch";
            this.txtSearch.Size = new System.Drawing.Size(179, 23);
            this.txtSearch.TabIndex = 11650;
            this.txtSearch.Visible = false;
            this.txtSearch.TextChanged += new System.EventHandler(this.txtSearch_TextChanged);
            // 
            // lblTotalCount
            // 
            this.lblTotalCount.AutoSize = true;
            this.lblTotalCount.Location = new System.Drawing.Point(10, 674);
            this.lblTotalCount.Name = "lblTotalCount";
            this.lblTotalCount.Size = new System.Drawing.Size(73, 15);
            this.lblTotalCount.TabIndex = 11656;
            this.lblTotalCount.Text = "Total Count-";
            this.lblTotalCount.Visible = false;
            // 
            // btnExit
            // 
            this.btnExit.BackColor = System.Drawing.Color.DarkSlateBlue;
            this.btnExit.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnExit.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnExit.ForeColor = System.Drawing.Color.White;
            this.btnExit.Location = new System.Drawing.Point(717, 659);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(75, 30);
            this.btnExit.TabIndex = 11654;
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
            this.btnDelete.Location = new System.Drawing.Point(638, 659);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(75, 30);
            this.btnDelete.TabIndex = 11653;
            this.btnDelete.Text = "Delete";
            this.btnDelete.UseVisualStyleBackColor = false;
            this.btnDelete.Visible = false;
            this.btnDelete.Click += new System.EventHandler(this.btnDelete_Click);
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
            this.dataGridView1.Location = new System.Drawing.Point(89, 674);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(113, 12);
            this.dataGridView1.TabIndex = 11655;
            this.dataGridView1.Visible = false;
            this.dataGridView1.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellDoubleClick);
            // 
            // btnClear
            // 
            this.btnClear.BackColor = System.Drawing.Color.DarkSlateBlue;
            this.btnClear.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnClear.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnClear.ForeColor = System.Drawing.Color.White;
            this.btnClear.Location = new System.Drawing.Point(559, 659);
            this.btnClear.Name = "btnClear";
            this.btnClear.Size = new System.Drawing.Size(75, 30);
            this.btnClear.TabIndex = 11652;
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
            this.btnSave.Location = new System.Drawing.Point(480, 659);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(75, 30);
            this.btnSave.TabIndex = 11651;
            this.btnSave.Text = "Save";
            this.btnSave.UseVisualStyleBackColor = false;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // btnDownloadTemplate
            // 
            this.btnDownloadTemplate.BackColor = System.Drawing.Color.DarkSlateBlue;
            this.btnDownloadTemplate.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnDownloadTemplate.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDownloadTemplate.ForeColor = System.Drawing.Color.White;
            this.btnDownloadTemplate.Location = new System.Drawing.Point(12, 34);
            this.btnDownloadTemplate.Name = "btnDownloadTemplate";
            this.btnDownloadTemplate.Size = new System.Drawing.Size(130, 30);
            this.btnDownloadTemplate.TabIndex = 11659;
            this.btnDownloadTemplate.Text = "Download Template";
            this.btnDownloadTemplate.UseVisualStyleBackColor = false;
            this.btnDownloadTemplate.Visible = false;
            // 
            // btnImport
            // 
            this.btnImport.BackColor = System.Drawing.Color.DarkSlateBlue;
            this.btnImport.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnImport.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnImport.ForeColor = System.Drawing.Color.White;
            this.btnImport.Location = new System.Drawing.Point(146, 34);
            this.btnImport.Name = "btnImport";
            this.btnImport.Size = new System.Drawing.Size(130, 30);
            this.btnImport.TabIndex = 11658;
            this.btnImport.Text = "Import";
            this.btnImport.UseVisualStyleBackColor = false;
            this.btnImport.Visible = false;
            // 
            // dgvShift
            // 
            this.dgvShift.AllowUserToAddRows = false;
            this.dgvShift.AllowUserToDeleteRows = false;
            this.dgvShift.AllowUserToOrderColumns = true;
            this.dgvShift.AllowUserToResizeColumns = false;
            this.dgvShift.AllowUserToResizeRows = false;
            this.dgvShift.BackgroundColor = System.Drawing.Color.White;
            this.dgvShift.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvShift.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.clmDate,
            this.clmMachine,
            this.clmMachineRun,
            this.clmMachineRunHours,
            this.clmTimeInMinutes,
            this.clmTimeInHours,
            this.clmShiftScheduleId});
            this.dgvShift.Location = new System.Drawing.Point(12, 121);
            this.dgvShift.Name = "dgvShift";
            this.dgvShift.RowHeadersVisible = false;
            this.dgvShift.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvShift.Size = new System.Drawing.Size(1174, 532);
            this.dgvShift.TabIndex = 11660;
            this.dgvShift.CellEndEdit += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvShift_CellEndEdit);
            // 
            // clmDate
            // 
            this.clmDate.HeaderText = "Date";
            this.clmDate.Name = "clmDate";
            this.clmDate.Width = 120;
            // 
            // clmMachine
            // 
            this.clmMachine.HeaderText = "Machine";
            this.clmMachine.Name = "clmMachine";
            this.clmMachine.Width = 150;
            // 
            // clmMachineRun
            // 
            this.clmMachineRun.HeaderText = "Machine Run";
            this.clmMachineRun.Name = "clmMachineRun";
            this.clmMachineRun.Width = 150;
            // 
            // clmMachineRunHours
            // 
            this.clmMachineRunHours.HeaderText = "Machine Run(Hours)";
            this.clmMachineRunHours.Name = "clmMachineRunHours";
            this.clmMachineRunHours.Width = 150;
            // 
            // clmTimeInMinutes
            // 
            this.clmTimeInMinutes.HeaderText = "Time In (Minutes)";
            this.clmTimeInMinutes.Name = "clmTimeInMinutes";
            this.clmTimeInMinutes.Width = 150;
            // 
            // clmTimeInHours
            // 
            this.clmTimeInHours.HeaderText = "Time In (Hours)";
            this.clmTimeInHours.Name = "clmTimeInHours";
            this.clmTimeInHours.Width = 150;
            // 
            // clmShiftScheduleId
            // 
            this.clmShiftScheduleId.HeaderText = "ShiftScheduleId";
            this.clmShiftScheduleId.Name = "clmShiftScheduleId";
            this.clmShiftScheduleId.ReadOnly = true;
            this.clmShiftScheduleId.Visible = false;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(185, 73);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(63, 15);
            this.label5.TabIndex = 11662;
            this.label5.Text = "From Date";
            this.label5.Visible = false;
            // 
            // dtpFromDate
            // 
            this.dtpFromDate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpFromDate.Location = new System.Drawing.Point(250, 69);
            this.dtpFromDate.Name = "dtpFromDate";
            this.dtpFromDate.Size = new System.Drawing.Size(100, 23);
            this.dtpFromDate.TabIndex = 11661;
            this.dtpFromDate.Visible = false;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(201, 99);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(47, 15);
            this.label9.TabIndex = 11664;
            this.label9.Text = "To Date";
            this.label9.Visible = false;
            // 
            // dtpToDate
            // 
            this.dtpToDate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpToDate.Location = new System.Drawing.Point(250, 95);
            this.dtpToDate.Name = "dtpToDate";
            this.dtpToDate.Size = new System.Drawing.Size(100, 23);
            this.dtpToDate.TabIndex = 11663;
            this.dtpToDate.Visible = false;
            // 
            // btnView
            // 
            this.btnView.BackColor = System.Drawing.Color.DarkSlateBlue;
            this.btnView.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnView.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnView.ForeColor = System.Drawing.Color.White;
            this.btnView.Location = new System.Drawing.Point(739, 57);
            this.btnView.Name = "btnView";
            this.btnView.Size = new System.Drawing.Size(75, 30);
            this.btnView.TabIndex = 11665;
            this.btnView.Text = "View";
            this.btnView.UseVisualStyleBackColor = false;
            this.btnView.Click += new System.EventHandler(this.btnView_Click);
            // 
            // lblTotalCountGrid
            // 
            this.lblTotalCountGrid.AutoSize = true;
            this.lblTotalCountGrid.Location = new System.Drawing.Point(15, 103);
            this.lblTotalCountGrid.Name = "lblTotalCountGrid";
            this.lblTotalCountGrid.Size = new System.Drawing.Size(73, 15);
            this.lblTotalCountGrid.TabIndex = 11666;
            this.lblTotalCountGrid.Text = "Total Count-";
            // 
            // cmbYear
            // 
            this.cmbYear.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbYear.FormattingEnabled = true;
            this.cmbYear.Items.AddRange(new object[] {
            "2025",
            "2026",
            "2027",
            "2028",
            "2029",
            "2030"});
            this.cmbYear.Location = new System.Drawing.Point(621, 36);
            this.cmbYear.Name = "cmbYear";
            this.cmbYear.Size = new System.Drawing.Size(100, 23);
            this.cmbYear.TabIndex = 11696;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(589, 40);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(30, 15);
            this.label10.TabIndex = 11697;
            this.label10.Text = "Year";
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
            this.cmbMonth.Location = new System.Drawing.Point(476, 36);
            this.cmbMonth.Name = "cmbMonth";
            this.cmbMonth.Size = new System.Drawing.Size(100, 23);
            this.cmbMonth.TabIndex = 11694;
            // 
            // label87
            // 
            this.label87.AutoSize = true;
            this.label87.Location = new System.Drawing.Point(431, 40);
            this.label87.Name = "label87";
            this.label87.Size = new System.Drawing.Size(43, 15);
            this.label87.TabIndex = 11695;
            this.label87.Text = "Month";
            // 
            // ShiftScheduleMaster
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1198, 698);
            this.ControlBox = false;
            this.Controls.Add(this.cmbYear);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.cmbMonth);
            this.Controls.Add(this.label87);
            this.Controls.Add(this.lblTotalCountGrid);
            this.Controls.Add(this.btnView);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.dtpToDate);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.dtpFromDate);
            this.Controls.Add(this.dgvShift);
            this.Controls.Add(this.btnDownloadTemplate);
            this.Controls.Add(this.btnImport);
            this.Controls.Add(this.lbSearch);
            this.Controls.Add(this.txtSearch);
            this.Controls.Add(this.lblTotalCount);
            this.Controls.Add(this.btnExit);
            this.Controls.Add(this.btnDelete);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.btnClear);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txtTimeInHours);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.txtTimeInMinutes);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txtMachineRunHours);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.label24);
            this.Controls.Add(this.txtMachineRunMinutes);
            this.Controls.Add(this.label25);
            this.Controls.Add(this.dtpShiftDate);
            this.Controls.Add(this.cmbMachineName);
            this.Controls.Add(this.lblMachineName);
            this.Controls.Add(this.lblHeader);
            this.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.Name = "ShiftScheduleMaster";
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Load += new System.EventHandler(this.ShiftScheduleMaster_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvShift)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblHeader;
        private System.Windows.Forms.ComboBox cmbMachineName;
        private System.Windows.Forms.Label lblMachineName;
        private System.Windows.Forms.Label label25;
        private System.Windows.Forms.DateTimePicker dtpShiftDate;
        private System.Windows.Forms.Label label24;
        private System.Windows.Forms.TextBox txtMachineRunMinutes;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtMachineRunHours;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtTimeInHours;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtTimeInMinutes;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label lbSearch;
        private System.Windows.Forms.TextBox txtSearch;
        private System.Windows.Forms.Label lblTotalCount;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.Button btnDelete;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button btnClear;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Button btnDownloadTemplate;
        private System.Windows.Forms.Button btnImport;
        private System.Windows.Forms.DataGridView dgvShift;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.DateTimePicker dtpFromDate;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.DateTimePicker dtpToDate;
        private System.Windows.Forms.Button btnView;
        private System.Windows.Forms.Label lblTotalCountGrid;
        private System.Windows.Forms.ComboBox cmbYear;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.ComboBox cmbMonth;
        private System.Windows.Forms.Label label87;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmDate;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmMachine;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmMachineRun;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmMachineRunHours;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmTimeInMinutes;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmTimeInHours;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmShiftScheduleId;
    }
}