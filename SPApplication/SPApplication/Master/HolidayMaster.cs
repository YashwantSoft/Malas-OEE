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

namespace SPApplication.Master
{
    public partial class HolidayMaster : Form
    {
        BusinessLayer objBL = new BusinessLayer();
        RedundancyLogics objRL = new RedundancyLogics();
        DesignLayer objDL = new DesignLayer();
        ErrorProvider objEP = new ErrorProvider();
        QueryLayer objQL = new QueryLayer();
        PropertyClass objPC = new PropertyClass();

        bool FlagDelete = false, FlagExist = false, SearchFlag = false;
        int RowCount_Grid = 0, CurrentRowIndex = 0, TableId = 0, Result = 0;

        public HolidayMaster()
        {
            InitializeComponent();
            objDL.SetDesignMaster(this, lblHeader, btnSave, btnClear, btnDelete, btnExit, BusinessResources.LBL_HEADER_HOLIDAYMASTER);
            objRL.Get_UserRights_By_MenuName(BusinessResources.LBL_HEADER_MASTER);
        }

        private void HolidayMaster_Load(object sender, EventArgs e)
        {
            ClearAll();
            FillGrid();
            txtHolidayDay.Text = dtpHolidayDate.Value.DayOfWeek.ToString();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
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

        private void ClearAll()
        {
            TableId = 0;
            objEP.Clear();
            dtpHolidayDate.Value = DateTime.Now.Date;
            txtHolidayDay.Text = "";
            txtHolidayFestival.Text = "";
            txtSearch.Text = "";
            SearchFlag = false;
            FlagDelete = false;
            btnDelete.Enabled = false;
            cbIsNationalHoliday.Checked = false;
            objPC.NationalHolidayFlag = 0;
            dtpHolidayDate.Focus();
        }

        private bool Validation()
        {
            if (txtHolidayDay.Text == "")
            {
                txtHolidayDay.Focus();
                objEP.SetError(txtHolidayDay, "Enter Holiday Day");
                return false;
            }
            else if (txtHolidayFestival.Text == "")
            {
                txtHolidayFestival.Focus();
                objEP.SetError(txtHolidayFestival, "Enter Holiday Festival");
                return false;
            }
            else
                return false;
        }

        int ForPanchgani = 0, ForWai = 0;

        protected bool CheckExist()
        {
            DataSet ds = new DataSet();
            ds = objQL.SP_HolidayMaster_CheckExist();
            if (ds.Tables[0].Rows.Count > 0)
                return true;
            else
                return false;
        }

        protected void SaveDB()
        {
            if (!Validation())
            {
                if (cbIsNationalHoliday.Checked)
                    objPC.NationalHolidayFlag = 1;
                else
                    objPC.NationalHolidayFlag = 0;

                objPC.HolidayId = TableId;
                objPC.HolidayDate = dtpHolidayDate.Value;
                objPC.HolidayDay = txtHolidayDay.Text;
                objPC.Festival = txtHolidayFestival.Text;
                objPC.UserId = BusinessLayer.UserId_Static;
                objPC.DeleteFlag = FlagDelete;

                if (!FlagDelete)
                {
                    if (CheckExist())
                    {
                        objRL.ShowMessage(12, 4);
                        return;
                    }
                }

                Result = objQL.SP_HolidayMaster_Insert_Update_Delete();

                if (Result > 0)
                {
                    if (!FlagDelete)
                        objRL.ShowMessage(7, 1);
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

        protected void FillGrid()
        {
            dataGridView1.DataSource = null;
            DataSet ds = new DataSet();
            objPC.Festival = txtSearch.Text;

            if (!SearchFlag)
                objPC.SearchFlag = false;
            else
                objPC.SearchFlag = true;

            ds = objQL.SP_HolidayMaster_FillGrid();
            if (ds.Tables[0].Rows.Count > 0)
            {
                lblTotalCount.Text = "Total-" + ds.Tables[0].Rows.Count;
                //0 HolidayId,
                //1 HolidayDate as 'Holiday Date',
                //2 HolidayDay as 'Holiday Day',
                //3 Festival,
                //4 ForPanchgani,
                //5 ForWai

                dataGridView1.DataSource = ds.Tables[0];
                dataGridView1.Columns[0].Visible = false;
              
                dataGridView1.Columns[1].Width = 120;
                dataGridView1.Columns[2].Width = 120;
                dataGridView1.Columns[3].Width = 700;
            }
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
                        //0 HolidayId,
                        //1 HolidayDate as 'Holiday Date',
                        //2 HolidayDay as 'Holiday Day',
                        //3 Festival,
                        //4 NationalHolidayFlag
                        btnDelete.Enabled = true;
                        objPC.NationalHolidayFlag = 0;
                        TableId = Convert.ToInt32(dataGridView1.Rows[e.RowIndex].Cells[0].Value);
                        dtpHolidayDate.Value = Convert.ToDateTime(dataGridView1.Rows[e.RowIndex].Cells[1].Value);
                        txtHolidayDay.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[2].Value));
                        txtHolidayFestival.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[3].Value));
                        objPC.NationalHolidayFlag = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[4].Value)));

                        if (objPC.NationalHolidayFlag == 1)
                            cbIsNationalHoliday.Checked = true;
                        else
                            cbIsNationalHoliday.Checked = false;
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

        private void dtpHolidayDate_ValueChanged(object sender, EventArgs e)
        {
            txtHolidayDay.Text = dtpHolidayDate.Value.DayOfWeek.ToString();
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
