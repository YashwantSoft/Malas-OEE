using BusinessLayerUtility;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SPApplication.Authentication
{
    public partial class UserRights : Form
    {
        BusinessLayer objBL = new BusinessLayer();
        RedundancyLogics objRL = new RedundancyLogics();
        DesignLayer objDL = new DesignLayer();
        ErrorProvider objEP = new ErrorProvider();
        QueryLayer objQL = new QueryLayer();
        PropertyClass objPC = new PropertyClass();

        bool SearchFlag = false;bool FlagDelete = false;
        int RowCount_Grid = 0, CurrentRowIndex = 0, TableId = 0, Result = 0;//, LocationId = 0;

        string DepartmentConcat = string.Empty, InchargeConcat = string.Empty;
        //int FinalApprovalId = 0, HRApprovalId = 0;

        public UserRights()
        {
            InitializeComponent();
            objDL.SetDesignMaster(this, lblHeader, btnSave, btnClear, btnDelete, btnExit, BusinessResources.LBL_HEADER_USERSRIGHTS);
            //objRL.Fill_Employees_CheckedListBox(clbEmployee);

            objRL.Get_UserRights_By_MenuName(BusinessResources.LBL_HEADER_USERSRIGHTS);
            objQL.Fill_Master_ComboBox(cmbUserType, "usertypemaster");
        }

        string MenuListIn = string.Empty, UType = string.Empty;

        private void CategoryWiseMenuList()
        {
            clbEmployee.DataSource = null;
            clbMenu.DataSource = null;
            if (cmbUserType.SelectedIndex > -1)
            {
                UType = cmbUserType.Text;
                //objRL.ColumnNameCM = "MenuList";
                //objRL.Fill_CheckListBox_Comman(clbMenu);

                MenuListIn = " and MenuList IN('" + BusinessResources.Add_User_M + "', " +
                                             "'" + BusinessResources.Asset_Master_M + "', " +
                                             "'" + BusinessResources.Attendance_M + "', " +
                                             "'" + BusinessResources.Change_Password_M + "', " +
                                             "'" + BusinessResources.Check_ESSL_Attendance_M + "', " +
                                             "'" + BusinessResources.Client_Machine_M + "', " +
                                             "'" + BusinessResources.Comp_Off_Application_M + "', " +
                                             "'" + BusinessResources.View_Comp_Off_Application_M + "', " +
                                             "'" + BusinessResources.Comp_Off_Report_M + "', " +
                                             "'" + BusinessResources.Daily_And_Monthly_Attendance_Report_M + "', " +
                                             "'" + BusinessResources.Data_Backup_M + "', " +
                                             "'" + BusinessResources.Documents_M + "', " +
                                             "'" + BusinessResources.Download_Template_M + "', " +
                                             "'" + BusinessResources.Duration_Wise_Report_M + "', " +
                                             "'" + BusinessResources.ESSL_Data_M + "', " +
                                             "'" + BusinessResources.Export_M + "', " +
                                             "'" + BusinessResources.Import_M + "', " +
                                             "'" + BusinessResources.Individual_User_Attendance_Report_M + "', " +
                                             "'" + BusinessResources.Individual_User_Comp_Off_Report_M + "', " +
                                             "'" + BusinessResources.Individual_User_Leave_Report_M + "', " +
                                             "'" + BusinessResources.Leave_Application_M + "', " +
                                             "'" + BusinessResources.Leave_Report_M + "', " +
                                             "'" + BusinessResources.Letters_M + "', " +
                                             "'" + BusinessResources.Location_And_Department_Wise_Attendance_Report_M + "', " +
                                             "'" + BusinessResources.Location_And_Department_Wise_Comp_Off_Report_M + "', " +
                                             "'" + BusinessResources.Location_And_Department_Wise_Leave_Report_M + "', " +
                                             "'" + BusinessResources.Location_And_Department_Wise_Users_M + "', " +
                                             "'" + BusinessResources.Location_Wise_Department_M + "', " +
                                             "'" + BusinessResources.AttendanceSalaryReport_M + "', " +
                                             "'" + BusinessResources.Manpower_Dashboard_M + "', " +
                                             "'" + BusinessResources.Manpower_Requisition_M + "', " +
                                             "'" + BusinessResources.Master_M + "', " +
                                             "'" + BusinessResources.Memo_M + "', " +
                                             "'" + BusinessResources.Outdoor_Punch_M + "', " +
                                             "'" + BusinessResources.Raise_Ticket_M + "', " +
                                             "'" + BusinessResources.User_Rights_M + "', " +
                                             "'" + BusinessResources.View_Leave_Application_M + "', " +
                                             "'" + BusinessResources.View_Tickets_M + "', " +
                                             "'" + BusinessResources.Working_Hours_Report_M + "')";

                //if (UType == BusinessResources.USER_TYPE_ADMINISTRATOR || UType == BusinessResources.USER_TYPE_HROFFICER)
                //{
                //    MenuListIn = " and MenuList IN('" + BusinessResources.Add_User_M + "', " +
                //                                 "'" + BusinessResources.Asset_Master_M + "', " +
                //                                 "'" + BusinessResources.Attendance_M + "', " +
                //                                 "'" + BusinessResources.Change_Password_M + "', " +
                //                                 "'" + BusinessResources.Check_ESSL_Attendance_M + "', " +
                //                                 "'" + BusinessResources.Client_Machine_M + "', " +
                //                                 "'" + BusinessResources.Comp_Off_Application_M + "', " +
                //                                 "'" + BusinessResources.View_Comp_Off_Application_M + "', " +
                //                                 "'" + BusinessResources.Comp_Off_Report_M + "', " +
                //                                 "'" + BusinessResources.Daily_And_Monthly_Attendance_Report_M + "', " +
                //                                 "'" + BusinessResources.Data_Backup_M + "', " +
                //                                 "'" + BusinessResources.Documents_M + "', " +
                //                                 "'" + BusinessResources.Download_Template_M + "', " +
                //                                 "'" + BusinessResources.Duration_Wise_Report_M + "', " +
                //                                 "'" + BusinessResources.ESSL_Data_M + "', " +
                //                                 "'" + BusinessResources.Export_M + "', " +
                //                                 "'" + BusinessResources.Import_M + "', " +
                //                                 "'" + BusinessResources.Indvisual_User_Attendance_Report_M + "', " +
                //                                 "'" + BusinessResources.Indvisual_User_Comp_Off_Report_M + "', " +
                //                                 "'" + BusinessResources.Indvisual_User_Leave_Report_M + "', " +
                //                                 "'" + BusinessResources.Leave_Application_M + "', " +
                //                                 "'" + BusinessResources.Leave_Report_M + "', " +
                //                                 "'" + BusinessResources.Letters_M + "', " +
                //                                 "'" + BusinessResources.Location_And_Department_Wise_Attendance_Report_M + "', " +
                //                                 "'" + BusinessResources.Location_And_Department_Wise_Comp_Off_Report_M + "', " +
                //                                 "'" + BusinessResources.Location_And_Department_Wise_Leave_Report_M + "', " +
                //                                 "'" + BusinessResources.Location_And_Department_Wise_Users_M + "', " +
                //                                 "'" + BusinessResources.Location_Wise_Department_M + "', " +
                //                                 "'" + BusinessResources.Manpower_Dashboard_M + "', " +
                //                                 "'" + BusinessResources.Manpower_Requisition_M + "', " +
                //                                 "'" + BusinessResources.Master_M + "', " +
                //                                 "'" + BusinessResources.Memo_M + "', " +
                //                                 "'" + BusinessResources.Outdoor_Punch_M + "', " +
                //                                 "'" + BusinessResources.Raise_Ticket_M + "', " +
                //                                 "'" + BusinessResources.User_Rights_M + "', " +
                //                                 "'" + BusinessResources.View_Leave_Application_M + "', " +
                //                                 "'" + BusinessResources.View_Tickets_M + "', " +
                //                                 "'" + BusinessResources.Working_Hours_Report_M +"')";
                //}
                //else if (UType == BusinessResources.USER_TYPE_PLANTHEAD || UType == BusinessResources.USER_TYPE_MANAGER)
                //{
                //    MenuListIn = " and MenuList IN('" + BusinessResources.Attendance_M + "', " +
                //                                 "'" + BusinessResources.Change_Password_M + "', " +
                //                                 "'" + BusinessResources.Client_Machine_M + "', " +
                //                                 "'" + BusinessResources.Comp_Off_Application_M + "', " +
                //                                 "'" + BusinessResources.View_Comp_Off_Application_M + "', " +
                //                                 "'" + BusinessResources.Documents_M + "', " +
                //                                 "'" + BusinessResources.Duration_Wise_Report_M + "', " +
                //                                 "'" + BusinessResources.Indvisual_User_Attendance_Report_M + "', " +
                //                                 "'" + BusinessResources.Indvisual_User_Comp_Off_Report_M + "', " +
                //                                 "'" + BusinessResources.Indvisual_User_Leave_Report_M + "', " +
                //                                 "'" + BusinessResources.Leave_Application_M + "', " +
                //                                 "'" + BusinessResources.Location_And_Department_Wise_Attendance_Report_M + "', " +
                //                                 "'" + BusinessResources.Location_And_Department_Wise_Comp_Off_Report_M + "', " +
                //                                 "'" + BusinessResources.Location_And_Department_Wise_Leave_Report_M + "', " +
                //                                 "'" + BusinessResources.Location_And_Department_Wise_Users_M + "', " +
                //                                 "'" + BusinessResources.Location_Wise_Department_M + "', " +
                //                                 "'" + BusinessResources.Manpower_Dashboard_M + "', " +
                //                                 "'" + BusinessResources.Manpower_Requisition_M + "', " +
                //                                 "'" + BusinessResources.Memo_M + "', " +
                //                                 "'" + BusinessResources.Raise_Ticket_M + "', " +
                //                                 "'" + BusinessResources.View_Leave_Application_M + "', " +
                //                                 "'" + BusinessResources.View_Tickets_M + "', " +
                //                                 "'" + BusinessResources.Working_Hours_Report_M + "')";
                //}
                //else if (UType == BusinessResources.USER_TYPE_SENIOROFFICER)
                //{
                //    MenuListIn = " and MenuList IN('" + BusinessResources.Attendance_M + "', " +
                //                                 "'" + BusinessResources.Change_Password_M + "', " +
                //                                 "'" + BusinessResources.Client_Machine_M + "', " +
                //                                 "'" + BusinessResources.Comp_Off_Application_M + "', " +
                //                                 "'" + BusinessResources.Documents_M + "', " +
                //                                 "'" + BusinessResources.Duration_Wise_Report_M + "', " +
                //                                 "'" + BusinessResources.Indvisual_User_Attendance_Report_M + "', " +
                //                                 "'" + BusinessResources.Indvisual_User_Comp_Off_Report_M + "', " +
                //                                 "'" + BusinessResources.Indvisual_User_Leave_Report_M + "', " +
                //                                 "'" + BusinessResources.Leave_Application_M + "', " +
                //                                 "'" + BusinessResources.Location_And_Department_Wise_Attendance_Report_M + "', " +
                //                                 "'" + BusinessResources.Location_And_Department_Wise_Comp_Off_Report_M + "', " +
                //                                 "'" + BusinessResources.Location_And_Department_Wise_Leave_Report_M + "', " +
                //                                 "'" + BusinessResources.Location_And_Department_Wise_Users_M + "', " +
                //                                 "'" + BusinessResources.Location_Wise_Department_M + "', " +
                //                                 "'" + BusinessResources.Manpower_Dashboard_M + "', " +
                //                                 "'" + BusinessResources.Manpower_Requisition_M + "', " +
                //                                 "'" + BusinessResources.Memo_M + "', " +
                //                                 "'" + BusinessResources.Raise_Ticket_M + "', " +
                //                                 "'" + BusinessResources.View_Leave_Application_M + "', " +
                //                                 "'" + BusinessResources.View_Tickets_M + "', " +
                //                                 "'" + BusinessResources.Working_Hours_Report_M + "')";
                //}
                //else if (UType == BusinessResources.USER_TYPE_OFFICER || UType == BusinessResources.USER_TYPE_INCHARGE || UType == BusinessResources.USER_TYPE_SUPERVISOR)
                //{
                //    MenuListIn = " and MenuList IN('" + BusinessResources.Change_Password_M + "', " +
                //                                 "'" + BusinessResources.Client_Machine_M + "', " +
                //                                 "'" + BusinessResources.Comp_Off_Application_M + "', " +
                //                                 "'" + BusinessResources.Documents_M + "', " +
                //                                 "'" + BusinessResources.Indvisual_User_Attendance_Report_M + "', " +
                //                                 "'" + BusinessResources.Indvisual_User_Comp_Off_Report_M + "', " +
                //                                 "'" + BusinessResources.Indvisual_User_Leave_Report_M + "', " +
                //                                 "'" + BusinessResources.Leave_Application_M + "', " +
                //                                 "'" + BusinessResources.Raise_Ticket_M + "', " +
                //                                 "'" + BusinessResources.View_Tickets_M + "')";
                //}
                //else
                //{
                //    MenuListIn = "";
                //}

                if (!string.IsNullOrEmpty(Convert.ToString(MenuListIn)))
                {
                    MenuListIn = "";
                    objRL.MenuIn = MenuListIn;
                    objRL.ColumnNameCM = "MenuList";
                    objRL.Fill_CheckListBox_Comman(clbMenu);
                }

                //objRL.Fill_Employees_CheckedListBox_By_UserType(clbEmployee, UType);

                objRL.Fill_Users_By_UserType(clbEmployee,Convert.ToInt32(cmbUserType.SelectedValue));
                objRL.Fill_Menu_List(clbMenu);
            }
        }

        private void UserRights_Load(object sender, EventArgs e)
        {
            FillGrid();
        }

        private void Fill_Menu()
        {
            DataSet ds=new DataSet();
            objBL.Query = "select MenuId,MenuName,HeaderName from menumaster where CancelTag=0";
            ds = objBL.ReturnDataSet();

            if(ds.Tables[0].Rows.Count > 0)
            {
               
            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void cbSelectAll_CheckedChanged(object sender, EventArgs e)
        {
            Checked_TrueFalse();
        }

        private void Checked_TrueFalse()
        {
            AddFlag = 0; EditFlag = 0; DeleteFlag = 0; ViewFlag = 0; ApprovalFlag = 0;
            if (cbSelectAll.Checked)
            {
                cbAdd.Checked = true;
                cbEdit.Checked = true;
                cbDelete.Checked = true;
                cbView.Checked = true;
                cbApproval.Checked = true;
                AddFlag = 1; EditFlag = 1; DeleteFlag = 1; ViewFlag = 1; ApprovalFlag = 1;
            }
            else
            {
                cbAdd.Checked = false;
                cbEdit.Checked = false;
                cbDelete.Checked = false;
                cbView.Checked = false;
                cbApproval.Checked = false;
            }
        }

        int AddFlag = 0, EditFlag = 0, DeleteFlag = 0, ViewFlag = 0, ApprovalFlag = 0;

        private void Get_CheckBox_Checked(CheckBox cb, ref int FlagCheck)
        {
            if (cb.Checked)
                FlagCheck = 1;
            else
                FlagCheck = 0;
        }

        private void cbAdd_CheckedChanged(object sender, EventArgs e)
        {
            Get_CheckBox_Checked(cbAdd, ref AddFlag);
        }

        private void cbEdit_CheckedChanged(object sender, EventArgs e)
        {
            Get_CheckBox_Checked(cbEdit, ref EditFlag);
        }

        private void cbDelete_CheckedChanged(object sender, EventArgs e)
        {
            Get_CheckBox_Checked(cbDelete, ref DeleteFlag);
        }

        private void cbView_CheckedChanged(object sender, EventArgs e)
        {
            Get_CheckBox_Checked(cbView, ref ViewFlag);
        }

        private void cbApproval_CheckedChanged(object sender, EventArgs e)
        {
            Get_CheckBox_Checked(cbApproval, ref ApprovalFlag);
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

        int UserId_Checked = 0, MenuId_Checked=0;
        int UserId = 0, MenuId=0, PlantHeadId = 0, HRId = 0;

        private bool Validation()
        {
            objEP.Clear();

            if (clbEmployee.CheckedItems.Count == 0)
            {
                objEP.SetError(clbEmployee, "Select Employee");
                clbEmployee.Focus();
                return true;
            }
            else if (clbMenu.CheckedItems.Count == 0)
            {
                objEP.SetError(clbMenu, "Select Menu");
                clbMenu.Focus();
                return true;
            }
            else if (!cbSelectAll.Checked && !cbAdd.Checked && !cbEdit.Checked && !cbDelete.Checked && !cbView.Checked && !cbApproval.Checked)
            {
                objEP.SetError(cbSelectAll, "Select at least one");
                cbSelectAll.Focus();
                return true;
            }
            else
                return false;
        }

        string MenuName = string.Empty;
        private void SaveDB()
        {
            if (!Validation())
            {
                MenuName = string.Empty;
                UserId = 0; PlantHeadId = 0; HRId = 0;

                foreach (object itemChecked in clbEmployee.CheckedItems)
                {
                    DataRowView castedItem = itemChecked as DataRowView;
                    int? id = Convert.ToInt32(castedItem[0]);
                    UserId_Checked = (int)id;

                    if (UserId_Checked != 0)
                    {
                        objBL.Query = "delete from UserRights where UserId=" + UserId_Checked + " and CancelTag=0";
                        Result = objBL.Function_ExecuteNonQuery();

                        foreach (object itemMenu in clbMenu.CheckedItems)
                        {
                            DataRowView castedItemMenu = itemMenu as DataRowView;
                            int? menuid = Convert.ToInt32(castedItemMenu[0]);
                            MenuId_Checked = (int)menuid;

                            //MenuName = Convert.ToString(castedItemMenu[1]);
                            //MenuName = objRL.CheckNullString(MenuName);

                            objBL.Query = "insert into UserRights(UserId,MenuId,AddFlag,EditFlag,DeleteFlag,ViewFlag,ApprovalFlag,LoginId) values(" + UserId_Checked + ",'" + MenuId_Checked + "'," + AddFlag + "," + EditFlag + "," + DeleteFlag + "," + ViewFlag + "," + ApprovalFlag + "," + BusinessLayer.UserId_Static + ")";
                            Result = objBL.Function_ExecuteNonQuery();

                            //DataSet ds = new DataSet();
                            //objBL.Query = "select UserRightsId,EmployeeId,MenuName,AddFlag,EditFlag,DeleteFlag,ViewFlag,ApprovalFlag,UserId from UserRights where EmployeeId=" + EmployeeId_Checked + " and MenuName='" + MenuName + "' and CancelTag=0";
                            //ds = objBL.ReturnDataSet();

                            //if (ds.Tables[0].Rows.Count > 0)
                            //{
                            //    int UserRightsId = 0;
                            //    UserRightsId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[0]["UserRightsId"])));
                            //    objBL.Query = "update UserRights set MenuName='" + MenuName + "',AddFlag=" + AddFlag + ",EditFlag=" + EditFlag + ",DeleteFlag=" + DeleteFlag + ",ViewFlag=" + ViewFlag + ",ApprovalFlag=" + ApprovalFlag + " where UserRightsId=" + UserRightsId + " and CancelTag=0"; //,MenuName,AddFlag,EditFlag,DeleteFlag,ViewFlag,ApprovalFlag,UserId) values(" + EmployeeId_Checked + ",'" + MenuName + "'," + AddFlag + "," + EditFlag + "," + DeleteFlag + "," + ViewFlag + "," + ApprovalFlag + "," + BusinessLayer.LoginId_Static + ")";
                            //    Result = objBL.Function_ExecuteNonQuery();
                            //}
                            //else
                            //{
                            //    objBL.Query = "insert into UserRights(EmployeeId,MenuName,AddFlag,EditFlag,DeleteFlag,ViewFlag,ApprovalFlag,UserId) values(" + EmployeeId_Checked + ",'" + MenuName + "'," + AddFlag + "," + EditFlag + "," + DeleteFlag + "," + ViewFlag + "," + ApprovalFlag + "," + BusinessLayer.LoginId_Static + ")";
                            //    Result = objBL.Function_ExecuteNonQuery();
                            //}
                        }

                        //for (int i = 0; i < clbMenu.SelectedItems.Count; i++)
                        //{
                        //    MenuName = string.Empty;
                        //    MenuName = clbMenu.Items[i].ToString();
                        //}
                    }
                }
                if (Result > 0)
                {
                    objRL.ShowMessage(7, 1);
                    FillGrid();
                }
            }
            else
            {
                objRL.ShowMessage(17, 4);
                return;
            }
        }

        string WhereClause = string.Empty;

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

            objBL.Query = "select UR.UserRightsId,UR.UserId,E.EmployeeName,UR.MenuId,MM.HeaderName,MM.MenuName,UR.AddFlag,UR.EditFlag,UR.DeleteFlag,UR.ViewFlag,UR.ApprovalFlag,UTM.UserType from UserRights UR inner join Users E on E.UserId=UR.UserId inner join menumaster MM on MM.MenuId=UR.MenuId inner join usertypemaster UTM on UTM.UserTypeId=E.UserTypeId where UTM.CancelTag=0 and UR.CancelTag=0 and E.CancelTag=0 and MM.CancelTag=0 " + WhereClause + " order by E.EmployeeName asc";
            ds = objBL.ReturnDataSet();

            if (ds.Tables[0].Rows.Count > 0)
            {

                lblTotalCount.Text = "Total-" + ds.Tables[0].Rows.Count;
                //0 UR.UserRightsId,
                //1 UR.UserId,
                //2 E.EmployeeName,
                //3 UR.MenuId
                //4 UR.HeaderName,
                //5 MM.MenuName,
                //6 UR.AddFlag,
                //7 UR.EditFlag,
                //8 UR.DeleteFlag,
                //9 UR.ViewFlag,
                //10 UR.ApprovalFlag
                //11 UTM.UserType

                dataGridView1.DataSource = ds.Tables[0];
                dataGridView1.Columns[1].Visible = false;
                dataGridView1.Columns[3].Visible = false;

                dataGridView1.Columns[2].Width = 200;
                dataGridView1.Columns[4].Width = 200;
                dataGridView1.Columns[5].Width = 100;
                dataGridView1.Columns[6].Width = 100;
                dataGridView1.Columns[7].Width = 100;
                dataGridView1.Columns[8].Width = 100;
                dataGridView1.Columns[9].Width = 100;
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
                    FlagDelete = true;
                    //SaveDB();
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

        private void Checked_TrueFalse(CheckedListBox clb, bool Flag)
        {
            for (int i = 0; i < clb.Items.Count; i++)
            {
                clb.SetItemChecked(i, Flag);
            }
        }

        private void ClearAll()
        {
            objEP.Clear();
            Checked_TrueFalse(clbEmployee, false);
            Checked_TrueFalse(clbMenu, false);
            AddFlag = 0; EditFlag = 0; DeleteFlag = 0; ViewFlag = 0; ApprovalFlag = 0;
            cbSelectAll.Checked = false;
            cmbUserType.SelectedIndex = -1;
            cbSelectAllEmployee.Checked = false;
            cbSelectAllMenuList.Checked = false;
            cbSelectAll.Checked = false;
        }

        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                MenuName = string.Empty;
                TableId = 0;
                UserId = 0;

                RowCount_Grid = dataGridView1.Rows.Count;
                CurrentRowIndex = dataGridView1.CurrentRow.Index;

                if (RowCount_Grid >= 0 && CurrentRowIndex >= 0)
                {
                    ClearAll();

                    //0 UR.UserRightsId,
                    //1 UR.UserId,
                    //2 E.EmployeeName,
                    //3 UR.MenuId
                    //4 UR.HeaderName,
                    //5 MM.MenuName,
                    //6 UR.AddFlag,
                    //7 UR.EditFlag,
                    //8 UR.DeleteFlag,
                    //9 UR.ViewFlag,
                    //10 UR.ApprovalFlag

                    btnDelete.Enabled = true;
                    cmbUserType.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[11].Value));
                    CategoryWiseMenuList();

                    TableId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[0].Value)));
                    UserId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[1].Value)));
                    Set_Employee_Value();
                    MenuId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[3].Value)));
                    Set_Menu_Value();
                   // MenuName = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[3].Value));
                    //Set_MenuList_Value();
                    AddFlag = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[6].Value)));
                    if (AddFlag == 1)
                        cbAdd.Checked = true;
                    EditFlag = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[7].Value)));
                    if (EditFlag == 1)
                        cbEdit.Checked = true;
                    DeleteFlag = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[8].Value)));
                    if (DeleteFlag == 1)
                        cbDelete.Checked = true;
                    ViewFlag = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[9].Value)));
                    if (ViewFlag == 1)
                        cbView.Checked = true;
                    ApprovalFlag = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[10].Value)));
                    if (ApprovalFlag == 1)
                        cbApproval.Checked = true;
                     
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



        List<int> objItemEmployee = new List<int>();

        private void Set_Employee_Value()
        {
            DataSet ds = new DataSet();

            //objBL.Query = "select UserId from users where CancelTag=0 and ";
            objBL.Query = "select UserId,UserTypeId,UserName,CONCAT(EmployeeName,'-',UserName) as 'ConcatEmp' from users where CancelTag=0 and UserId=" + UserId + "";
            //objBL.Query = "select EmployeeId,EmployeeCode,ESSLEmployeeId,EmpInital,EmployeeName,CONCAT(EmployeeName,'- Code-',EmployeeCode) as 'ConcatEmp' from Employees where CancelTag=0 and EmployeeId IN(select EmployeeId from Login where CancelTag=0) order by EmployeeCode asc";
            //ds = objRL.Fill_LoginWindow_Employee_ReturnDS();

            ds = objBL.ReturnDataSet();

            if (ds.Tables[0].Rows.Count > 0)
            {
                objItemEmployee = new List<int>();

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    if (!string.IsNullOrEmpty(Convert.ToString(ds.Tables[0].Rows[i]["UserId"])))
                    {
                        int Iid = Convert.ToInt32(ds.Tables[0].Rows[i]["UserId"].ToString());
                        objItemEmployee.Add(Iid);
                    }
                }

                for (int i = 0; i < clbEmployee.Items.Count; i++)
                {
                    DataRowView castedItem = clbEmployee.Items[i] as DataRowView;
                    int? id = Convert.ToInt32(castedItem[0]);
                    UserId_Checked = (int)id;
                    //DataRowView view = clbShift.Items[i] as DataRowView;
                    //value = (int)view["ShiftId"];
                    //if (objItemEmployee[i].ToString() == UserId_Checked.ToString())

                        if (objItemEmployee.Contains(UserId_Checked))
                            clbEmployee.SetItemChecked(i, true);
                }
            }
        }

        List<int> objMenu = new List<int>();

        private void Set_Menu_Value()
        {
            DataSet ds = new DataSet();
            objBL.Query = "select MenuId,MenuName,HeaderName from menumaster where CancelTag=0 and MenuId=" + MenuId + "";

            ds = objBL.ReturnDataSet();

            if (ds.Tables[0].Rows.Count > 0)
            {
                objMenu = new List<int>();

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    if (!string.IsNullOrEmpty(Convert.ToString(ds.Tables[0].Rows[i]["MenuId"])))
                    {
                        int Iid = Convert.ToInt32(ds.Tables[0].Rows[i]["MenuId"].ToString());
                        objMenu.Add(Iid);
                    }
                }

                for (int i = 0; i < clbMenu.Items.Count; i++)
                {
                    DataRowView castedItem = clbMenu.Items[i] as DataRowView;
                    int? id = Convert.ToInt32(castedItem[0]);
                    UserId_Checked = (int)id;
                    //DataRowView view = clbShift.Items[i] as DataRowView;
                    //value = (int)view["ShiftId"];
                    //if (objMenu[i].ToString() == UserId.ToString())
                        if (objMenu.Contains(UserId_Checked))
                            clbMenu.SetItemChecked(i, true);
                }
            }
        }


        List<int> objItemMenuList = new List<int>();

        private void Set_MenuList_Value()
        {
            for (int i = 0; i < clbMenu.Items.Count; i++)
            {
                DataRowView castedItem = clbMenu.Items[i] as DataRowView;
                string MenuListName = Convert.ToString(castedItem[1]);

                if (MenuListName == MenuName)
                    clbMenu.SetItemChecked(i, true);
            }

            //DataSet ds = new DataSet();
            //ds = objRL.Fill_LoginWindow_Employee_ReturnDS();

            //if (ds.Tables[0].Rows.Count > 0)
            //{
            //    objItemEmployee = new List<int>();

            //    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            //    {
            //        if (!string.IsNullOrEmpty(Convert.ToString(ds.Tables[0].Rows[i]["EmployeeId"])))
            //        {
            //            int Iid = Convert.ToInt32(ds.Tables[0].Rows[i]["EmployeeId"].ToString());
            //            objItemEmployee.Add(Iid);
            //        }
            //    }


            //    for (int i = 0; i < clbEmployee.Items.Count; i++)
            //    {
            //        DataRowView castedItem = clbEmployee.Items[i] as DataRowView;
            //        int? id = Convert.ToInt32(castedItem[0]);
            //        EmployeeId_Checked = (int)id;
            //        //DataRowView view = clbShift.Items[i] as DataRowView;
            //        //value = (int)view["ShiftId"];
            //        if (objItemEmployee[i].ToString() == EmployeeId.ToString())
            //            clbEmployee.SetItemChecked(i, true);
            //    }
            //}
        }

        private void cbSelectAllEmployee_CheckedChanged(object sender, EventArgs e)
        {
            if (cbSelectAllEmployee.Checked)
                CheckBox_Checked(clbEmployee, true);
            else
                CheckBox_Checked(clbEmployee, false);
        }

        private void CheckBox_Checked(CheckedListBox clb, bool check)
        {
            for (int i = 0; i < clb.Items.Count; i++)
            {
                clb.SetItemChecked(i, check);
            }
        }

        private void cbSelectAllMenuList_CheckedChanged(object sender, EventArgs e)
        {
            if (cbSelectAllMenuList.Checked)
                CheckBox_Checked(clbMenu, true);
            else
                CheckBox_Checked(clbMenu, false);
        }

        private void cmbUserType_SelectionChangeCommitted(object sender, EventArgs e)
        {
            CategoryWiseMenuList();
        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            if (txtSearch.Text != "")
                SearchFlag = true;
            else
                SearchFlag = false;

            FillGrid();
        }
    }
}
