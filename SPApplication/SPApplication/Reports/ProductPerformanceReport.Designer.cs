namespace SPApplication.Reports
{
    partial class ProductPerformanceReport
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            this.lblHeader = new System.Windows.Forms.Label();
            this.btnExit = new System.Windows.Forms.Button();
            this.btnDelete = new System.Windows.Forms.Button();
            this.btnClear = new System.Windows.Forms.Button();
            this.btnSave = new System.Windows.Forms.Button();
            this.cbSelectAllProdut = new System.Windows.Forms.CheckBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.lbItem = new System.Windows.Forms.ListBox();
            this.btnAddProduct = new System.Windows.Forms.Button();
            this.label45 = new System.Windows.Forms.Label();
            this.txtSearchProductName = new System.Windows.Forms.TextBox();
            this.txtSearchCode = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.rtbItem = new System.Windows.Forms.RichTextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.clmProductId = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmProductName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmUnit = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmPackingSize = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmRunningDays = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmAvailableHours = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmCIP = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmProductOrMachineSettingMiutes = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmRMPMNotAvailable = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmMealBreak = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmMaintenanceBreakdown = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmTotalDowntime = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmOperatingTime = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmAvailabilty = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmProductionDone = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmFillingCapacity = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmFinalCapacity = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmBootlePerMinute = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.label3 = new System.Windows.Forms.Label();
            this.cmbLocation = new System.Windows.Forms.ComboBox();
            this.pMonth = new System.Windows.Forms.Panel();
            this.cmbYear = new System.Windows.Forms.ComboBox();
            this.lblMonth = new System.Windows.Forms.Label();
            this.cmbMonth = new System.Windows.Forms.ComboBox();
            this.lblYear = new System.Windows.Forms.Label();
            this.pDate = new System.Windows.Forms.Panel();
            this.dtpToDate = new System.Windows.Forms.DateTimePicker();
            this.cbToday = new System.Windows.Forms.CheckBox();
            this.dtpFromDate = new System.Windows.Forms.DateTimePicker();
            this.lblToDate = new System.Windows.Forms.Label();
            this.lblFromDate = new System.Windows.Forms.Label();
            this.cmbReportType = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.lblTotalCount = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.pMonth.SuspendLayout();
            this.pDate.SuspendLayout();
            this.SuspendLayout();
            // 
            // lblHeader
            // 
            this.lblHeader.BackColor = System.Drawing.Color.Blue;
            this.lblHeader.Font = new System.Drawing.Font("Calibri", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblHeader.ForeColor = System.Drawing.Color.White;
            this.lblHeader.Location = new System.Drawing.Point(-1, 0);
            this.lblHeader.Name = "lblHeader";
            this.lblHeader.Size = new System.Drawing.Size(1302, 30);
            this.lblHeader.TabIndex = 11188;
            this.lblHeader.Text = "Datewise Report";
            this.lblHeader.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // btnExit
            // 
            this.btnExit.BackColor = System.Drawing.Color.DarkSlateBlue;
            this.btnExit.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnExit.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnExit.ForeColor = System.Drawing.Color.White;
            this.btnExit.Location = new System.Drawing.Point(641, 221);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(75, 30);
            this.btnExit.TabIndex = 11681;
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
            this.btnDelete.Location = new System.Drawing.Point(720, 221);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(75, 30);
            this.btnDelete.TabIndex = 11680;
            this.btnDelete.Text = "Delete";
            this.btnDelete.UseVisualStyleBackColor = false;
            this.btnDelete.Visible = false;
            // 
            // btnClear
            // 
            this.btnClear.BackColor = System.Drawing.Color.DarkSlateBlue;
            this.btnClear.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnClear.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnClear.ForeColor = System.Drawing.Color.White;
            this.btnClear.Location = new System.Drawing.Point(562, 221);
            this.btnClear.Name = "btnClear";
            this.btnClear.Size = new System.Drawing.Size(75, 30);
            this.btnClear.TabIndex = 11679;
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
            this.btnSave.Location = new System.Drawing.Point(483, 221);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(75, 30);
            this.btnSave.TabIndex = 11678;
            this.btnSave.Text = "Save";
            this.btnSave.UseVisualStyleBackColor = false;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // cbSelectAllProdut
            // 
            this.cbSelectAllProdut.AutoSize = true;
            this.cbSelectAllProdut.Location = new System.Drawing.Point(59, 38);
            this.cbSelectAllProdut.Name = "cbSelectAllProdut";
            this.cbSelectAllProdut.Size = new System.Drawing.Size(122, 19);
            this.cbSelectAllProdut.TabIndex = 11756;
            this.cbSelectAllProdut.Text = "Select All Product";
            this.cbSelectAllProdut.UseVisualStyleBackColor = true;
            this.cbSelectAllProdut.CheckedChanged += new System.EventHandler(this.cbSelectAllProdut_CheckedChanged);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.lbItem);
            this.groupBox1.Controls.Add(this.btnAddProduct);
            this.groupBox1.Controls.Add(this.label45);
            this.groupBox1.Controls.Add(this.txtSearchProductName);
            this.groupBox1.Controls.Add(this.txtSearchCode);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.rtbItem);
            this.groupBox1.Location = new System.Drawing.Point(57, 58);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(576, 153);
            this.groupBox1.TabIndex = 11757;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Product Details";
            // 
            // lbItem
            // 
            this.lbItem.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbItem.FormattingEnabled = true;
            this.lbItem.ItemHeight = 19;
            this.lbItem.Location = new System.Drawing.Point(8, 40);
            this.lbItem.Name = "lbItem";
            this.lbItem.Size = new System.Drawing.Size(557, 99);
            this.lbItem.TabIndex = 11702;
            this.lbItem.SelectedIndexChanged += new System.EventHandler(this.lbItem_SelectedIndexChanged);
            this.lbItem.KeyDown += new System.Windows.Forms.KeyEventHandler(this.lbItem_KeyDown);
            this.lbItem.Leave += new System.EventHandler(this.lbItem_Leave);
            // 
            // btnAddProduct
            // 
            this.btnAddProduct.BackColor = System.Drawing.Color.Blue;
            this.btnAddProduct.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btnAddProduct.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnAddProduct.Font = new System.Drawing.Font("Calibri", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAddProduct.ForeColor = System.Drawing.Color.White;
            this.btnAddProduct.Location = new System.Drawing.Point(543, 15);
            this.btnAddProduct.Name = "btnAddProduct";
            this.btnAddProduct.Size = new System.Drawing.Size(20, 20);
            this.btnAddProduct.TabIndex = 11704;
            this.btnAddProduct.Text = "+";
            this.btnAddProduct.UseVisualStyleBackColor = false;
            // 
            // label45
            // 
            this.label45.AutoSize = true;
            this.label45.Location = new System.Drawing.Point(10, 19);
            this.label45.Name = "label45";
            this.label45.Size = new System.Drawing.Size(90, 15);
            this.label45.TabIndex = 11703;
            this.label45.Text = "Search Product";
            // 
            // txtSearchProductName
            // 
            this.txtSearchProductName.Location = new System.Drawing.Point(102, 15);
            this.txtSearchProductName.Name = "txtSearchProductName";
            this.txtSearchProductName.Size = new System.Drawing.Size(255, 23);
            this.txtSearchProductName.TabIndex = 11700;
            this.txtSearchProductName.TextChanged += new System.EventHandler(this.txtSearchProductName_TextChanged);
            // 
            // txtSearchCode
            // 
            this.txtSearchCode.Location = new System.Drawing.Point(399, 14);
            this.txtSearchCode.Name = "txtSearchCode";
            this.txtSearchCode.Size = new System.Drawing.Size(139, 23);
            this.txtSearchCode.TabIndex = 11701;
            this.txtSearchCode.Visible = false;
            this.txtSearchCode.TextChanged += new System.EventHandler(this.txtSearchCode_TextChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(363, 18);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(34, 15);
            this.label2.TabIndex = 11706;
            this.label2.Text = "Code";
            this.label2.Visible = false;
            // 
            // rtbItem
            // 
            this.rtbItem.BackColor = System.Drawing.Color.White;
            this.rtbItem.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rtbItem.ForeColor = System.Drawing.SystemColors.WindowText;
            this.rtbItem.Location = new System.Drawing.Point(9, 39);
            this.rtbItem.Name = "rtbItem";
            this.rtbItem.ReadOnly = true;
            this.rtbItem.Size = new System.Drawing.Size(556, 109);
            this.rtbItem.TabIndex = 11705;
            this.rtbItem.Text = "";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(1113, 37);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(71, 15);
            this.label1.TabIndex = 11759;
            this.label1.Text = "Report Date";
            this.label1.Visible = false;
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dateTimePicker1.Location = new System.Drawing.Point(1186, 33);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(100, 23);
            this.dateTimePicker1.TabIndex = 11758;
            this.dateTimePicker1.Visible = false;
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
            this.clmProductId,
            this.clmProductName,
            this.clmUnit,
            this.clmPackingSize,
            this.clmRunningDays,
            this.clmAvailableHours,
            this.clmCIP,
            this.clmProductOrMachineSettingMiutes,
            this.clmRMPMNotAvailable,
            this.clmMealBreak,
            this.clmMaintenanceBreakdown,
            this.clmTotalDowntime,
            this.clmOperatingTime,
            this.clmAvailabilty,
            this.clmProductionDone,
            this.clmFillingCapacity,
            this.clmFinalCapacity,
            this.clmBootlePerMinute});
            this.dataGridView1.Location = new System.Drawing.Point(12, 257);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.RowHeadersVisible = false;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(1258, 420);
            this.dataGridView1.TabIndex = 11760;
            // 
            // clmProductId
            // 
            this.clmProductId.HeaderText = "ProductId";
            this.clmProductId.Name = "clmProductId";
            this.clmProductId.ReadOnly = true;
            this.clmProductId.Visible = false;
            // 
            // clmProductName
            // 
            this.clmProductName.HeaderText = "Product Name";
            this.clmProductName.Name = "clmProductName";
            this.clmProductName.ReadOnly = true;
            this.clmProductName.Width = 250;
            // 
            // clmUnit
            // 
            this.clmUnit.HeaderText = "Unit";
            this.clmUnit.Name = "clmUnit";
            this.clmUnit.ReadOnly = true;
            this.clmUnit.Width = 80;
            // 
            // clmPackingSize
            // 
            this.clmPackingSize.HeaderText = "Packing Size";
            this.clmPackingSize.Name = "clmPackingSize";
            this.clmPackingSize.ReadOnly = true;
            this.clmPackingSize.Width = 50;
            // 
            // clmRunningDays
            // 
            this.clmRunningDays.HeaderText = "Running Days";
            this.clmRunningDays.Name = "clmRunningDays";
            this.clmRunningDays.ReadOnly = true;
            this.clmRunningDays.Width = 50;
            // 
            // clmAvailableHours
            // 
            this.clmAvailableHours.HeaderText = "Available Hours";
            this.clmAvailableHours.Name = "clmAvailableHours";
            this.clmAvailableHours.ReadOnly = true;
            this.clmAvailableHours.Width = 50;
            // 
            // clmCIP
            // 
            this.clmCIP.HeaderText = "CIP";
            this.clmCIP.Name = "clmCIP";
            this.clmCIP.ReadOnly = true;
            this.clmCIP.Width = 50;
            // 
            // clmProductOrMachineSettingMiutes
            // 
            this.clmProductOrMachineSettingMiutes.HeaderText = "Product or Machine Setting (miutes)";
            this.clmProductOrMachineSettingMiutes.Name = "clmProductOrMachineSettingMiutes";
            this.clmProductOrMachineSettingMiutes.ReadOnly = true;
            this.clmProductOrMachineSettingMiutes.Width = 80;
            // 
            // clmRMPMNotAvailable
            // 
            this.clmRMPMNotAvailable.HeaderText = "RM PM Not Avail able";
            this.clmRMPMNotAvailable.Name = "clmRMPMNotAvailable";
            this.clmRMPMNotAvailable.ReadOnly = true;
            this.clmRMPMNotAvailable.Width = 50;
            // 
            // clmMealBreak
            // 
            this.clmMealBreak.HeaderText = "Meal Break";
            this.clmMealBreak.Name = "clmMealBreak";
            this.clmMealBreak.ReadOnly = true;
            this.clmMealBreak.Width = 50;
            // 
            // clmMaintenanceBreakdown
            // 
            this.clmMaintenanceBreakdown.HeaderText = "Maintenance Breakdown";
            this.clmMaintenanceBreakdown.Name = "clmMaintenanceBreakdown";
            this.clmMaintenanceBreakdown.ReadOnly = true;
            this.clmMaintenanceBreakdown.Width = 50;
            // 
            // clmTotalDowntime
            // 
            this.clmTotalDowntime.HeaderText = "Total Downtime";
            this.clmTotalDowntime.Name = "clmTotalDowntime";
            this.clmTotalDowntime.ReadOnly = true;
            this.clmTotalDowntime.Width = 50;
            // 
            // clmOperatingTime
            // 
            this.clmOperatingTime.HeaderText = "Operating Time";
            this.clmOperatingTime.Name = "clmOperatingTime";
            this.clmOperatingTime.ReadOnly = true;
            this.clmOperatingTime.Width = 50;
            // 
            // clmAvailabilty
            // 
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.clmAvailabilty.DefaultCellStyle = dataGridViewCellStyle3;
            this.clmAvailabilty.HeaderText = "Availabilty";
            this.clmAvailabilty.Name = "clmAvailabilty";
            this.clmAvailabilty.ReadOnly = true;
            this.clmAvailabilty.Width = 50;
            // 
            // clmProductionDone
            // 
            this.clmProductionDone.HeaderText = "Production Done";
            this.clmProductionDone.Name = "clmProductionDone";
            this.clmProductionDone.ReadOnly = true;
            this.clmProductionDone.Width = 50;
            // 
            // clmFillingCapacity
            // 
            this.clmFillingCapacity.HeaderText = "Filling Capacity";
            this.clmFillingCapacity.Name = "clmFillingCapacity";
            this.clmFillingCapacity.ReadOnly = true;
            this.clmFillingCapacity.Width = 50;
            // 
            // clmFinalCapacity
            // 
            this.clmFinalCapacity.HeaderText = "Final Capacity";
            this.clmFinalCapacity.Name = "clmFinalCapacity";
            this.clmFinalCapacity.ReadOnly = true;
            this.clmFinalCapacity.Width = 80;
            // 
            // clmBootlePerMinute
            // 
            this.clmBootlePerMinute.HeaderText = "Bootle (per minute)";
            this.clmBootlePerMinute.Name = "clmBootlePerMinute";
            this.clmBootlePerMinute.ReadOnly = true;
            this.clmBootlePerMinute.Width = 80;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(762, 81);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(53, 15);
            this.label3.TabIndex = 11766;
            this.label3.Text = "Location";
            // 
            // cmbLocation
            // 
            this.cmbLocation.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbLocation.FormattingEnabled = true;
            this.cmbLocation.Location = new System.Drawing.Point(817, 77);
            this.cmbLocation.Name = "cmbLocation";
            this.cmbLocation.Size = new System.Drawing.Size(259, 23);
            this.cmbLocation.TabIndex = 11765;
            // 
            // pMonth
            // 
            this.pMonth.Controls.Add(this.cmbYear);
            this.pMonth.Controls.Add(this.lblMonth);
            this.pMonth.Controls.Add(this.cmbMonth);
            this.pMonth.Controls.Add(this.lblYear);
            this.pMonth.Location = new System.Drawing.Point(706, 152);
            this.pMonth.Name = "pMonth";
            this.pMonth.Size = new System.Drawing.Size(495, 31);
            this.pMonth.TabIndex = 11764;
            this.pMonth.Visible = false;
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
            // lblMonth
            // 
            this.lblMonth.AutoSize = true;
            this.lblMonth.Location = new System.Drawing.Point(66, 8);
            this.lblMonth.Name = "lblMonth";
            this.lblMonth.Size = new System.Drawing.Size(43, 15);
            this.lblMonth.TabIndex = 11684;
            this.lblMonth.Text = "Month";
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
            this.pDate.Location = new System.Drawing.Point(706, 151);
            this.pDate.Name = "pDate";
            this.pDate.Size = new System.Drawing.Size(495, 33);
            this.pDate.TabIndex = 11763;
            this.pDate.Visible = false;
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
            // cmbReportType
            // 
            this.cmbReportType.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbReportType.FormattingEnabled = true;
            this.cmbReportType.Items.AddRange(new object[] {
            "Date Wise Report",
            "Month Wise Report"});
            this.cmbReportType.Location = new System.Drawing.Point(817, 101);
            this.cmbReportType.Name = "cmbReportType";
            this.cmbReportType.Size = new System.Drawing.Size(259, 23);
            this.cmbReportType.TabIndex = 11762;
            this.cmbReportType.SelectionChangeCommitted += new System.EventHandler(this.cmbReportType_SelectionChangeCommitted);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(745, 105);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(70, 15);
            this.label4.TabIndex = 11761;
            this.label4.Text = "Report Type";
            // 
            // lblTotalCount
            // 
            this.lblTotalCount.AutoSize = true;
            this.lblTotalCount.Location = new System.Drawing.Point(15, 240);
            this.lblTotalCount.Name = "lblTotalCount";
            this.lblTotalCount.Size = new System.Drawing.Size(73, 15);
            this.lblTotalCount.TabIndex = 11767;
            this.lblTotalCount.Text = "Total Count-";
            // 
            // ProductPerformanceReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1298, 698);
            this.ControlBox = false;
            this.Controls.Add(this.lblTotalCount);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.cmbLocation);
            this.Controls.Add(this.pMonth);
            this.Controls.Add(this.pDate);
            this.Controls.Add(this.cmbReportType);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dateTimePicker1);
            this.Controls.Add(this.cbSelectAllProdut);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.btnExit);
            this.Controls.Add(this.btnDelete);
            this.Controls.Add(this.btnClear);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.lblHeader);
            this.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "ProductPerformanceReport";
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Load += new System.EventHandler(this.ProductPerformanceReport_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.pMonth.ResumeLayout(false);
            this.pMonth.PerformLayout();
            this.pDate.ResumeLayout(false);
            this.pDate.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblHeader;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.Button btnDelete;
        private System.Windows.Forms.Button btnClear;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.CheckBox cbSelectAllProdut;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ListBox lbItem;
        private System.Windows.Forms.Button btnAddProduct;
        private System.Windows.Forms.Label label45;
        private System.Windows.Forms.TextBox txtSearchProductName;
        private System.Windows.Forms.TextBox txtSearchCode;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.RichTextBox rtbItem;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmProductId;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmProductName;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmUnit;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmPackingSize;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmRunningDays;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmAvailableHours;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmCIP;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmProductOrMachineSettingMiutes;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmRMPMNotAvailable;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmMealBreak;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmMaintenanceBreakdown;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmTotalDowntime;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmOperatingTime;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmAvailabilty;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmProductionDone;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmFillingCapacity;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmFinalCapacity;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmBootlePerMinute;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cmbLocation;
        private System.Windows.Forms.Panel pMonth;
        private System.Windows.Forms.ComboBox cmbYear;
        private System.Windows.Forms.Label lblMonth;
        private System.Windows.Forms.ComboBox cmbMonth;
        private System.Windows.Forms.Label lblYear;
        private System.Windows.Forms.Panel pDate;
        private System.Windows.Forms.DateTimePicker dtpToDate;
        private System.Windows.Forms.CheckBox cbToday;
        private System.Windows.Forms.DateTimePicker dtpFromDate;
        private System.Windows.Forms.Label lblToDate;
        private System.Windows.Forms.Label lblFromDate;
        private System.Windows.Forms.ComboBox cmbReportType;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label lblTotalCount;
    }
}