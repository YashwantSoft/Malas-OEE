namespace SPApplication.Reports
{
    partial class BreakdownReport
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
            this.cmbLocation = new System.Windows.Forms.ComboBox();
            this.dtpFromDate = new System.Windows.Forms.DateTimePicker();
            this.lblFromDate = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.cbToday = new System.Windows.Forms.CheckBox();
            this.lblToDate = new System.Windows.Forms.Label();
            this.lblTotalCount = new System.Windows.Forms.Label();
            this.pMonth = new System.Windows.Forms.Panel();
            this.cmbYear = new System.Windows.Forms.ComboBox();
            this.lblMonth = new System.Windows.Forms.Label();
            this.cmbMonth = new System.Windows.Forms.ComboBox();
            this.lblYear = new System.Windows.Forms.Label();
            this.pDate = new System.Windows.Forms.Panel();
            this.dtpToDate = new System.Windows.Forms.DateTimePicker();
            this.btnExit = new System.Windows.Forms.Button();
            this.btnDelete = new System.Windows.Forms.Button();
            this.btnSave = new System.Windows.Forms.Button();
            this.btnClear = new System.Windows.Forms.Button();
            this.cmbReportType = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.lblHeader = new System.Windows.Forms.Label();
            this.clmProductionDate = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmDataEntryId = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmTotalNosOfProducts = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmTotalMachineUsed = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmStratupBreakdownAndOthersHours = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmCIPHours = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmProductOrMachineSettingHours = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmRMPMNotAvailableHours = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmMealBreakHours = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmMaintainanceBreakdownHours = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmTotalBreakDown = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.pMonth.SuspendLayout();
            this.pDate.SuspendLayout();
            this.SuspendLayout();
            // 
            // cmbLocation
            // 
            this.cmbLocation.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbLocation.FormattingEnabled = true;
            this.cmbLocation.Location = new System.Drawing.Point(164, 36);
            this.cmbLocation.Name = "cmbLocation";
            this.cmbLocation.Size = new System.Drawing.Size(259, 23);
            this.cmbLocation.TabIndex = 11794;
            // 
            // dtpFromDate
            // 
            this.dtpFromDate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpFromDate.Location = new System.Drawing.Point(111, 5);
            this.dtpFromDate.Name = "dtpFromDate";
            this.dtpFromDate.Size = new System.Drawing.Size(100, 23);
            this.dtpFromDate.TabIndex = 11688;
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
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(109, 40);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(53, 15);
            this.label3.TabIndex = 11795;
            this.label3.Text = "Location";
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
            this.clmProductionDate,
            this.clmDataEntryId,
            this.clmTotalNosOfProducts,
            this.clmTotalMachineUsed,
            this.clmStratupBreakdownAndOthersHours,
            this.clmCIPHours,
            this.clmProductOrMachineSettingHours,
            this.clmRMPMNotAvailableHours,
            this.clmMealBreakHours,
            this.clmMaintainanceBreakdownHours,
            this.clmTotalBreakDown});
            this.dataGridView1.Location = new System.Drawing.Point(10, 110);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.RowHeadersVisible = false;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(1280, 586);
            this.dataGridView1.TabIndex = 11793;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(1114, 43);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(71, 15);
            this.label1.TabIndex = 11792;
            this.label1.Text = "Report Date";
            this.label1.Visible = false;
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dateTimePicker1.Location = new System.Drawing.Point(1187, 39);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(100, 23);
            this.dateTimePicker1.TabIndex = 11791;
            this.dateTimePicker1.Visible = false;
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
            // lblToDate
            // 
            this.lblToDate.AutoSize = true;
            this.lblToDate.Location = new System.Drawing.Point(221, 9);
            this.lblToDate.Name = "lblToDate";
            this.lblToDate.Size = new System.Drawing.Size(47, 15);
            this.lblToDate.TabIndex = 11692;
            this.lblToDate.Text = "To Date";
            // 
            // lblTotalCount
            // 
            this.lblTotalCount.AutoSize = true;
            this.lblTotalCount.Location = new System.Drawing.Point(12, 93);
            this.lblTotalCount.Name = "lblTotalCount";
            this.lblTotalCount.Size = new System.Drawing.Size(73, 15);
            this.lblTotalCount.TabIndex = 11790;
            this.lblTotalCount.Text = "Total Count-";
            // 
            // pMonth
            // 
            this.pMonth.Controls.Add(this.cmbYear);
            this.pMonth.Controls.Add(this.lblMonth);
            this.pMonth.Controls.Add(this.cmbMonth);
            this.pMonth.Controls.Add(this.lblYear);
            this.pMonth.Location = new System.Drawing.Point(493, 35);
            this.pMonth.Name = "pMonth";
            this.pMonth.Size = new System.Drawing.Size(495, 31);
            this.pMonth.TabIndex = 11789;
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
            this.pDate.Location = new System.Drawing.Point(493, 34);
            this.pDate.Name = "pDate";
            this.pDate.Size = new System.Drawing.Size(495, 33);
            this.pDate.TabIndex = 11788;
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
            // btnExit
            // 
            this.btnExit.BackColor = System.Drawing.Color.DarkSlateBlue;
            this.btnExit.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnExit.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnExit.ForeColor = System.Drawing.Color.White;
            this.btnExit.Location = new System.Drawing.Point(652, 75);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(75, 30);
            this.btnExit.TabIndex = 11785;
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
            this.btnDelete.Location = new System.Drawing.Point(731, 75);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(75, 30);
            this.btnDelete.TabIndex = 11784;
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
            this.btnSave.Location = new System.Drawing.Point(494, 75);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(75, 30);
            this.btnSave.TabIndex = 11782;
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
            this.btnClear.Location = new System.Drawing.Point(573, 75);
            this.btnClear.Name = "btnClear";
            this.btnClear.Size = new System.Drawing.Size(75, 30);
            this.btnClear.TabIndex = 11783;
            this.btnClear.Text = "Clear";
            this.btnClear.UseVisualStyleBackColor = false;
            // 
            // cmbReportType
            // 
            this.cmbReportType.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbReportType.FormattingEnabled = true;
            this.cmbReportType.Items.AddRange(new object[] {
            "Date Wise Report",
            "Month Wise Report"});
            this.cmbReportType.Location = new System.Drawing.Point(164, 61);
            this.cmbReportType.Name = "cmbReportType";
            this.cmbReportType.Size = new System.Drawing.Size(259, 23);
            this.cmbReportType.TabIndex = 11787;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(92, 65);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(70, 15);
            this.label4.TabIndex = 11786;
            this.label4.Text = "Report Type";
            // 
            // lblHeader
            // 
            this.lblHeader.BackColor = System.Drawing.Color.Blue;
            this.lblHeader.Font = new System.Drawing.Font("Calibri", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblHeader.ForeColor = System.Drawing.Color.White;
            this.lblHeader.Location = new System.Drawing.Point(0, 2);
            this.lblHeader.Name = "lblHeader";
            this.lblHeader.Size = new System.Drawing.Size(1299, 30);
            this.lblHeader.TabIndex = 11781;
            this.lblHeader.Text = "Breakdown Report";
            this.lblHeader.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // clmProductionDate
            // 
            this.clmProductionDate.HeaderText = "Date";
            this.clmProductionDate.Name = "clmProductionDate";
            this.clmProductionDate.ReadOnly = true;
            this.clmProductionDate.Width = 80;
            // 
            // clmDataEntryId
            // 
            this.clmDataEntryId.HeaderText = "DataEntryId";
            this.clmDataEntryId.Name = "clmDataEntryId";
            this.clmDataEntryId.ReadOnly = true;
            this.clmDataEntryId.Visible = false;
            // 
            // clmTotalNosOfProducts
            // 
            this.clmTotalNosOfProducts.HeaderText = "Total Nos Of Products";
            this.clmTotalNosOfProducts.Name = "clmTotalNosOfProducts";
            this.clmTotalNosOfProducts.ReadOnly = true;
            // 
            // clmTotalMachineUsed
            // 
            this.clmTotalMachineUsed.HeaderText = "Total Machine Used";
            this.clmTotalMachineUsed.Name = "clmTotalMachineUsed";
            this.clmTotalMachineUsed.ReadOnly = true;
            // 
            // clmStratupBreakdownAndOthersHours
            // 
            this.clmStratupBreakdownAndOthersHours.HeaderText = "Stratup +Breakdown & Others Hours";
            this.clmStratupBreakdownAndOthersHours.Name = "clmStratupBreakdownAndOthersHours";
            this.clmStratupBreakdownAndOthersHours.ReadOnly = true;
            // 
            // clmCIPHours
            // 
            this.clmCIPHours.HeaderText = "CIP (Hours)";
            this.clmCIPHours.Name = "clmCIPHours";
            this.clmCIPHours.ReadOnly = true;
            // 
            // clmProductOrMachineSettingHours
            // 
            this.clmProductOrMachineSettingHours.HeaderText = "Product or Machine Setting (Hours)";
            this.clmProductOrMachineSettingHours.Name = "clmProductOrMachineSettingHours";
            this.clmProductOrMachineSettingHours.ReadOnly = true;
            // 
            // clmRMPMNotAvailableHours
            // 
            this.clmRMPMNotAvailableHours.HeaderText = "RM /PM Not Available (Hours)";
            this.clmRMPMNotAvailableHours.Name = "clmRMPMNotAvailableHours";
            this.clmRMPMNotAvailableHours.ReadOnly = true;
            // 
            // clmMealBreakHours
            // 
            this.clmMealBreakHours.HeaderText = "Meal Break (Hours)";
            this.clmMealBreakHours.Name = "clmMealBreakHours";
            this.clmMealBreakHours.ReadOnly = true;
            // 
            // clmMaintainanceBreakdownHours
            // 
            this.clmMaintainanceBreakdownHours.HeaderText = "Maintainance Breakdown (Hours)";
            this.clmMaintainanceBreakdownHours.Name = "clmMaintainanceBreakdownHours";
            this.clmMaintainanceBreakdownHours.ReadOnly = true;
            // 
            // clmTotalBreakDown
            // 
            this.clmTotalBreakDown.HeaderText = "Total Break Down";
            this.clmTotalBreakDown.Name = "clmTotalBreakDown";
            this.clmTotalBreakDown.ReadOnly = true;
            // 
            // BreakdownReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1298, 698);
            this.ControlBox = false;
            this.Controls.Add(this.cmbLocation);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dateTimePicker1);
            this.Controls.Add(this.lblTotalCount);
            this.Controls.Add(this.pMonth);
            this.Controls.Add(this.pDate);
            this.Controls.Add(this.btnExit);
            this.Controls.Add(this.btnDelete);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.btnClear);
            this.Controls.Add(this.cmbReportType);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.lblHeader);
            this.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "BreakdownReport";
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Load += new System.EventHandler(this.BreakdownReport_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.pMonth.ResumeLayout(false);
            this.pMonth.PerformLayout();
            this.pDate.ResumeLayout(false);
            this.pDate.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox cmbLocation;
        private System.Windows.Forms.DateTimePicker dtpFromDate;
        private System.Windows.Forms.Label lblFromDate;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.CheckBox cbToday;
        private System.Windows.Forms.Label lblToDate;
        private System.Windows.Forms.Label lblTotalCount;
        private System.Windows.Forms.Panel pMonth;
        private System.Windows.Forms.ComboBox cmbYear;
        private System.Windows.Forms.Label lblMonth;
        private System.Windows.Forms.ComboBox cmbMonth;
        private System.Windows.Forms.Label lblYear;
        private System.Windows.Forms.Panel pDate;
        private System.Windows.Forms.DateTimePicker dtpToDate;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.Button btnDelete;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Button btnClear;
        private System.Windows.Forms.ComboBox cmbReportType;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label lblHeader;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmProductionDate;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmDataEntryId;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmTotalNosOfProducts;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmTotalMachineUsed;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmStratupBreakdownAndOthersHours;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmCIPHours;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmProductOrMachineSettingHours;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmRMPMNotAvailableHours;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmMealBreakHours;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmMaintainanceBreakdownHours;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmTotalBreakDown;

    }
}