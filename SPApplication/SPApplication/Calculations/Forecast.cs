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
using System.Windows.Forms;
//using static System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar;

namespace SPApplication.OEEApplication.Calculations
{
    public partial class Forecast : Form
    {
        BusinessLayer objBL = new BusinessLayer();
        RedundancyLogics objRL = new RedundancyLogics();
        DesignLayer objDL = new DesignLayer();
        ErrorProvider objEP = new ErrorProvider();
        QueryLayer objQL = new QueryLayer();
        PropertyClass objPC = new PropertyClass();
        public Forecast()
        {
            InitializeComponent(); 
            objDL.SetDesignMaster(this, lblHeader, btnSave, btnClear, btnDelete, btnExit, "FORECAST");
            btnSave.Text = BusinessResources.BTN_SEARCH;
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private bool Validation()
        {
            objEP.Clear();

            if (cmbMonth.SelectedIndex == -1)
            {
                objEP.SetError(cmbMonth, "Select Month");
                cmbMonth.Focus();
                return true;
            }
            else if (cmbYear.SelectedIndex == -1)
            {
                objEP.SetError(cmbYear, "Select Year");
                cmbYear.Focus();
                return true;
            }
            else if (cmbLocation.SelectedIndex == -1)
            {
                objEP.SetError(cmbLocation, "Select Location");
                cmbLocation.Focus();
                return true;
            }
            else
                return false;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if(!Validation())
            {
                FillGrid();
            }
            else
            {
                objRL.ShowMessage(17, 4);
                return;
            }
        }
        int Pending_Count = 0, Completed_Count = 0, Closed_Count = 0, Cancel_Count = 0, Remarks_Count = 0;

        private void Forecast_Load(object sender, EventArgs e)
        {
            objRL.Fill_Location_ComboBox_By_Users(cmbLocation);
        }

        private void FillGrid()
        {
            DataSet ds= new DataSet();
            objBL.Query = "Select F.ForeCastId as 'Forecast Id',F.EntryDate as 'Date',F.Factory,F.ForecastMonth as 'Month',F.ForecastYear as 'Year',F.ProductId,PM.ProductName as 'Product Name',F.RequiredQuantity as 'Required Quantity',F.Balance,F.Status from Forecast F inner join ProductMaster PM on PM.ProductId=F.ProductId where F.CancelTag=0 and PM.CancelTag=0 and F.ForecastMonth='" + cmbMonth.Text + "' and F.ForecastYear=" + cmbYear.Text + " and F.LocationId=" + cmbLocation.SelectedValue + "";
            ds = objBL.ReturnDataSet();
            if(ds.Tables[0].Rows.Count > 0 )
            {
                //0 ForeCastId,
                //1 EntryDate,
                //2 Factory,
                //3 ForecastMonth,
                //4 ForecastYear,
                //5 ProductId,
                //6 P.ProductName as 'Product Name',
                //7 RequiredQuantity,
                //8 Balance,
                //9 Status
                dataGridView1.DataSource = ds.Tables[0];
                dataGridView1.Columns[0].Visible = false;
                dataGridView1.Columns[5].Visible= false;
                dataGridView1.Columns[8].Visible = false;
                dataGridView1.Columns[9].Visible = false;

                dataGridView1.Columns[6].Width = 400;

                string Status = string.Empty;
                 
                Pending_Count = 0; Completed_Count = 0; Cancel_Count = 0; Closed_Count = 0; Remarks_Count = 0;

                //foreach (DataGridViewRow Myrow in dataGridView1.Rows)
                //{
                //    Status = string.Empty;
                //    //Here 2 cell is target value and 1 cell is Volume

                //    if (!string.IsNullOrEmpty(Convert.ToString(Myrow.Cells[9].Value)))
                //        Status = Convert.ToString(Myrow.Cells[9].Value);

                //    if (Status == BusinessResources.LS_Pending)
                //    {
                //        Pending_Count++;
                //        Myrow.DefaultCellStyle.BackColor = Color.FromName(BusinessResources.LS_Pending_Color);
                //    }
                //    else if (Status == BusinessResources.LS_Completed)
                //    {
                //        Completed_Count++;
                //        Myrow.DefaultCellStyle.BackColor = Color.FromName(BusinessResources.LS_Completed_Color);
                //    }
                //    else if (Status == BusinessResources.LS_Cancel)
                //    {
                //        Cancel_Count++;
                //        Myrow.DefaultCellStyle.BackColor = Color.FromName(BusinessResources.LS_Cancel_Color);
                //    }
                //    else if (Status == BusinessResources.LS_Closed)
                //    {
                //        Closed_Count++;
                //        Myrow.DefaultCellStyle.BackColor = Color.FromName(BusinessResources.LS_Manager_Color);
                //    }
                //    else if (Status == BusinessResources.LS_Remarks)
                //    {
                //        Remarks_Count++;
                //        Myrow.DefaultCellStyle.BackColor = Color.FromName(BusinessResources.LS_Remarks_Color);
                //    }
                //    else
                //    {
                //        //string hex = BusinessResources.BACKGROUND_COLOUR;
                //        //Color _color = System.Drawing.ColorTranslator.FromHtml(hex);
                //        //Myrow.DefaultCellStyle.BackColor = _color;
                //    }
                //}

                lblPending.Text = "Pending-" + Pending_Count.ToString();
                lblCompleted.Text = "Completed-" + Completed_Count.ToString();
                lblCancel.Text = "Cancel-" + Cancel_Count.ToString();
                lblClosed.Text = "Closed-" + Closed_Count.ToString();
                lblRemarks.Text = "Remarks-" + Remarks_Count.ToString();
            }
        }

        private void ClearAll()
        {
            cmbMonth.SelectedIndex = -1;
            cmbYear.SelectedIndex = -1;
            cmbLocation.SelectedIndex = -1;
            dataGridView1.DataSource = null;
        }
        private void btnClear_Click(object sender, EventArgs e)
        {
            ClearAll();
        }
    }
}
