using BusinessLayerUtility;
using SPApplication.Master;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SPApplication.OEEApplication.Master
{
    public partial class ProductMaster : Form
    {
        BusinessLayer objBL = new BusinessLayer();
        RedundancyLogics objRL = new RedundancyLogics();
        DesignLayer objDL = new DesignLayer();
        ErrorProvider objEP = new ErrorProvider();
        QueryLayer objQL = new QueryLayer();
        PropertyClass objPC = new PropertyClass();

        public ProductMaster()
        {
            InitializeComponent();
            objDL.SetDesignMaster(this, lblHeader, btnSave, btnClear, btnDelete, btnExit, BusinessResources.LBL_HEADER_PRODUCTMASTER);
            objRL.Get_UserRights_By_MenuName(BusinessResources.LBL_HEADER_MASTER);
            objRL.Fill_UOM_New(cmbUnit);
            objRL.Fill_Category(cmbCategory);
        }

        private void GetProductId()
        {
            txtProductID.Text = Convert.ToString(objRL.ReturnMaxID_Increase("ProductMaster", "ProductId"));
        }
        private void txtProductCode_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.TxtNumericValue(sender, e, txtProductCode);
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }
        private void txtConversionRate_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.FloatValue(sender, e, txtConversionRate);
        }

        private void txtPackingSize_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.FloatValue(sender, e, txtPackingSize);
        }


        private void txtLabourRequired_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.NumericValue(sender, e, txtLabourRequired);
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (objPC.AddFlag == 1)
            {
                try
                {
                    FlagDelete = false;
                    SaveDB();
                }
                catch (Exception ex1) { objRL.ErrorMessge(ex1.ToString()); }
                finally { GC.Collect(); }
            }
            else
            {
                objRL.ShowMessage(24, 4);
                return;
            }
        }

        int Result = 0;
        bool FlagDelete = false;

        private bool Validation()
        {
            objEP.Clear();
            if (txtProductCode.Text == "")
            {
                objEP.SetError(txtProductCode, "Enter Product Code");
                txtProductCode.Focus();
                return true;
            }
            else if (txtProductName.Text == "")
            {
                objEP.SetError(txtProductName, "Enter Product Name");
                txtProductName.Focus();
                return true;
            }
            else if (txtConversionRate.Text == "")
            {
                objEP.SetError(txtConversionRate, "Enter Conversion Rate Kg To Boxes");
                txtConversionRate.Focus();
                return true;
            }
            else if (txtFillingPerHour.Text == "")
            {
                objEP.SetError(txtFillingPerHour, "Enter Production Capacity");
                txtFillingPerHour.Focus();
                return true;
            }
            else if (txtFinalCapacity.Text == "")
            {
                objEP.SetError(txtFinalCapacity, "Enter Bottle Nec Filling Capacity");
                txtFinalCapacity.Focus();
                return true;
            }
            else if (txtPackingSize.Text == "")
            {
                objEP.SetError(txtPackingSize, "Enter Packing Size");
                txtPackingSize.Focus();
                return true;
            }
            else if (txtBoxes.Text == "")
            {
                objEP.SetError(txtBoxes, "Enter Boxes");
                txtBoxes.Focus();
                return true;
            }
            else if (txtNosBottles.Text == "")
            {
                objEP.SetError(txtNosBottles, "Enter Nos Bottles");
                txtNosBottles.Focus();
                return true;
            }
            else if (txtNosBottles.Text == "")
            {
                objEP.SetError(txtNosBottles, "Enter Packing Size");
                txtNosBottles.Focus();
                return true;
            }
            else if (txtLabourRequired.Text == "")
            {
                objEP.SetError(txtLabourRequired, "Enter Labour Required");
                txtNosBottles.Focus();
                return true;
            }
            else
                return false;
        }

        int ProductId = 0, TableId = 0;
        string ExecuteType = string.Empty;
        private bool CheckExist()
        {
            DataSet ds = new DataSet();
            objBL.Query = "select ProductId from productmaster where ProductName='" + txtProductName.Text + "' and CancelTag=0 and ProductId <> " + ProductId + "";
            ds = objBL.ReturnDataSet();
            if (ds.Tables[0].Rows.Count > 0)
                return true;
            else
                return false;
        }
        private void SaveDB()
        {
            Result = 0;
            try
            {
                if (!Validation())
                {
                    if (!FlagDelete)
                    {
                        if (CheckExist())
                        {
                            objRL.ShowMessage(34, 9);
                            return;
                        }
                    }

                    if (TableId != 0)
                    {
                        if (FlagDelete)
                        {
                            objBL.Query = "update productmaster set CancelTag=1 where ProductId=" + objPC.AssetMasterId + "";
                            ExecuteType = "Delete";
                        }
                        else
                        {
                            //objBL.Query = "update AssetMaster set EntryDate='" + dtpDate.Value.ToShortDateString() + "',SiteId=" + cmbBusinessUnit.SelectedValue + ",DepartmentId=" + DepartmentId + ",DepartmentName='" + cmbDepartment.Text + "',AssetUserName='" + txtUserName.Text + "',ComputerName='" + txtComputerName.Text + "',AssetTypeId=" + cmbAssetType.SelectedValue + ",MakeId=" + cmbMake.SelectedValue + ",SerialNumber='" + txtSerialNumber.Text + "',OSName='" + cmbOSName.Text + "',OSType='" + cmbOSType.Text + "',OSTag='" + cmbOSTag.Text + "',Processor='" + cmbProcessor.Text + "',HDDType='" + cmbHDDType1.Text + "',SSD='" + cmbSSD.Text + "',HDD='" + cmbHDD.Text + "',RAM='" + cmbRAM.Text + "',IPAddressLAN='" + txtIPAddressLAN.Text + "',IPAddressWifi='" + txtIPAddressWifi.Text + "',OfficeVersion='" + cmbOfficeVersion.Text + "',AntivirusSerialNumber='" + txtAntivirusSerialNo.Text + "',AntivirusExpiryDate='" + dtpEndDate.Value.ToShortDateString() + "',Status='" + cmbStatus.Text + "',QRCodeData='" + txtQRCodeData.Text + "',ModifiedId=" + BusinessLayer.UserId_Static + " where ID=" + TableId + " and CancelTag=0";
                            objBL.Query = "update productmaster set ProductCode='" + txtProductCode.Text + "',ProductName='" + txtProductName.Text + "',Unit='" + cmbUnit.Text + "',ProductType='" + cmbProductType.Text + "',ConversionRate='" + txtConversionRate.Text + "',MachineCapacity='" + txtMachineCapacity.Text + "',ProcessCapacity='" + txtProcessCapacity.Text + "',FinalCapacity='" + txtFinalCapacity.Text + "',Filling='" + txtFilling.Text + "',FillingSpeedPerHour='" + txtFillingSpeedPerHour.Text + "',PackingSize='" + txtPackingSize.Text + "',Boxes='" + txtBoxes.Text + "',NosBottles='" + txtNosBottles.Text + "',LabourRequired='" + txtLabourRequired.Text + "',FillingPerHour='" + txtFillingPerHour.Text + "',Category='" + cmbCategory.Text + "',ModifiedUserId=" + BusinessLayer.UserId_Static + " where ProductId=" + ProductId + " and CancelTag=0";
                            ExecuteType = "Update";

                            // SiteId=" + cmbBusinessUnit.SelectedValue + ",DepartmentId=" + DepartmentId + ",AssetUserName='" + txtUserName.Text + "',ComputerName='" + txtComputerName.Text + "',AssetTypeId=" + cmbAssetType.SelectedValue + ",MakeId=" + cmbMake.SelectedValue + ",SerialNumber='" + txtSerialNumber.Text + "',OSName='" + cmbOSName.Text + "',OSType='" + cmbOSType.Text + "',OSTag='" + cmbOSTag.Text + "',Processor='" + cmbProcessor.Text + "',HDDType='" + cmbHDDType1.Text + "',SSD='" + cmbSSD.Text + "',HDD='" + cmbHDD.Text + "',RAM='" + cmbRAM.Text + "',IPAddressLAN='" + txtIPAddressLAN.Text + "',IPAddressWifi='" + txtIPAddressWifi.Text + "',OfficeVersion='" + cmbOfficeVersion.Text + "',AntivirusSerialNumber='" + txtAntivirusSerialNo.Text + "',AntivirusExpiryDate='" + dtpEndDate.Value.ToShortDateString() + "',Status='" + cmbStatus.Text + "',QRCodeData='" + txtQRCodeData.Text + "',
                        }
                    }
                    else
                    {
                        //objBL.Query = "insert into AssetMaster(EntryDate,PurchaseDate,InvoiceNo,WarrantyPeriod,WarrantyEndDate,GRNNo,Status,QRCodeData,SiteId,DepartmentName,AssetUserName,ComputerName,AssetTypeId,MakeId,SerialNumber,OSName,OSType,OSTag,Processor,HDDType,SSD,HDD,RAM,IPAddressLAN,IPAddressWifi,OfficeVersion,AntivirusSerialNumber,AntivirusExpiryDate,Status,QRCodeData,UserId) values('"
                        objBL.Query = "insert into productmaster(ProductCode,ProductName,Unit,ProductType,ConversionRate,MachineCapacity,ProcessCapacity,FinalCapacity,Filling,FillingSpeedPerHour,PackingSize,Boxes,NosBottles,LabourRequired,FillingPerHour,Category,UserId) values('" + txtProductCode.Text + "','" + txtProductName.Text + "','" + cmbUnit.Text + "','" + cmbProductType.Text + "','" + txtConversionRate.Text + "','" + txtMachineCapacity.Text + "','" + txtProcessCapacity.Text + "','" + txtFinalCapacity.Text + "','" + txtFilling.Text + "','" + txtFillingSpeedPerHour.Text + "','" + txtPackingSize.Text + "','" + txtBoxes.Text + "','" + txtNosBottles.Text + "','" + txtLabourRequired.Text + "','" + txtFillingPerHour.Text + "','" + cmbCategory.Text + "'," + BusinessLayer.UserId_Static + ")";
                        ExecuteType = "Save";
                    }

                    Result = objBL.Function_ExecuteNonQuery();

                    if (Result > 0)
                    {
                        if (ExecuteType == "Save")
                            objRL.ShowMessage(7, 1);
                        else if (ExecuteType == "Update")
                            objRL.ShowMessage(8, 1);
                        else
                            objRL.ShowMessage(9, 1);

                        FillGrid();
                        ClearAll();
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

        string MainQuery = string.Empty, WhereClause = string.Empty, OrderByClause = string.Empty, UserClause = string.Empty;
        int RowCount_Grid = 0, CurrentRowIndex = 0;

        private void txtNosBottles_TextChanged(object sender, EventArgs e)
        {
            Calculations();
        }



        private void txtFillingSpeedPerHour_TextChanged(object sender, EventArgs e)
        {
            Calculations();
        }

        private void txtBoxes_TextChanged(object sender, EventArgs e)
        {
            Calculations();
        }

        private void txtLabourRequired_TextChanged(object sender, EventArgs e)
        {
            Calculations();
        }

        private void txtFillingPerHour_TextChanged(object sender, EventArgs e)
        {
            Calculations();
        }

        private void txtMachineCapacity_TextChanged(object sender, EventArgs e)
        {
            Calculations();
        }

        private void txtProcessCapacity_TextChanged(object sender, EventArgs e)
        {
            Calculations();
        }

        private void txtFinalCapacity_TextChanged(object sender, EventArgs e)
        {
            Calculations();
        }

        bool SearchFlag = false;
        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            if (txtSearch.Text != "")
                SearchFlag = true;
            else
                SearchFlag = false;

            FillGrid();
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            ClearAll();
        }

        private void txtPackingSize_TextChanged(object sender, EventArgs e)
        {
            Calculations();
        }

        private void txtConversionRate_TextChanged(object sender, EventArgs e)
        {
            Calculations();
        }

        double ConversionRate = 0, MachineCapacity = 0, ProcessCapacity = 0, FinalCapacity = 0, Filling = 0, FillingSpeedPerHour = 0, PackingSize = 0, Boxes = 0, NosBottles = 0, FillingPerHour = 0;

        private void txtProcessCapacity_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtFilling.Focus();
        }

        private void txtPackingSize_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtLabourRequired.Focus();
        }

        private void txtLabourRequired_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                btnSave.Focus();
        }

        private void txtFilling_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtPackingSize.Focus();
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (objPC.DeleteFlagUR == 1)
            {
                try
                {
                    DialogResult dr = objRL.Delete_Record_Show_Message();
                    if (dr == System.Windows.Forms.DialogResult.Yes)
                    {
                        FlagDelete = true;
                        SaveDB();
                    }
                }
                catch (Exception ex1) { objRL.ErrorMessge(ex1.ToString()); }
                finally { GC.Collect(); }
            }
            else
            {
                objRL.ShowMessage(24, 4);
                return;
            }
        }

        private void txtFilling_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.FloatValue(sender, e, txtFilling);
        }

        private void txtFilling_TextChanged(object sender, EventArgs e)
        {
            Calculations();
        }

        private void txtMachineCapacity_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtProcessCapacity.Focus();
        }

        private void txtConversionRate_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtMachineCapacity.Focus();
        }

        private void cmbUnit_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtConversionRate.Focus();
        }

        private void txtProductName_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                cmbUnit.Focus();
        }

        private void txtProductCode_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtProductName.Focus();
        }

        private void txtProcessCapacity_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.FloatValue(sender, e, txtProcessCapacity);
        }

        private void txtMachineCapacity_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.FloatValue(sender, e, txtMachineCapacity);
        }

        private void Calculations()
        {
            ConversionRate = 0; MachineCapacity = 0; ProcessCapacity = 0; FinalCapacity = 0; FillingSpeedPerHour = 0; PackingSize = 0; Boxes = 0; NosBottles = 0; FillingPerHour = 0;

            double.TryParse(txtConversionRate.Text, out ConversionRate);//F5
            double.TryParse(txtMachineCapacity.Text, out MachineCapacity);//G5
            double.TryParse(txtProcessCapacity.Text, out ProcessCapacity);//H5
            double.TryParse(txtPackingSize.Text, out PackingSize);//K5
            double.TryParse(txtFilling.Text, out Filling);//K5

            FinalCapacity = Math.Min(MachineCapacity, ProcessCapacity); //I5
            txtFinalCapacity.Text = FinalCapacity.ToString();//I5

            FillingSpeedPerHour = FinalCapacity / Filling; //J5
            FillingSpeedPerHour = Math.Round(FillingSpeedPerHour);
            txtFillingSpeedPerHour.Text = FillingSpeedPerHour.ToString(); //J5

            //L5 = I5 / F5
            Boxes = FinalCapacity / ConversionRate;//L5
            Boxes = Math.Round(Boxes);
            txtBoxes.Text = Boxes.ToString();  //L5

            //M5 = //L5 * K5
            NosBottles = PackingSize * Boxes; //M5
            NosBottles = Math.Round(NosBottles);
            txtNosBottles.Text = NosBottles.ToString();  //M5

            //O5 = M5/60
            FillingPerHour = NosBottles / 60; //O5 
            FillingPerHour = Math.Round(FillingPerHour);
            txtFillingPerHour.Text = FillingPerHour.ToString(); //O5 
        }

        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (objPC.ViewFlag == 1)
            {
                try
                {
                    RowCount_Grid = dataGridView1.Rows.Count;
                    CurrentRowIndex = dataGridView1.CurrentRow.Index;

                    if (RowCount_Grid >= 0 && CurrentRowIndex >= 0)
                    {
                        //0 ProductId,
                        //1 ProductCode,
                        //2 ProductName,
                        //3 Unit
                        //4 ProductType as 'Product Type',
                        //5 ConversionRate as 'Conversion Rate',
                        //6 MachineCapacity as 'Machine Capacity',
                        //7 ProcessCapacity as 'Process Capacity',
                        //8 FinalCapacity as 'Final Capacity',
                        //9 Filling,
                        //10 FillingSpeedPerHour as 'Filling Speed Per Hour',
                        //11 PackingSize as 'Packing Size',
                        //12 Boxes,
                        //13 NosBottles as 'Nos Bottles',
                        //14 LabourRequired as 'Labour Required',
                        //15 FillingPerHour as 'Filling Per Hour'
                        //16 Category

                        ClearAll();
                        btnDelete.Enabled = true;
                        TableId = Convert.ToInt32(dataGridView1.Rows[e.RowIndex].Cells[0].Value);
                        txtProductID.Text = TableId.ToString();
                        txtProductCode.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[1].Value));
                        txtProductName.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[2].Value));
                        cmbUnit.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[3].Value));
                        cmbProductType.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[4].Value));
                        txtConversionRate.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[5].Value));
                        txtMachineCapacity.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[6].Value));
                        txtProcessCapacity.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[7].Value));
                        txtFinalCapacity.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[8].Value));
                        txtFilling.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[9].Value));
                        txtFillingSpeedPerHour.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[10].Value));
                        txtPackingSize.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[11].Value));
                        txtBoxes.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[12].Value));
                        txtNosBottles.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[13].Value));
                        txtLabourRequired.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[14].Value));
                        txtFillingPerHour.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[15].Value));
                        cmbCategory.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[16].Value));
                        Calculations();
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
            else
            {
                objRL.ShowMessage(24, 4);
                return;
            }
        }
        private void ProductMaster_Load(object sender, EventArgs e)
        {
            FillGrid();
            ClearAll();
        }
        private void ClearAll()
        {
            FlagDelete = false;
            TableId = 0;
            objEP.Clear();
            txtProductID.Text = "";
            txtProductCode.Text = "";
            txtProductName.Text = "";
            cmbUnit.SelectedIndex = -1;
            cmbProductType.SelectedIndex = -1;
            cmbCategory.SelectedIndex = -1;
            txtWeight.Text = "";
            txtConversionRate.Text = "";
            txtMachineCapacity.Text = "";
            txtProcessCapacity.Text = "";
            txtFinalCapacity.Text = "";
            txtFilling.Text = "";
            txtFillingSpeedPerHour.Text = "";
            txtPackingSize.Text = "";
            txtBoxes.Text = "";
            txtNosBottles.Text = "";
            txtLabourRequired.Text = "";
            txtFillingPerHour.Text = "";
            GetProductId();
            txtProductCode.Focus();
        }

        private void FillGrid()
        {
            DataSet ds = new DataSet();
            dataGridView1.DataSource = null;
            MainQuery = string.Empty;
            WhereClause = string.Empty;
            OrderByClause = string.Empty;
            UserClause = string.Empty;
            lblTotalCount.Text = "";

            try
            {
                if (SearchFlag && txtSearch.Text != "")
                    WhereClause = " and ProductName LIKE '%" + txtSearch.Text + "%'";

                MainQuery = "select ProductId,ProductCode as 'Product Code',ProductName as 'Product Name',Unit,ProductType as 'Product Type',ConversionRate as 'Conversion Rate',MachineCapacity as 'Machine Capacity',ProcessCapacity as 'Process Capacity',FinalCapacity as 'Final Capacity',Filling,FillingSpeedPerHour as 'Filling Speed Per Hour',PackingSize as 'Packing Size',Boxes,NosBottles as 'Nos Bottles',LabourRequired as 'Labour Required',FillingPerHour as 'Filling Per Hour',Category from productmaster where CancelTag=0 ";
                OrderByClause = " order by ProductName asc";

                objBL.Query = MainQuery + WhereClause + OrderByClause;
                ds = objBL.ReturnDataSet();

                if (ds.Tables[0].Rows.Count > 0)
                {
                    //0 ProductId,
                    //1 ProductCode,
                    //2 ProductName,
                    //3 Unit
                    //4 ProductType as 'Product Type',
                    //5 ConversionRate as 'Conversion Rate',
                    //6 MachineCapacity as 'Machine Capacity',
                    //7 ProcessCapacity as 'Process Capacity',
                    //8 FinalCapacity as 'Final Capacity',
                    //9 Filling,
                    //10 FillingSpeedPerHour as 'Filling Speed Per Hour',
                    //11 PackingSize as 'Packing Size',
                    //12 Boxes,
                    //13 NosBottles as 'Nos Bottles',
                    //14 LabourRequired as 'Labour Required',
                    //15 FillingPerHour as 'Filling Per Hour'
                    //16 Category

                    lblTotalCount.Text = "Total Count-" + ds.Tables[0].Rows.Count;
                    dataGridView1.DataSource = ds.Tables[0];
                    dataGridView1.Columns[0].Visible = false;
                    dataGridView1.Columns[1].Width = 100;
                    dataGridView1.Columns[2].Width = 250;
                    dataGridView1.Columns[3].Width = 40;
                    dataGridView1.Columns[4].Width = 60;
                    dataGridView1.Columns[5].Width = 60;
                    dataGridView1.Columns[6].Width = 60;
                    dataGridView1.Columns[7].Width = 60;
                    dataGridView1.Columns[8].Width = 60;
                    dataGridView1.Columns[9].Width = 60;
                    dataGridView1.Columns[10].Width = 60;
                    dataGridView1.Columns[11].Width = 60;
                    dataGridView1.Columns[12].Width = 60;
                    dataGridView1.Columns[13].Width = 60;
                    dataGridView1.Columns[14].Width = 70;
                    dataGridView1.Columns[15].Width = 70;
                    dataGridView1.Columns[16].Width = 80;
                }
            }
            catch (Exception ex1) { objRL.ErrorMessge(ex1.ToString()); }
            finally { GC.Collect(); }
        }
    }
}
