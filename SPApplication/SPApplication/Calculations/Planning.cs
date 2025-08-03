using BusinessLayerUtility;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Forms;

namespace SPApplication.OEEApplication.Calculations
{
    public partial class Planning : Form
    {
        BusinessLayer objBL = new BusinessLayer();
        RedundancyLogics objRL = new RedundancyLogics();
        DesignLayer objDL = new DesignLayer();
        ErrorProvider objEP = new ErrorProvider();
        QueryLayer objQL = new QueryLayer();
        PropertyClass objPC = new PropertyClass();
        

        int  Result = 0,TableId=0;
        bool DeleteFlag = false;
        string MainQuery = string.Empty, WhereClause = string.Empty, OrderByClause = string.Empty, UserClause = string.Empty;
        int RowCount_Grid = 0, CurrentRowIndex = 0;
        public Planning()
        {
            InitializeComponent();
            objDL.SetDesignMaster(this, lblHeader, btnSave, btnClear, btnDelete, btnExit, "PLANNING");
            objRL.Fill_Item_ListBox(lbItem, txtSearchProductName.Text, "All");
            objRL.Fill_Status(cmbStatus);
            btnClear.Text = "New";
        }

        private void Get_TableId()
        {
            txtPlanProductionCode.Text = Convert.ToString(objRL.ReturnMaxID_Increase("weeklyplanning", "WeeklyPlanningId"));
        }
        private void WeeklyPlanning_Load(object sender, EventArgs e)
        {
            //FillGrid();
            ClearAll();
            objRL.Fill_Location_ComboBox_By_Users(cmbLocation);
            Set_Search();
        }
        private void Set_Search()
        {
            cmbSearchBy.Text = "Status";
            Search_Function();
            cmbSearch.Text = "Pending";
        }

        private void ClearAll_Item()
        {
            rtbItem.Text = "";
            rtbItem.Visible = false;
        }

        private void txtSearchProductName_TextChanged(object sender, EventArgs e)
        {
            ClearAll_Item();
            if (txtSearchProductName.Text != "")
                objRL.Fill_Item_ListBox(lbItem, txtSearchProductName.Text, "Text");
            else
                objRL.Fill_Item_ListBox(lbItem, txtSearchProductName.Text, "All");
        }

        private void lbItem_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                FillItem();
        }
        private void lbItem_Click(object sender, EventArgs e)
        {
            FillItem();
        }

        int ProductId = 0;
        private void FillItem()
        {
            if (lbItem.Items.Count > 0)
            { 
                rtbItem.Text = "";

                if(TableId ==0)
                    ProductId = Convert.ToInt32(lbItem.SelectedValue);

                objRL.FillItemDetailsRichTextBox(rtbItem, ProductId);

                if (!string.IsNullOrEmpty(objRL.ItemDetails_RTB))
                {
                    ProductId = objPC.ProductId;
                    lbItem.Visible = false;
                    rtbItem.Visible = true;
                    //lbItem.Enabled = false;
                    txtBoxesInHours.Text = objPC.Boxes.ToString();
                }
                else
                    lbItem.Visible = true;
            }
        }

        private bool Validation()
        {
            
            objEP.Clear();
            if (objPC.ProductId == 0) 
            {

                objEP.SetError(lbItem, "Select Product");
                lbItem.Focus();
                return true;
            }
            else if(txtRequired.Text == "")
            {
                objEP.SetError(txtRequired, "Enter Required Quantity");
                txtRequired.Focus();
                return true;
            }
            else if (txtBoxesInHours.Text == "") 
            {
                objEP.SetError(txtBoxesInHours, "Enter Boxes In Hours");
                txtBoxesInHours.Focus();
                return true;
            }
            else
                return false;
             
        }

        
        private bool CheckExist()
        {
            DataSet ds = new DataSet();
            objBL.Query = "select WeeklyPlanningId from weeklyplanning where PlanningDate='" + dtpPlanningDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "' and CancelTag=0 and ProductId=" + objPC.ProductId + "";
            ds = objBL.ReturnDataSet();
            if (ds.Tables[0].Rows.Count > 0)
                return true;
            else
                return false;
        }

        //int WeeklyPlanningId = 0;
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
                            objBL.Query = "update weeklyplanning set CancelTag=1 where WeeklyPlanningId=" + TableId + "";
                        else
                            objBL.Query = "update weeklyplanning set EntryDate='" + DateTime.Now.Date + "',PlanningDate='" + dtpPlanningDate.Value + "',ProductId=" + objPC.ProductId + ",RequiredQuantity='" + txtRequired.Text + "',Remarks='" + txtRemarks.Text + "',LocationId=" + cmbLocation.SelectedValue + ",ModifiedId=" + BusinessLayer.UserId_Static + " where WeeklyPlanningId=" + TableId + " and CancelTag=0";
                    }
                    else
                        objBL.Query = "insert into weeklyplanning(EntryDate,PlanningDate,ProductId,RequiredQuantity,Remarks,Status,LocationId,UserId) values('" + DateTime.Now.Date.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "','" + dtpPlanningDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "'," + objPC.ProductId + ",'" + txtRequired.Text + "','" + txtRemarks.Text + "','" + BusinessResources.LS_Pending + "'," + cmbLocation.SelectedValue + "," + BusinessLayer.UserId_Static + ")";

                    Result = objBL.Function_ExecuteNonQuery();

                    if (Result > 0)
                    {
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

        int Pending_Count = 0, Completed_Count = 0, Closed_Count = 0, Cancel_Count = 0, Remarks_Count = 0;
        bool SearchFlag = false;
        private void FillGrid()
        {
            if(cmbLocation.SelectedIndex >-1)
            {
                DataSet ds = new DataSet();
                //dataGridView1.DataSource = null;
                dataGridView1.Rows.Clear();
                MainQuery = string.Empty;
                WhereClause = string.Empty;
                OrderByClause = string.Empty;
                UserClause = string.Empty;
                lblTotalCount.Text = "";

                try
                {
                    //Product
                    //Date
                    //Category
                    //Plan Code
                    //Status

                    if (cmbSearchBy.SelectedIndex > -1)
                    {
                        if (cmbSearchBy.Text == "Product" && SearchFlag && txtSearch.Text != "")
                            WhereClause = " and P.ProductName LIKE '%" + txtSearch.Text + "%'";
                        if (cmbSearchBy.Text == "Date")
                            WhereClause = " and WP.PlanningDate='" + dtpSearchDate.Value.ToString(BusinessResources.DATEFORMATYYYYYMMDD) + "'";
                        if (cmbSearchBy.Text == "Category" && cmbSearch.SelectedIndex > -1)
                            WhereClause = " and P.Category LIKE '" + cmbSearch.Text + "'";
                        if (cmbSearchBy.Text == "Plan Code" && SearchFlag && txtSearch.Text != "")
                            WhereClause = " and WP.WeeklyPlanningId=" + txtSearch.Text + "";
                        if (cmbSearchBy.Text == "Status" && cmbSearch.SelectedIndex > -1)
                            WhereClause = " and WP.Status LIKE '" + cmbSearch.Text + "'";
                    }



                    //MainQuery = "select WP.WeeklyPlanningId,WP.EntryDate as 'Date',WP.PlanningDate as 'Planning Date',WP.ProductId,P.ProductName as 'Product Name',WP.RequiredQuantity,WP.Remarks,WP.ProductionDone,WP.BalanceQty,WP.Status from weeklyplanning WP inner join ProductMaster P on P.ProductId=WP.ProductId where P.CancelTag=0 and WP.CancelTag=0 ";
                    MainQuery = "select WP.WeeklyPlanningId,WP.EntryDate,WP.PlanningDate,WP.ProductId,P.Category,P.ProductName,WP.RequiredQuantity,WP.ProductionDone,WP.BalanceQty,WP.Status,WP.Remarks,L.LocationName from weeklyplanning WP inner join ProductMaster P on P.ProductId=WP.ProductId inner join locationmaster L on L.LocationId=WP.LocationId where P.CancelTag=0 and WP.CancelTag=0 and L.CancelTag=0 and WP.LocationId="+cmbLocation.SelectedValue+" ";
                    OrderByClause = " order by WP.WeeklyPlanningId desc";

                    objBL.Query = MainQuery + WhereClause + OrderByClause;
                    ds = objBL.ReturnDataSet();

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        //0 WP.WeeklyPlanningId,
                        //1 WP.EntryDate as 'Date',
                        //2 WP.PlanningDate as 'Planning Date',
                        //3 WP.ProductId,
                        //4 P.ProductName as 'Product Name',
                        //5 WP.RequiredQuantity
                        //6 WP.ProductionDone,
                        //7 WP.BalanceQty,
                        //8 WP.Status,
                        //9 WP.Remarks
                        //10 L.LocationName

                        lblTotalCount.Text = "Total Count-" + ds.Tables[0].Rows.Count;
                        //dataGridView1.DataSource = ds.Tables[0];
                        //dataGridView1.Columns[0].Visible = false;
                        //dataGridView1.Columns[3].Visible = false;
                        //dataGridView1.Columns[1].Width = 100;
                        //dataGridView1.Columns[2].Width = 120;
                        //dataGridView1.Columns[4].Width = 400;
                        //dataGridView1.Columns[5].Width = 120;
                        //dataGridView1.Columns[6].Width = 200;

                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                        {
                            DateTime dt;
                            dataGridView1.Rows.Add();
                            dataGridView1.Rows[i].Cells["clmSelect"].Value = "Select";
                            dataGridView1.Rows[i].Cells["clmWeeklyPlanningId"].Value = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["WeeklyPlanningId"]));
                            dt = Convert.ToDateTime(ds.Tables[0].Rows[i]["EntryDate"]);
                            dataGridView1.Rows[i].Cells["clmEntryDate"].Value = dt.ToString(BusinessResources.DATEFORMATDDMMYYYY);
                            dt = Convert.ToDateTime(ds.Tables[0].Rows[i]["PlanningDate"]);
                            dataGridView1.Rows[i].Cells["clmPlanningDate"].Value = dt.ToString(BusinessResources.DATEFORMATDDMMYYYY);
                            dataGridView1.Rows[i].Cells["clmProductId"].Value = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["ProductId"]));
                            dataGridView1.Rows[i].Cells["clmCategory"].Value = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["Category"]));
                            dataGridView1.Rows[i].Cells["clmProductName"].Value = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["ProductName"]));
                            dataGridView1.Rows[i].Cells["clmRequiredQuantity"].Value = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["RequiredQuantity"]));
                            dataGridView1.Rows[i].Cells["clmProductionDone"].Value = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["ProductionDone"]));
                            dataGridView1.Rows[i].Cells["clmBalanceQty"].Value = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["BalanceQty"]));

                            string Status = string.Empty;
                            Status = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["Status"]));

                            dataGridView1.Rows[i].Cells["clmStatus"].Value = Status.ToString();
                            dataGridView1.Rows[i].Cells["clmRemarks"].Value = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["Remarks"]));
                            dataGridView1.Rows[i].Cells["clmLocation"].Value = objRL.CheckNullString(Convert.ToString(ds.Tables[0].Rows[i]["LocationName"]));

                            Pending_Count = 0; Completed_Count = 0; Cancel_Count = 0; Closed_Count = 0; Remarks_Count = 0;

                            foreach (DataGridViewRow Myrow in dataGridView1.Rows)
                            {
                                Status = string.Empty;
                                //Here 2 cell is target value and 1 cell is Volume

                                if (!string.IsNullOrEmpty(Convert.ToString(Myrow.Cells["clmStatus"].Value)))
                                    Status = Convert.ToString(Myrow.Cells["clmStatus"].Value);

                                if (Status == BusinessResources.LS_Pending)
                                {
                                    Pending_Count++;
                                    Myrow.DefaultCellStyle.BackColor = Color.FromName(BusinessResources.LS_Pending_Color);
                                }
                                else if (Status == BusinessResources.LS_Completed)
                                {
                                    Completed_Count++;
                                    Myrow.DefaultCellStyle.BackColor = Color.FromName(BusinessResources.LS_Completed_Color);
                                }
                                else if (Status == BusinessResources.LS_Cancel)
                                {
                                    Cancel_Count++;
                                    Myrow.DefaultCellStyle.BackColor = Color.FromName(BusinessResources.LS_Cancel_Color);
                                }
                                else if (Status == BusinessResources.LS_Closed)
                                {
                                    Closed_Count++;
                                    Myrow.DefaultCellStyle.BackColor = Color.FromName(BusinessResources.LS_Manager_Color);
                                }
                                else if (Status == BusinessResources.LS_Remarks)
                                {
                                    Remarks_Count++;
                                    Myrow.DefaultCellStyle.BackColor = Color.FromName(BusinessResources.LS_Remarks_Color);
                                }
                                else
                                {
                                    //string hex = BusinessResources.BACKGROUND_COLOUR;
                                    //Color _color = System.Drawing.ColorTranslator.FromHtml(hex);
                                    //Myrow.DefaultCellStyle.BackColor = _color;
                                }
                            }

                            lblPending.Text = "Pending-" + Pending_Count.ToString();
                            lblCompleted.Text = "Completed-" + Completed_Count.ToString();
                            lblCancel.Text = "Cancel-" + Cancel_Count.ToString();
                            lblClosed.Text = "Closed-" + Closed_Count.ToString();
                            lblRemarks.Text = "Remarks-" + Remarks_Count.ToString();
                        }
                        dataGridView1.Columns[2].Visible = false;
                        dataGridView1.ClearSelection();
                    }
                }
                catch (Exception ex1) { objRL.ErrorMessge(ex1.ToString()); }
                finally { GC.Collect(); }
            }
            
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            SaveDB();
        }
        private void btnClear_Click(object sender, EventArgs e)
        {
            ClearAll();
        }
        private void btnDelete_Click(object sender, EventArgs e)
        {
            SaveDB();
        }
        string Status = string.Empty;
        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                RowCount_Grid = dataGridView1.Rows.Count;
                CurrentRowIndex = dataGridView1.CurrentRow.Index;

                if (RowCount_Grid >= 0 && CurrentRowIndex >= 0)
                {
                    //0 Select
                    //1 WP.WeeklyPlanningId,
                    //2 WP.EntryDate as 'Date',
                    //3 WP.PlanningDate as 'Planning Date',
                    //4 WP.ProductId,
                    //5 P.ProductName as 'Product Name',
                    //6 WP.RequiredQuantity
                    //7 WP.ProductionDone,
                    //8 WP.BalanceQty,
                    //9 WP.Status,
                    //10 WP.Remarks
                    //11 L.LocationName

                    ClearAll();
                    btnDelete.Enabled = true;
                    TableId = Convert.ToInt32(dataGridView1.Rows[e.RowIndex].Cells[1].Value);
                    txtPlanProductionCode.Text = TableId.ToString();
                    objPC.WeeklyPlanningId = TableId;

                    objPC.Required = objRL.CheckNullString_ReturnDouble(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells["clmRequiredQuantity"].Value)));

                    Status = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells["clmStatus"].Value));
                    cmbLocation.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells["clmLocation"].Value));

                    if (Status == BusinessResources.LS_Pending)
                    {
                        if (objPC.Required > 0)
                        {
                            DataEntry objForm = new DataEntry(TableId);
                            objForm.ShowDialog(this);
                            FillGrid();
                        }
                    }
                    else
                    {
                        objRL.ShowMessage(50, 4);
                        return;
                    }
                    
                    //dtpEntryDate.Value = Convert.ToDateTime(dataGridView1.Rows[e.RowIndex].Cells[1].Value);
                    //dtpPlanningDate.Value = Convert.ToDateTime(dataGridView1.Rows[e.RowIndex].Cells[2].Value);
                    //ProductId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[3].Value)));
                    //FillItem();
                    //txtRequired.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[5].Value));
                    //txtRemarks.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[6].Value));
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

            //try
            //{
            //    RowCount_Grid = dataGridView1.Rows.Count;
            //    CurrentRowIndex = dataGridView1.CurrentRow.Index;

            //    if (RowCount_Grid >= 0 && CurrentRowIndex >= 0)
            //    {
            //        //0 WP.WeeklyPlanningId,
            //        //1 WP.EntryDate as 'Date',
            //        //2 WP.PlanningDate as 'Planning Date',
            //        //3 WP.ProductId,
            //        //4 P.ProductName as 'Product Name',
            //        //5 WP.RequiredQuantity
            //        //6 WP.Remarks

            //        ClearAll();
            //        btnDelete.Enabled = true;
            //        TableId = Convert.ToInt32(dataGridView1.Rows[e.RowIndex].Cells[0].Value);
            //        txtPlanProductionCode.Text = TableId.ToString();
            //        dtpEntryDate.Value = Convert.ToDateTime(dataGridView1.Rows[e.RowIndex].Cells[1].Value);
            //        dtpPlanningDate.Value = Convert.ToDateTime(dataGridView1.Rows[e.RowIndex].Cells[2].Value);
            //        ProductId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[3].Value)));
            //        FillItem();
            //        txtRequired.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[5].Value));
            //        txtRemarks.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[6].Value));
            //    }
            //}
            //catch (Exception ex1)
            //{
            //    objRL.ErrorMessge(ex1.ToString());
            //    return;
            //}
            //finally
            //{
            //    GC.Collect();
            //}

        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            if (txtSearch.Text != "")
                SearchFlag = true;
            else
                SearchFlag =false;

            FillGrid();
        }

        private void cbToday_CheckedChanged(object sender, EventArgs e)
        {
            if (cbToday.Checked)
                dtpSearchDate.Enabled = false;
            else
                dtpSearchDate.Enabled = true;

            FillGrid();
        }

        private void cmbSearchBy_SelectionChangeCommitted(object sender, EventArgs e)
        {
            Search_Function();
        }

        private void Search_Function()
        {
            //Product
            //Date
            //Category
            //Plan Code
            //Status

            pSearchCombo.Visible=false;
            pSearchDate.Visible = false;
            pSearchText.Visible = false;
            cmbSearch.DataSource = null;
            txtSearch.Text = "";
            cbToday.Checked = true;

            if (cmbSearchBy.SelectedIndex > -1)
            {
                if(cmbSearchBy.Text == "Product" || cmbSearchBy.Text == "Plan Code")
                {
                    pSearchText.Visible = true;
                }
                else if(cmbSearchBy.Text == "Category" || cmbSearchBy.Text == "Status")
                {
                    pSearchCombo.Visible = true;

                    if(cmbSearchBy.Text == "Category")
                    {
                        objRL.Fill_Category(cmbSearch);
                    }
                    else if(cmbSearchBy.Text == "Status")
                    {
                        objRL.Fill_Status(cmbSearch);
                    }
                    else
                    {
                        cmbSearch.DataSource = null;
                    }
                }
                else if (cmbSearchBy.Text == "Date")
                {
                    pSearchDate.Visible = true;
                    cbToday.Checked = true;
                }
                else
                {
                    pSearchCombo.Visible = false;
                    pSearchDate.Visible = false;
                    pSearchText.Visible = false;
                }
            }
            else
            {
            }
        }

        private void cmbSearchBy_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void cmbSearch_SelectedValueChanged(object sender, EventArgs e)
        {
            if(cmbSearch.SelectedIndex >-1)
                FillGrid();
        }

        private void dtpSearchDate_ValueChanged(object sender, EventArgs e)
        {
            FillGrid();
        }

        private void cmbLocation_SelectionChangeCommitted(object sender, EventArgs e)
        {
            if(cmbLocation.SelectedIndex >-1)  
                 FillGrid();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                if (dataGridView1.Rows.Count >0)
                {
                    if (dataGridView1.CurrentCell.ColumnIndex == 0)
                    {
                        RowCount_Grid = dataGridView1.Rows.Count;
                        CurrentRowIndex = dataGridView1.CurrentRow.Index;

                        if (RowCount_Grid >= 0 && CurrentRowIndex >= 0)
                        {
                            //0 Select
                            //1 WP.WeeklyPlanningId,
                            //2 WP.EntryDate as 'Date',
                            //3 WP.PlanningDate as 'Planning Date',
                            //4 WP.ProductId,
                            //5 WP.Category
                            //6 P.ProductName as 'Product Name',
                            //7 WP.RequiredQuantity
                            //8 WP.ProductionDone,
                            //9 WP.BalanceQty,
                            //10 WP.Status,
                            //11 WP.Remarks

                            ClearAll();
                            btnDelete.Enabled = true;
                            TableId = Convert.ToInt32(dataGridView1.Rows[e.RowIndex].Cells[1].Value);
                            txtPlanProductionCode.Text = TableId.ToString();
                            objPC.WeeklyPlanningId = TableId;
                            dtpEntryDate.Value = Convert.ToDateTime(dataGridView1.Rows[e.RowIndex].Cells[2].Value);
                            dtpPlanningDate.Value = Convert.ToDateTime(dataGridView1.Rows[e.RowIndex].Cells[3].Value);
                            ProductId = objRL.CheckNullString_ReturnInt(objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[4].Value)));
                            FillItem();
                            txtRequired.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[7].Value));
                            txtProductionDone.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[8].Value));
                            txtBalanceQty.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[9].Value));
                            cmbStatus.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[10].Value));
                            txtRemarks.Text = objRL.CheckNullString(Convert.ToString(dataGridView1.Rows[e.RowIndex].Cells[11].Value));
                            
                        }

                        //DialogResult dr;
                        //dr = objRL.Delete_Record_Show_Message();
                        //if (dr == DialogResult.Yes)
                        //{
                        //    dataGridView1.Rows.RemoveAt(e.RowIndex);


                        //}
                    }
                }
            }
            catch (Exception ex1) { }
            finally { GC.Collect(); }
        }

        private void dtpEntryDate_ValueChanged(object sender, EventArgs e)
        {
            lblDay.Text = Convert.ToString(dtpEntryDate.Value.Date.DayOfWeek);
        }

        private void dtpPlanningDate_ValueChanged(object sender, EventArgs e)
        {
            lblPlanningDay.Text =  Convert.ToString(dtpPlanningDate.Value.Date.DayOfWeek);
        }

        private void ClearAll()
        {
            objEP.Clear();
            btnDelete.Enabled = false;
            TableId = 0;
            cmbLocation.SelectedIndex = -1;
            dtpEntryDate.Value = DateTime.Now.Date;
            dtpEntryTime.Value = DateTime.Now;
            dtpPlanningDate.Value = DateTime.Now.Date;
            txtPlanProductionCode.Text = "";
            txtBoxesInHours.Text = "";
            txtRequired.Text = "";
            txtProductionDone.Text = "";
            txtBottleNeckPerformance.Text = "";
            txtRemarks.Text = "";
            txtBalanceQty.Text = "";
            cmbStatus.SelectedIndex = -1;
            Get_TableId();
            rtbItem.Text = "";
            objRL.Fill_Item_ListBox(lbItem, txtSearchProductName.Text, "All");
            txtSearchProductName.Focus();
        }

        private void txtRequired_KeyPress(object sender, KeyPressEventArgs e)
        {
            objRL.FloatValue(sender, e, txtRequired);
        }
        private void txtSearchCode_Leave(object sender, EventArgs e)
        {
            if (txtSearchCode.Text != "")
            {
                objRL.Fill_Item_By_ItemCode(rtbItem, txtSearchCode.Text);

                if (rtbItem.Text != "")
                {
                    rtbItem.Visible = true;
                    lbItem.Visible = false;
                }
            }
            else
            {
                objRL.Fill_Item_ListBox(lbItem, txtSearchProductName.Text, "All");
                txtSearchProductName.Focus();
            }
        }

        private void btnImport_Click(object sender, EventArgs e)
        {
             
        }

        private void btnImport_Click_1(object sender, EventArgs e)
        {
            ImportPlanning objForm=new ImportPlanning();
            objForm.ShowDialog();
        }


        //private void CalculateTotalDays()
        //{
        //    double TotalDays = 0;
        //    TotalDays = dtpPlanDateTo.Value.Subtract(dtpPlanDateFrom.Value).TotalDays;
        //    txtTotalDays.Text = TotalDays.ToString();
        //}
    }
}
