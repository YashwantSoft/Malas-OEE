using BusinessLayerUtility;
using SPApplication.Master;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.Remoting;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SPApplication.Authentication
{
    public partial class Users : Form
    {
        BusinessLayer objBL = new BusinessLayer();
        RedundancyLogics objRL = new RedundancyLogics();
        DesignLayer objDL = new DesignLayer();
        ErrorProvider objEP = new ErrorProvider();
        QueryLayer objQL = new QueryLayer();
        PropertyClass objPC = new PropertyClass();

        int TableId = 0, Result = 0, RowCount_Grid = 0, CurrentRowIndex = 0;
        bool DeleteFlag = false, SearchFlag = false;
        string MainQuery = string.Empty, WhereBasic = string.Empty, TableClause = string.Empty, WhereClause = string.Empty, OrderByClause = string.Empty;

        public Users()
        {
            InitializeComponent();
            objDL.SetDesignMaster(this, lblHeader, btnSave, btnClear, btnDelete, btnExit, "Add Users");
            objQL.Fill_Master_ComboBox(cmbUserType, "usertypemaster");
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            if (txtSearch.Text != "")
                SearchFlag = true;
            else
                SearchFlag = false;

            FillGrid();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            DeleteFlag = false;
            SaveDB();
        }

        private void Users_Load(object sender, EventArgs e)
        {
            ClearAll();
            FillGrid();
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            ClearAll();
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
                        ClearAll();
                        //0	U.UserId,
                        //1 U.UserTypeId,
                        //2 UTM.UserType as 'User Type',
                        //3 U.UserName as 'User Name'
                        
                        btnDelete.Enabled = true;
                        TableId = Convert.ToInt32(dataGridView1.Rows[e.RowIndex].Cells[0].Value);
                        cmbUserType.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[2].Value));
                        txtUserName.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[3].Value));
                        txtEmployeeName.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[4].Value));
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

        private void btnDelete_Click(object sender, EventArgs e)
        {
            DeleteFlag = true;
            SaveDB();
        }

        private void ClearAll()
        {
            TableId = 0; Result = 0; RowCount_Grid = 0; CurrentRowIndex = 0;
            objEP.Clear();
            cmbUserType.SelectedIndex = -1;
            txtUserName.Text = "";
            txtEmployeeName.Text = "";
            cmbUserType.Focus();
        }

        private bool Validation()
        {
            objEP.Clear();
            if (cmbUserType.SelectedIndex == -1)
            {
                objEP.SetError(cmbUserType, "Select User Type");
                return true;
            }
            else if (txtUserName.Text == "")
            {
                objEP.SetError(txtUserName, "Enter User Name");
                return true;
            }
            else
                return false;
        }

        private bool CheckExist()
        {
            DataSet ds = new DataSet();
            objBL.Query = "select UserId from Users where UserTypeId=" + cmbUserType.SelectedValue + " and UserName='" + txtUserName.Text + "' and UserId !=" + TableId + " ";
            ds = objBL.ReturnDataSet();

            if(ds.Tables[0].Rows.Count >0)
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
                    if (!DeleteFlag)
                    {
                        if (CheckExist())
                        {
                            objRL.ShowMessage(34, 9);
                            return;
                        }
                    }
                    if (TableId != 0)
                    {
                        if (DeleteFlag)
                            objBL.Query = "update Users set CancelTag=1 where UserId=" + objPC.UserId + "";
                        else
                            objBL.Query = "update Users set UserTypeId=" + cmbUserType.SelectedValue + ",UserName='" + txtUserName.Text + "',EmployeeName='" + txtEmployeeName.Text + "' where UserId=" + TableId + " and CancelTag=0";
                    }
                    else
                        objBL.Query = "insert into Users(UserTypeId,UserName,Password,EmployeeName) values(" + cmbUserType.SelectedValue + ",'" + txtUserName.Text + "','MNNAlAg0EZg=','"+txtEmployeeName.Text+"')";

                    Result = objBL.Function_ExecuteNonQuery();

                    if (Result > 0)
                    {
                        if (DeleteFlag)
                            objRL.ShowMessage(9, 1);
                        else
                            objRL.ShowMessage(7, 1);

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
            string Search = string.Empty;

            MainQuery = string.Empty; WhereBasic = string.Empty; TableClause = string.Empty; WhereClause = string.Empty; OrderByClause = string.Empty;

            dataGridView1.DataSource = null;
            lblTotalCount.Text = "";
            objPC.EmployeeName = "";

            DataSet ds = new DataSet();

            MainQuery = "select U.UserId,U.UserTypeId,UTM.UserType as 'User Type',U.UserName as 'User Name',EmployeeName as 'Employee Name' from Users U inner join usertypemaster UTM on U.UserTypeId=UTM.UserTypeId where U.CancelTag=0 and UTM.CancelTag=0 ";

            if(txtSearch.Text.Trim().Length > 0 && SearchFlag)
            {
                Search = "'%" + txtSearch.Text + "%'";
                WhereClause = " and U.UserName like '" + Search + "' OR UTM.UserType like '" + Search + "'";
            }
            
            OrderByClause = " order by UserName asc";
            objBL.Query = MainQuery +WhereClause+OrderByClause;

            ds = objBL.ReturnDataSet();

            if (ds.Tables[0].Rows.Count > 0)
            {
                //0	U.UserId,
                //1 U.UserTypeId,
                //2 UTM.UserType as 'User Type',
                //3 U.UserName as 'User Name'
                //4 EmployeeName

                lblTotalCount.Text = "Total Count-" + ds.Tables[0].Rows.Count;
                dataGridView1.DataSource = ds.Tables[0];
                dataGridView1.Columns[1].Visible = false;

                dataGridView1.Columns[0].Width = 60;
                dataGridView1.Columns[2].Width = 100;
                dataGridView1.Columns[3].Width = 150;
                dataGridView1.Columns[4].Width = 190;
            }
        }
    }
}
