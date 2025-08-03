using BusinessLayerUtility;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;
using System.Windows.Controls.Primitives;
using System.Windows.Forms;
//using static System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar;

namespace SPApplication.Master
{
    public partial class UserWiseLocation : Form
    {
        BusinessLayer objBL = new BusinessLayer();
        RedundancyLogics objRL = new RedundancyLogics();
        DesignLayer objDL = new DesignLayer();
        ErrorProvider objEP = new ErrorProvider();
        QueryLayer objQL = new QueryLayer();
        PropertyClass objPC = new PropertyClass();

        bool SearchFlag = false; bool FlagDelete = false;
        int RowCount_Grid = 0, CurrentRowIndex = 0, TableId = 0, Result = 0;//, LocationId = 0;

        public UserWiseLocation()
        {
            InitializeComponent();
            objDL.SetDesignMaster(this, lblHeader, btnSave, btnClear, btnDelete, btnExit, "User Wise Location");

            objRL.Fill_Users_By(clbEmployee);
            objRL.Fill_Location_CheckedListBox(clbLocation);
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (objPC.AddFlag == 1)
            {
                try
                {
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

        private bool Validation_CheckListBox(CheckedListBox clb)
        {
            objEP.Clear();
            bool checkCheck = false;

            for (int i = 0; i < clb.Items.Count; i++)
            {
                checkCheck = clb.GetItemChecked(i);
                if (checkCheck)
                    break;
            }
            return checkCheck;
        }
 

        private bool Validation()
        {
            objEP.Clear();
            if (!Validation_CheckListBox(clbEmployee))
            {
                clbEmployee.Focus();
                objEP.SetError(clbEmployee, "Select Users");
                return true;
            }
            else if (!Validation_CheckListBox(clbLocation))
            {
                clbLocation.Focus();
                objEP.SetError(clbLocation, "Select Location");
                return true;
            }
            else
                return false;
        }
        protected void SaveDB()
        {
            if (!Validation())
            {
                int UserId = 0, LocationId = 0;

                foreach (object itemChecked in clbEmployee.CheckedItems)
                {
                    UserId = 0; LocationId = 0;
                    DataRowView castedItem = itemChecked as DataRowView;
                    int? userid = Convert.ToInt32(castedItem[0]);
                    UserId = (int)userid;

                    if (UserId != 0)
                    {
                        objBL.Query = "delete from userwiselocation where UserId=" + UserId + " and CancelTag=0";
                        Result = objBL.Function_ExecuteNonQuery();

                        foreach (object itemMenu in clbLocation.CheckedItems)
                        {
                            DataRowView castedLocation = itemMenu as DataRowView;
                            int? locationid = Convert.ToInt32(castedLocation[0]);
                            LocationId = (int)locationid;
                             
                            objBL.Query = "insert into userwiselocation(UserId,LocationId,LoginId) values(" + UserId + "," + LocationId + "," + BusinessLayer.UserId_Static + ")";
                            Result = objBL.Function_ExecuteNonQuery();
                        }
                    }
                }
                if (Result > 0)
                {
                    objRL.ShowMessage(7, 1);
                    FillGrid();
                }
            }
        }

        //string WhereClause = string.Empty;

        protected void FillGrid()
        {
            lblTotalCount.Text = "";
            dataGridView1.DataSource = null;
            DataSet ds = new DataSet();
            objPC.Department = txtSearch.Text;

            if (SearchFlag)
                WhereClause = " and E.EmployeeName LIKE '%" + txtSearch.Text + "%'";
            else
                WhereClause = "";

            objBL.Query = "select UR.UserWiseLocationId,UR.UserId,UTM.UserType as 'User Type',E.UserName as 'User Name',E.EmployeeName as 'Employee Name',UR.LocationId,L.LocationName as 'Location Name' from userwiselocation UR inner join Users E on E.UserId=UR.UserId inner join locationmaster L on L.LocationId=UR.LocationId inner join usertypemaster UTM on UTM.UserTypeId=E.UserTypeId where UTM.CancelTag=0 and UR.CancelTag=0 and E.CancelTag=0 and L.CancelTag=0 " + WhereClause + " order by E.EmployeeName asc";
            ds = objBL.ReturnDataSet();

            if (ds.Tables[0].Rows.Count > 0)
            {
                lblTotalCount.Text = "Total-" + ds.Tables[0].Rows.Count;
                //0 UR.UserWiseLocationId,
                //1 UR.UserId,
                //2 UTM.UserType as 'User Type',
                //3 E.UserName as 'User Name',
                //4 E.EmployeeName as 'Employee Name',
                //5 UR.LocationId,
                //6 L.LocationName as 'Location Name'

                dataGridView1.DataSource = ds.Tables[0];
                dataGridView1.Columns[0].Visible = false;
                dataGridView1.Columns[1].Visible = false;
                dataGridView1.Columns[5].Visible = false;

                dataGridView1.Columns[1].Width = 200;
                dataGridView1.Columns[2].Width = 200;
                dataGridView1.Columns[3].Width = 200;
                dataGridView1.Columns[4].Width = 200;
                dataGridView1.Columns[6].Width = 200;
            }
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            ClearAll();
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

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        string DepartmentConcat = string.Empty, InchargeConcat = string.Empty;

       

        private void Checked_TrueFalse(CheckedListBox clb, bool Flag)
        {
            for (int i = 0; i < clb.Items.Count; i++)
            {
                clb.SetItemChecked(i, Flag);
            }
        }

        private void cbSelectAllEmployee_CheckedChanged(object sender, EventArgs e)
        {
            if (cbSelectAllEmployee.Checked)
                Users_CheckBox_Checked(true);
            else
                Users_CheckBox_Checked(false);
        }

        private void Users_CheckBox_Checked(bool check)
        {
            for (int i = 0; i < clbEmployee.Items.Count; i++)
            {
                clbEmployee.SetItemChecked(i, check);
            }
        }

        private void cbSelectAllLocation_CheckedChanged(object sender, EventArgs e)
        {
            if (cbSelectAllLocation.Checked)
                Location_CheckBox_Checked(true);
            else
                Location_CheckBox_Checked(false);
        }

        int UserId = 0,LocationId=0;
        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                TableId = 0; UserId = 0; LocationId = 0;

                RowCount_Grid = dataGridView1.Rows.Count;
                CurrentRowIndex = dataGridView1.CurrentRow.Index;

                if (RowCount_Grid >= 0 && CurrentRowIndex >= 0)
                {
                    ClearAll();
                    //0 UR.UserWiseLocationId,
                    //1 UR.UserId,
                    //2 UTM.UserType as 'User Type',
                    //3 E.UserName as 'User Name',
                    //4 E.EmployeeName as 'Employee Name',
                    //5 UR.LocationId,
                    //6 L.LocationName as 'Location Name'

                    btnDelete.Enabled = true;
                    TableId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[0].Value)));
                    UserId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[1].Value)));
                    Set_User_Value();
                    LocationId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[5].Value)));
                    Set_Location_Value();
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

        List<int> objUser = new List<int>();
        int UserId_Checked = 0;
        private void Set_User_Value()
        {
            UserId_Checked = 0;
            DataSet ds = new DataSet();
            objBL.Query = "select UserId,UserTypeId,UserName,CONCAT(EmployeeName,'-',UserName) as 'ConcatEmp' from users where CancelTag=0 and UserId=" + UserId + "";
            ds = objBL.ReturnDataSet();

            if (ds.Tables[0].Rows.Count > 0)
            {
                objUser = new List<int>();

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    if (!string.IsNullOrEmpty(Convert.ToString(ds.Tables[0].Rows[i]["UserId"])))
                    {
                        int Iid = Convert.ToInt32(ds.Tables[0].Rows[i]["UserId"].ToString());
                        objUser.Add(Iid);
                    }
                }

                for (int i = 0; i < clbEmployee.Items.Count; i++)
                {
                    DataRowView castedItem = clbEmployee.Items[i] as DataRowView;
                    int? id = Convert.ToInt32(castedItem[0]);
                    UserId_Checked = (int)id;
                     
                    if (objUser.Contains(UserId_Checked))
                        clbEmployee.SetItemChecked(i, true);
                }
            }
        }

        List<int> objLocation = new List<int>();

        private void Set_Location_Value()
        {
            UserId_Checked = 0;
            DataSet ds = new DataSet();
            //objBL.Query = "select LocationId,LocationName,Description from locationmaster where CancelTag=0 and LocationId=" + LocationId + "";

            objBL.Query = "select LocationId from userwiselocation where CancelTag=0 and UserId=" + UserId + "";

            ds = objBL.ReturnDataSet();

            if (ds.Tables[0].Rows.Count > 0)
            {
                objLocation = new List<int>();
               
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    if (!string.IsNullOrEmpty(Convert.ToString(ds.Tables[0].Rows[i]["LocationId"])))
                    {
                        int Iid = Convert.ToInt32(ds.Tables[0].Rows[i]["LocationId"].ToString());
                        objLocation.Add(Iid);
                    }
                }

                for (int i = 0; i < clbLocation.Items.Count; i++)
                {
                    UserId_Checked = 0;
                    DataRowView castedItem = clbLocation.Items[i] as DataRowView;
                    int? id = Convert.ToInt32(castedItem[0]);
                    UserId_Checked = (int)id;
                     
                    if (objLocation.Contains(UserId_Checked))
                        clbLocation.SetItemChecked(i, true);
                }
            }
        }

        private void Location_CheckBox_Checked(bool check)
        {
            for (int i = 0; i < clbLocation.Items.Count; i++)
            {
                clbLocation.SetItemChecked(i, check);
            }
        }

        private void ClearAll()
        {
            TableId = 0;
            objEP.Clear();
            Checked_TrueFalse(clbEmployee, false);
            Checked_TrueFalse(clbLocation, false);
             
            //cbSelectAll.Checked = false;
            //cmbUserType.SelectedIndex = -1;
            cbSelectAllEmployee.Checked = false;
            //cbSelectAllMenuList.Checked = false;
            //cbSelectAll.Checked = false;
        }

        private void UserWiseLocation_Load(object sender, EventArgs e)
        {
            ClearAll();
            FillGrid();
        }

        string WhereClause = string.Empty;
         
    }
}
