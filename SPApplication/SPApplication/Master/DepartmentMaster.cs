using BusinessLayerUtility;

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace SPApplication.HR
{
    public partial class DepartmentMaster : Form
    {
        BusinessLayer objBL = new BusinessLayer();
        RedundancyLogics objRL = new RedundancyLogics();
        DesignLayer objDL = new DesignLayer();
        ErrorProvider objEP = new ErrorProvider();
        QueryLayer objQL = new QueryLayer();
        PropertyClass objPC = new PropertyClass();

        int Result = 0, ProductId = 0, TableId = 0, RowCount_Grid = 0, CurrentRowIndex = 0;
        bool FlagDelete = false, SearchFlag = false;
        string MainQuery = string.Empty, WhereClause = string.Empty, OrderByClause = string.Empty, UserClause = string.Empty, ExecuteType = string.Empty;

        public DepartmentMaster()
        {
            InitializeComponent();
            objDL.SetDesignMaster(this, lblHeader, btnSave, btnClear, btnDelete, btnExit, BusinessResources.LBL_HEADER_DEPARTMENTMASTER);
            objRL.Get_UserRights_By_MenuName(BusinessResources.LBL_HEADER_MASTER);
            //objQL.Fill_Master_ComboBox(cmbLocation, "locationmaster");
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            ClearAll();
            //cmbLocation.SelectedIndex = -1;
        }

        private void ClearAll()
        {
            objEP.Clear();
            txtDepartmentName.Text = "";
            txtDepartmentId.Text = "";
            GetId();
            txtSearch.Text = "";
            FlagDelete = false;
            btnDelete.Enabled = false;
            txtDepartmentName.Focus();
        }

        private void txtDepartmentID_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                txtDepartmentName.Focus();
        }

        private void txtDepartmentName_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                btnSave.Focus();
        }

       
        private bool Validation()
        {
            if (txtDepartmentId.Text == "")
            {
                txtDepartmentId.Focus();
                objEP.SetError(txtDepartmentId, "Enter Department Id");
                return false;
            }
            else if(txtDepartmentName.Text == "")
            {
                txtDepartmentName.Focus();
                objEP.SetError(txtDepartmentName, "Enter Department Name");
                return false;
            }
            else
                return false;
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

        private void GetId()
        {
            txtDepartmentId.Text = Convert.ToString(objRL.ReturnMaxID_Increase("departmentmaster", "DepartmentId"));
        }

        private bool CheckExist()
        {
            DataSet ds = new DataSet();
            objBL.Query = "select DepartmentId from departmentmaster where DepartmentId='" + txtDepartmentName.Text + "' and CancelTag=0 and DepartmentId <> " + TableId + "";
            ds = objBL.ReturnDataSet();
            if (ds.Tables[0].Rows.Count > 0)
                return true;
            else
                return false;
        }

        protected void SaveDB()
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
                            objBL.Query = "update departmentmaster set CancelTag=1 where DepartmentId=" + TableId + "";
                            ExecuteType = "Delete";
                        }
                        else
                        {
                            //objBL.Query = "update AssetMaster set EntryDate='" + dtpDate.Value.ToShortDateString() + "',SiteId=" + cmbBusinessUnit.SelectedValue + ",DepartmentId=" + DepartmentId + ",DepartmentName='" + cmbDepartment.Text + "',AssetUserName='" + txtUserName.Text + "',ComputerName='" + txtComputerName.Text + "',AssetTypeId=" + cmbAssetType.SelectedValue + ",MakeId=" + cmbMake.SelectedValue + ",SerialNumber='" + txtSerialNumber.Text + "',OSName='" + cmbOSName.Text + "',OSType='" + cmbOSType.Text + "',OSTag='" + cmbOSTag.Text + "',Processor='" + cmbProcessor.Text + "',HDDType='" + cmbHDDType1.Text + "',SSD='" + cmbSSD.Text + "',HDD='" + cmbHDD.Text + "',RAM='" + cmbRAM.Text + "',IPAddressLAN='" + txtIPAddressLAN.Text + "',IPAddressWifi='" + txtIPAddressWifi.Text + "',OfficeVersion='" + cmbOfficeVersion.Text + "',AntivirusSerialNumber='" + txtAntivirusSerialNo.Text + "',AntivirusExpiryDate='" + dtpEndDate.Value.ToShortDateString() + "',Status='" + cmbStatus.Text + "',QRCodeData='" + txtQRCodeData.Text + "',ModifiedId=" + BusinessLayer.UserId_Static + " where ID=" + TableId + " and CancelTag=0";
                            objBL.Query = "update departmentmaster set Department='" + txtDepartmentName.Text + "',ModifiedUserId=" + BusinessLayer.UserId_Static + " where DepartmentId=" + TableId + " and CancelTag=0";
                            ExecuteType = "Update";

                            // SiteId=" + cmbBusinessUnit.SelectedValue + ",DepartmentId=" + DepartmentId + ",AssetUserName='" + txtUserName.Text + "',ComputerName='" + txtComputerName.Text + "',AssetTypeId=" + cmbAssetType.SelectedValue + ",MakeId=" + cmbMake.SelectedValue + ",SerialNumber='" + txtSerialNumber.Text + "',OSName='" + cmbOSName.Text + "',OSType='" + cmbOSType.Text + "',OSTag='" + cmbOSTag.Text + "',Processor='" + cmbProcessor.Text + "',HDDType='" + cmbHDDType1.Text + "',SSD='" + cmbSSD.Text + "',HDD='" + cmbHDD.Text + "',RAM='" + cmbRAM.Text + "',IPAddressLAN='" + txtIPAddressLAN.Text + "',IPAddressWifi='" + txtIPAddressWifi.Text + "',OfficeVersion='" + cmbOfficeVersion.Text + "',AntivirusSerialNumber='" + txtAntivirusSerialNo.Text + "',AntivirusExpiryDate='" + dtpEndDate.Value.ToShortDateString() + "',Status='" + cmbStatus.Text + "',QRCodeData='" + txtQRCodeData.Text + "',
                        }
                    }
                    else
                    {
                        //objBL.Query = "insert into AssetMaster(EntryDate,PurchaseDate,InvoiceNo,WarrantyPeriod,WarrantyEndDate,GRNNo,Status,QRCodeData,SiteId,DepartmentName,AssetUserName,ComputerName,AssetTypeId,MakeId,SerialNumber,OSName,OSType,OSTag,Processor,HDDType,SSD,HDD,RAM,IPAddressLAN,IPAddressWifi,OfficeVersion,AntivirusSerialNumber,AntivirusExpiryDate,Status,QRCodeData,UserId) values('"
                        objBL.Query = "insert into departmentmaster(Department,UserId) values('" + txtDepartmentName.Text + "'," + BusinessLayer.UserId_Static + ")";
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

        protected void FillGrid()
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
                    WhereClause = " and Department LIKE '%" + txtSearch.Text + "%'";

                MainQuery = "select DepartmentId,Department from departmentmaster where CancelTag=0 ";
                OrderByClause = " order by Department asc";

                objBL.Query = MainQuery + WhereClause + OrderByClause;
                ds = objBL.ReturnDataSet();

                if (ds.Tables[0].Rows.Count > 0)
                {
                    //0 DepartmentId,
                    //1 Department

                    lblTotalCount.Text = "Total Count-" + ds.Tables[0].Rows.Count;
                    dataGridView1.DataSource = ds.Tables[0];
                    dataGridView1.Columns[0].Visible = false;
                    dataGridView1.Columns[1].Width = 300;
                }
            }
            catch (Exception ex1) { objRL.ErrorMessge(ex1.ToString()); }
            finally { GC.Collect(); }
        }

        private void Department_Master_Load(object sender, EventArgs e)
        {
            ClearAll();
            FillGrid();
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
                        //0 DepartmentId,
                        //1 Department

                        ClearAll();
                        btnDelete.Enabled = true;
                        TableId = Convert.ToInt32(dataGridView1.Rows[e.RowIndex].Cells[0].Value);
                        txtDepartmentId.Text = TableId.ToString();
                        txtDepartmentName.Text = dataGridView1.Rows[e.RowIndex].Cells[1].Value.ToString();
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

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            if (txtSearch.Text != "")
                SearchFlag = true;
            else
                SearchFlag = false;

            FillGrid();
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
         
    }
}
