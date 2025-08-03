namespace SPApplication.OEEApplication.Master
{
    partial class ProductMaster
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
            this.label10 = new System.Windows.Forms.Label();
            this.txtBoxes = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.txtPackingSize = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.txtFinalCapacity = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.txtFillingPerHour = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.txtConversionRate = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtProductName = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtProductCode = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtLabourRequired = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtNosBottles = new System.Windows.Forms.TextBox();
            this.lbSearch = new System.Windows.Forms.Label();
            this.txtSearch = new System.Windows.Forms.TextBox();
            this.lblTotalCount = new System.Windows.Forms.Label();
            this.btnExit = new System.Windows.Forms.Button();
            this.btnDelete = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.btnClear = new System.Windows.Forms.Button();
            this.btnSave = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.txtProductID = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.cmbUnit = new System.Windows.Forms.ComboBox();
            this.label13 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.txtMachineCapacity = new System.Windows.Forms.TextBox();
            this.label15 = new System.Windows.Forms.Label();
            this.txtProcessCapacity = new System.Windows.Forms.TextBox();
            this.label16 = new System.Windows.Forms.Label();
            this.txtFillingSpeedPerHour = new System.Windows.Forms.TextBox();
            this.label17 = new System.Windows.Forms.Label();
            this.label18 = new System.Windows.Forms.Label();
            this.label19 = new System.Windows.Forms.Label();
            this.label20 = new System.Windows.Forms.Label();
            this.label21 = new System.Windows.Forms.Label();
            this.label22 = new System.Windows.Forms.Label();
            this.label23 = new System.Windows.Forms.Label();
            this.cmbProductType = new System.Windows.Forms.ComboBox();
            this.label24 = new System.Windows.Forms.Label();
            this.label25 = new System.Windows.Forms.Label();
            this.label27 = new System.Windows.Forms.Label();
            this.txtFilling = new System.Windows.Forms.TextBox();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label44 = new System.Windows.Forms.Label();
            this.cmbCategory = new System.Windows.Forms.ComboBox();
            this.label26 = new System.Windows.Forms.Label();
            this.label28 = new System.Windows.Forms.Label();
            this.txtWeight = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // lblHeader
            // 
            this.lblHeader.BackColor = System.Drawing.Color.Blue;
            this.lblHeader.Font = new System.Drawing.Font("Calibri", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblHeader.ForeColor = System.Drawing.Color.White;
            this.lblHeader.Location = new System.Drawing.Point(0, 0);
            this.lblHeader.Name = "lblHeader";
            this.lblHeader.Size = new System.Drawing.Size(1299, 30);
            this.lblHeader.TabIndex = 11188;
            this.lblHeader.Text = "PRODUCT MASTER";
            this.lblHeader.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(865, 133);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(39, 15);
            this.label10.TabIndex = 11606;
            this.label10.Text = "Boxes";
            // 
            // txtBoxes
            // 
            this.txtBoxes.BackColor = System.Drawing.Color.White;
            this.txtBoxes.Location = new System.Drawing.Point(837, 150);
            this.txtBoxes.Multiline = true;
            this.txtBoxes.Name = "txtBoxes";
            this.txtBoxes.ReadOnly = true;
            this.txtBoxes.Size = new System.Drawing.Size(100, 23);
            this.txtBoxes.TabIndex = 7;
            this.txtBoxes.TabStop = false;
            this.txtBoxes.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtBoxes.TextChanged += new System.EventHandler(this.txtBoxes_TextChanged);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(735, 133);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(74, 15);
            this.label7.TabIndex = 11604;
            this.label7.Text = "Packing Size";
            // 
            // txtPackingSize
            // 
            this.txtPackingSize.BackColor = System.Drawing.Color.Ivory;
            this.txtPackingSize.Location = new System.Drawing.Point(723, 150);
            this.txtPackingSize.Name = "txtPackingSize";
            this.txtPackingSize.Size = new System.Drawing.Size(100, 23);
            this.txtPackingSize.TabIndex = 6;
            this.txtPackingSize.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtPackingSize.TextChanged += new System.EventHandler(this.txtPackingSize_TextChanged);
            this.txtPackingSize.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtPackingSize_KeyDown);
            this.txtPackingSize.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtPackingSize_KeyPress);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(1184, 133);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(92, 15);
            this.label8.TabIndex = 11602;
            this.label8.Text = "Filling per hour";
            // 
            // txtFinalCapacity
            // 
            this.txtFinalCapacity.BackColor = System.Drawing.Color.White;
            this.txtFinalCapacity.Location = new System.Drawing.Point(381, 150);
            this.txtFinalCapacity.Name = "txtFinalCapacity";
            this.txtFinalCapacity.ReadOnly = true;
            this.txtFinalCapacity.Size = new System.Drawing.Size(100, 23);
            this.txtFinalCapacity.TabIndex = 5;
            this.txtFinalCapacity.TabStop = false;
            this.txtFinalCapacity.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtFinalCapacity.TextChanged += new System.EventHandler(this.txtFinalCapacity_TextChanged);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(387, 133);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(86, 15);
            this.label9.TabIndex = 11600;
            this.label9.Text = "Final Capacity";
            // 
            // txtFillingPerHour
            // 
            this.txtFillingPerHour.BackColor = System.Drawing.Color.White;
            this.txtFillingPerHour.Location = new System.Drawing.Point(1179, 150);
            this.txtFillingPerHour.Name = "txtFillingPerHour";
            this.txtFillingPerHour.ReadOnly = true;
            this.txtFillingPerHour.Size = new System.Drawing.Size(100, 23);
            this.txtFillingPerHour.TabIndex = 4;
            this.txtFillingPerHour.TabStop = false;
            this.txtFillingPerHour.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtFillingPerHour.TextChanged += new System.EventHandler(this.txtFillingPerHour_TextChanged);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(41, 133);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(96, 15);
            this.label6.TabIndex = 11598;
            this.label6.Text = "Conversion Rate";
            // 
            // txtConversionRate
            // 
            this.txtConversionRate.BackColor = System.Drawing.Color.Ivory;
            this.txtConversionRate.Location = new System.Drawing.Point(39, 150);
            this.txtConversionRate.Name = "txtConversionRate";
            this.txtConversionRate.Size = new System.Drawing.Size(100, 23);
            this.txtConversionRate.TabIndex = 3;
            this.txtConversionRate.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtConversionRate.TextChanged += new System.EventHandler(this.txtConversionRate_TextChanged);
            this.txtConversionRate.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtConversionRate_KeyDown);
            this.txtConversionRate.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtConversionRate_KeyPress);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(143, 62);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(84, 15);
            this.label5.TabIndex = 11596;
            this.label5.Text = "Product Name";
            // 
            // txtProductName
            // 
            this.txtProductName.BackColor = System.Drawing.Color.White;
            this.txtProductName.Location = new System.Drawing.Point(229, 58);
            this.txtProductName.Name = "txtProductName";
            this.txtProductName.Size = new System.Drawing.Size(926, 23);
            this.txtProductName.TabIndex = 1;
            this.txtProductName.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtProductName_KeyDown);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(436, 38);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(80, 15);
            this.label3.TabIndex = 11594;
            this.label3.Text = "Product Code";
            // 
            // txtProductCode
            // 
            this.txtProductCode.BackColor = System.Drawing.Color.White;
            this.txtProductCode.Location = new System.Drawing.Point(518, 34);
            this.txtProductCode.Name = "txtProductCode";
            this.txtProductCode.Size = new System.Drawing.Size(150, 23);
            this.txtProductCode.TabIndex = 0;
            this.txtProductCode.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtProductCode_KeyDown);
            this.txtProductCode.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtProductCode_KeyPress);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(1067, 133);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(97, 15);
            this.label2.TabIndex = 11610;
            this.label2.Text = "Labour Required";
            // 
            // txtLabourRequired
            // 
            this.txtLabourRequired.BackColor = System.Drawing.Color.Ivory;
            this.txtLabourRequired.Location = new System.Drawing.Point(1065, 150);
            this.txtLabourRequired.Name = "txtLabourRequired";
            this.txtLabourRequired.Size = new System.Drawing.Size(100, 23);
            this.txtLabourRequired.TabIndex = 7;
            this.txtLabourRequired.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtLabourRequired.TextChanged += new System.EventHandler(this.txtLabourRequired_TextChanged);
            this.txtLabourRequired.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtLabourRequired_KeyDown);
            this.txtLabourRequired.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtLabourRequired_KeyPress);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(963, 133);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(74, 15);
            this.label4.TabIndex = 11608;
            this.label4.Text = "Nos./Bottles";
            // 
            // txtNosBottles
            // 
            this.txtNosBottles.BackColor = System.Drawing.Color.White;
            this.txtNosBottles.Location = new System.Drawing.Point(951, 150);
            this.txtNosBottles.Name = "txtNosBottles";
            this.txtNosBottles.ReadOnly = true;
            this.txtNosBottles.Size = new System.Drawing.Size(100, 23);
            this.txtNosBottles.TabIndex = 8;
            this.txtNosBottles.TabStop = false;
            this.txtNosBottles.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtNosBottles.TextChanged += new System.EventHandler(this.txtNosBottles_TextChanged);
            // 
            // lbSearch
            // 
            this.lbSearch.AutoSize = true;
            this.lbSearch.Location = new System.Drawing.Point(952, 239);
            this.lbSearch.Name = "lbSearch";
            this.lbSearch.Size = new System.Drawing.Size(47, 15);
            this.lbSearch.TabIndex = 11619;
            this.lbSearch.Text = "Search ";
            // 
            // txtSearch
            // 
            this.txtSearch.Location = new System.Drawing.Point(1001, 235);
            this.txtSearch.Name = "txtSearch";
            this.txtSearch.Size = new System.Drawing.Size(179, 23);
            this.txtSearch.TabIndex = 8;
            this.txtSearch.TextChanged += new System.EventHandler(this.txtSearch_TextChanged);
            // 
            // lblTotalCount
            // 
            this.lblTotalCount.AutoSize = true;
            this.lblTotalCount.Location = new System.Drawing.Point(15, 249);
            this.lblTotalCount.Name = "lblTotalCount";
            this.lblTotalCount.Size = new System.Drawing.Size(73, 15);
            this.lblTotalCount.TabIndex = 11618;
            this.lblTotalCount.Text = "Total Count-";
            // 
            // btnExit
            // 
            this.btnExit.BackColor = System.Drawing.Color.DarkSlateBlue;
            this.btnExit.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnExit.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnExit.ForeColor = System.Drawing.Color.White;
            this.btnExit.Location = new System.Drawing.Point(730, 230);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(75, 30);
            this.btnExit.TabIndex = 13;
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
            this.btnDelete.Location = new System.Drawing.Point(651, 230);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(75, 30);
            this.btnDelete.TabIndex = 12;
            this.btnDelete.Text = "Delete";
            this.btnDelete.UseVisualStyleBackColor = false;
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
            this.dataGridView1.Location = new System.Drawing.Point(16, 266);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(1267, 420);
            this.dataGridView1.TabIndex = 14;
            this.dataGridView1.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellDoubleClick);
            // 
            // btnClear
            // 
            this.btnClear.BackColor = System.Drawing.Color.DarkSlateBlue;
            this.btnClear.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnClear.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnClear.ForeColor = System.Drawing.Color.White;
            this.btnClear.Location = new System.Drawing.Point(572, 230);
            this.btnClear.Name = "btnClear";
            this.btnClear.Size = new System.Drawing.Size(75, 30);
            this.btnClear.TabIndex = 11;
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
            this.btnSave.Location = new System.Drawing.Point(493, 230);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(75, 30);
            this.btnSave.TabIndex = 10;
            this.btnSave.Text = "Save";
            this.btnSave.UseVisualStyleBackColor = false;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(162, 37);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(65, 15);
            this.label1.TabIndex = 11620;
            this.label1.Text = "Product ID";
            // 
            // txtProductID
            // 
            this.txtProductID.BackColor = System.Drawing.Color.White;
            this.txtProductID.Enabled = false;
            this.txtProductID.Location = new System.Drawing.Point(229, 34);
            this.txtProductID.Name = "txtProductID";
            this.txtProductID.ReadOnly = true;
            this.txtProductID.Size = new System.Drawing.Size(150, 23);
            this.txtProductID.TabIndex = 11621;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(393, 175);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(76, 15);
            this.label11.TabIndex = 11622;
            this.label11.Text = "Per Hour(Kg)";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(724, 175);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(98, 30);
            this.label12.TabIndex = 11623;
            this.label12.Text = "(Nos of Bottle in \r\none Box)";
            // 
            // cmbUnit
            // 
            this.cmbUnit.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbUnit.FormattingEnabled = true;
            this.cmbUnit.Location = new System.Drawing.Point(229, 82);
            this.cmbUnit.Name = "cmbUnit";
            this.cmbUnit.Size = new System.Drawing.Size(150, 23);
            this.cmbUnit.TabIndex = 2;
            this.cmbUnit.KeyDown += new System.Windows.Forms.KeyEventHandler(this.cmbUnit_KeyDown);
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(197, 85);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(30, 15);
            this.label13.TabIndex = 11624;
            this.label13.Text = "Unit";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(153, 133);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(109, 15);
            this.label14.TabIndex = 11627;
            this.label14.Text = "Machine Capacity ";
            // 
            // txtMachineCapacity
            // 
            this.txtMachineCapacity.BackColor = System.Drawing.Color.Ivory;
            this.txtMachineCapacity.Location = new System.Drawing.Point(153, 150);
            this.txtMachineCapacity.Name = "txtMachineCapacity";
            this.txtMachineCapacity.Size = new System.Drawing.Size(100, 23);
            this.txtMachineCapacity.TabIndex = 4;
            this.txtMachineCapacity.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtMachineCapacity.TextChanged += new System.EventHandler(this.txtMachineCapacity_TextChanged);
            this.txtMachineCapacity.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtMachineCapacity_KeyDown);
            this.txtMachineCapacity.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtMachineCapacity_KeyPress);
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Location = new System.Drawing.Point(271, 133);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(101, 15);
            this.label15.TabIndex = 11629;
            this.label15.Text = "Process Capacity";
            // 
            // txtProcessCapacity
            // 
            this.txtProcessCapacity.BackColor = System.Drawing.Color.Ivory;
            this.txtProcessCapacity.Location = new System.Drawing.Point(267, 150);
            this.txtProcessCapacity.Name = "txtProcessCapacity";
            this.txtProcessCapacity.Size = new System.Drawing.Size(100, 23);
            this.txtProcessCapacity.TabIndex = 5;
            this.txtProcessCapacity.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtProcessCapacity.TextChanged += new System.EventHandler(this.txtProcessCapacity_TextChanged);
            this.txtProcessCapacity.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtProcessCapacity_KeyDown);
            this.txtProcessCapacity.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtProcessCapacity_KeyPress);
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Location = new System.Drawing.Point(621, 133);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(77, 15);
            this.label16.TabIndex = 11631;
            this.label16.Text = "Filling Speed";
            // 
            // txtFillingSpeedPerHour
            // 
            this.txtFillingSpeedPerHour.BackColor = System.Drawing.Color.White;
            this.txtFillingSpeedPerHour.Location = new System.Drawing.Point(609, 150);
            this.txtFillingSpeedPerHour.Name = "txtFillingSpeedPerHour";
            this.txtFillingSpeedPerHour.ReadOnly = true;
            this.txtFillingSpeedPerHour.Size = new System.Drawing.Size(100, 23);
            this.txtFillingSpeedPerHour.TabIndex = 11630;
            this.txtFillingSpeedPerHour.TabStop = false;
            this.txtFillingSpeedPerHour.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtFillingSpeedPerHour.TextChanged += new System.EventHandler(this.txtFillingSpeedPerHour_TextChanged);
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Location = new System.Drawing.Point(38, 175);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(99, 15);
            this.label17.TabIndex = 11632;
            this.label17.Text = "(Kg/Ltr. To Boxes)";
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Location = new System.Drawing.Point(162, 175);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(76, 15);
            this.label18.TabIndex = 11633;
            this.label18.Text = "Per Hour(Kg)";
            // 
            // label19
            // 
            this.label19.AutoSize = true;
            this.label19.Location = new System.Drawing.Point(278, 175);
            this.label19.Name = "label19";
            this.label19.Size = new System.Drawing.Size(82, 15);
            this.label19.TabIndex = 11634;
            this.label19.Text = "Per Hour (Kg.)";
            // 
            // label20
            // 
            this.label20.AutoSize = true;
            this.label20.Location = new System.Drawing.Point(861, 175);
            this.label20.Name = "label20";
            this.label20.Size = new System.Drawing.Size(56, 15);
            this.label20.TabIndex = 11635;
            this.label20.Text = "(In Hour)";
            // 
            // label21
            // 
            this.label21.AutoSize = true;
            this.label21.Location = new System.Drawing.Point(974, 175);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(56, 15);
            this.label21.TabIndex = 11636;
            this.label21.Text = "(In Hour)";
            // 
            // label22
            // 
            this.label22.AutoSize = true;
            this.label22.Location = new System.Drawing.Point(1208, 175);
            this.label22.Name = "label22";
            this.label22.Size = new System.Drawing.Size(55, 15);
            this.label22.TabIndex = 11637;
            this.label22.Text = "Per Hour";
            // 
            // label23
            // 
            this.label23.AutoSize = true;
            this.label23.Location = new System.Drawing.Point(681, 38);
            this.label23.Name = "label23";
            this.label23.Size = new System.Drawing.Size(64, 15);
            this.label23.TabIndex = 11638;
            this.label23.Text = "(Navision)";
            // 
            // cmbProductType
            // 
            this.cmbProductType.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbProductType.FormattingEnabled = true;
            this.cmbProductType.Items.AddRange(new object[] {
            "FG",
            "SFG"});
            this.cmbProductType.Location = new System.Drawing.Point(517, 82);
            this.cmbProductType.Name = "cmbProductType";
            this.cmbProductType.Size = new System.Drawing.Size(150, 23);
            this.cmbProductType.TabIndex = 11639;
            // 
            // label24
            // 
            this.label24.AutoSize = true;
            this.label24.Location = new System.Drawing.Point(438, 86);
            this.label24.Name = "label24";
            this.label24.Size = new System.Drawing.Size(77, 15);
            this.label24.TabIndex = 11640;
            this.label24.Text = "Product Type";
            // 
            // label25
            // 
            this.label25.AutoSize = true;
            this.label25.Location = new System.Drawing.Point(631, 175);
            this.label25.Name = "label25";
            this.label25.Size = new System.Drawing.Size(55, 15);
            this.label25.TabIndex = 11641;
            this.label25.Text = "Per Hour";
            // 
            // label27
            // 
            this.label27.AutoSize = true;
            this.label27.Location = new System.Drawing.Point(524, 133);
            this.label27.Name = "label27";
            this.label27.Size = new System.Drawing.Size(42, 15);
            this.label27.TabIndex = 11643;
            this.label27.Text = "Filling";
            // 
            // txtFilling
            // 
            this.txtFilling.BackColor = System.Drawing.Color.Ivory;
            this.txtFilling.Location = new System.Drawing.Point(495, 150);
            this.txtFilling.Name = "txtFilling";
            this.txtFilling.Size = new System.Drawing.Size(100, 23);
            this.txtFilling.TabIndex = 11642;
            this.txtFilling.TabStop = false;
            this.txtFilling.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtFilling.TextChanged += new System.EventHandler(this.txtFilling_TextChanged);
            this.txtFilling.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtFilling_KeyDown);
            this.txtFilling.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtFilling_KeyPress);
            // 
            // textBox1
            // 
            this.textBox1.BackColor = System.Drawing.Color.Ivory;
            this.textBox1.Location = new System.Drawing.Point(4, 37);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(22, 23);
            this.textBox1.TabIndex = 11644;
            this.textBox1.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label44
            // 
            this.label44.AutoSize = true;
            this.label44.Location = new System.Drawing.Point(28, 42);
            this.label44.Name = "label44";
            this.label44.Size = new System.Drawing.Size(71, 15);
            this.label44.TabIndex = 11654;
            this.label44.Text = "Entry Fields";
            // 
            // cmbCategory
            // 
            this.cmbCategory.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbCategory.FormattingEnabled = true;
            this.cmbCategory.Location = new System.Drawing.Point(774, 82);
            this.cmbCategory.Name = "cmbCategory";
            this.cmbCategory.Size = new System.Drawing.Size(150, 23);
            this.cmbCategory.TabIndex = 11655;
            // 
            // label26
            // 
            this.label26.AutoSize = true;
            this.label26.Location = new System.Drawing.Point(717, 86);
            this.label26.Name = "label26";
            this.label26.Size = new System.Drawing.Size(55, 15);
            this.label26.TabIndex = 11656;
            this.label26.Text = "Category";
            // 
            // label28
            // 
            this.label28.AutoSize = true;
            this.label28.Location = new System.Drawing.Point(965, 86);
            this.label28.Name = "label28";
            this.label28.Size = new System.Drawing.Size(46, 15);
            this.label28.TabIndex = 11658;
            this.label28.Text = "Weight";
            // 
            // txtWeight
            // 
            this.txtWeight.BackColor = System.Drawing.Color.Ivory;
            this.txtWeight.Location = new System.Drawing.Point(1013, 82);
            this.txtWeight.Name = "txtWeight";
            this.txtWeight.Size = new System.Drawing.Size(100, 23);
            this.txtWeight.TabIndex = 11657;
            this.txtWeight.TabStop = false;
            this.txtWeight.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // ProductMaster
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1298, 698);
            this.ControlBox = false;
            this.Controls.Add(this.label28);
            this.Controls.Add(this.txtWeight);
            this.Controls.Add(this.cmbCategory);
            this.Controls.Add(this.label26);
            this.Controls.Add(this.label44);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.label27);
            this.Controls.Add(this.txtFilling);
            this.Controls.Add(this.label25);
            this.Controls.Add(this.cmbProductType);
            this.Controls.Add(this.label24);
            this.Controls.Add(this.label23);
            this.Controls.Add(this.label22);
            this.Controls.Add(this.label21);
            this.Controls.Add(this.label20);
            this.Controls.Add(this.label19);
            this.Controls.Add(this.label18);
            this.Controls.Add(this.label17);
            this.Controls.Add(this.label16);
            this.Controls.Add(this.txtFillingSpeedPerHour);
            this.Controls.Add(this.label15);
            this.Controls.Add(this.txtProcessCapacity);
            this.Controls.Add(this.label14);
            this.Controls.Add(this.txtMachineCapacity);
            this.Controls.Add(this.cmbUnit);
            this.Controls.Add(this.label13);
            this.Controls.Add(this.label12);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtProductID);
            this.Controls.Add(this.lbSearch);
            this.Controls.Add(this.txtSearch);
            this.Controls.Add(this.lblTotalCount);
            this.Controls.Add(this.btnExit);
            this.Controls.Add(this.btnDelete);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.btnClear);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtLabourRequired);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txtNosBottles);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.txtBoxes);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.txtPackingSize);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.txtFinalCapacity);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.txtFillingPerHour);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.txtConversionRate);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.txtProductName);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txtProductCode);
            this.Controls.Add(this.lblHeader);
            this.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.Name = "ProductMaster";
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Load += new System.EventHandler(this.ProductMaster_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblHeader;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtBoxes;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtPackingSize;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtFinalCapacity;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox txtFillingPerHour;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtConversionRate;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtProductName;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtProductCode;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtLabourRequired;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtNosBottles;
        private System.Windows.Forms.Label lbSearch;
        private System.Windows.Forms.TextBox txtSearch;
        private System.Windows.Forms.Label lblTotalCount;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.Button btnDelete;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button btnClear;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtProductID;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.ComboBox cmbUnit;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.TextBox txtMachineCapacity;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.TextBox txtProcessCapacity;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.TextBox txtFillingSpeedPerHour;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.Label label19;
        private System.Windows.Forms.Label label20;
        private System.Windows.Forms.Label label21;
        private System.Windows.Forms.Label label22;
        private System.Windows.Forms.Label label23;
        private System.Windows.Forms.ComboBox cmbProductType;
        private System.Windows.Forms.Label label24;
        private System.Windows.Forms.Label label25;
        private System.Windows.Forms.Label label27;
        private System.Windows.Forms.TextBox txtFilling;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label44;
        private System.Windows.Forms.ComboBox cmbCategory;
        private System.Windows.Forms.Label label26;
        private System.Windows.Forms.Label label28;
        private System.Windows.Forms.TextBox txtWeight;
    }
}