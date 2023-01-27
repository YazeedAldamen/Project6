using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Drawing;
using System.Configuration;
using System.Reflection.Emit;

namespace Project.Admin
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                availableTools.Visible = false;
                organizations.Visible = false;
                donations.Visible = false;
                vol.Visible = false;
                cash.Visible = false;
                Applications.Visible= false;
                //btnAvailableTools.Attributes.Add("onmouseover", "this.style.backgroundColor='White';this.style.color='Black'");
                //btnAvailableTools.Attributes.Add("onmouseout", "this.style.backgroundColor='Transparent';this.style.color='White'");
                //btnCash.Attributes.Add("onmouseover", "this.style.backgroundColor='White';this.style.color='Black'");
                //btnCash.Attributes.Add("onmouseout", "this.style.backgroundColor='Transparent';this.style.color='White'");
                //btnDonations.Attributes.Add("onmouseover", "this.style.backgroundColor='White';this.style.color='Black'");
                //btnDonations.Attributes.Add("onmouseout", "this.style.backgroundColor='Transparent';this.style.color='White'");
                //btnVoulnteer.Attributes.Add("onmouseover", "this.style.backgroundColor='White';this.style.color='Black'");
                //btnVoulnteer.Attributes.Add("onmouseout", "this.style.backgroundColor='Transparent';this.style.color='White'");
                //btnOrganizations.Attributes.Add("onmouseover", "this.style.backgroundColor='White';this.style.color='Black'");
                //btnOrganizations.Attributes.Add("onmouseout", "this.style.backgroundColor='Transparent';this.style.color='White'");
            }
            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand com1 = new SqlCommand("select COUNT([tool_id]) From Tool", conn);
            SqlCommand com2 = new SqlCommand("select COUNT(amount) From Cash", conn);
            SqlCommand com3 = new SqlCommand("select COUNT([id]) From volunteer", conn);
            //SqlCommand com4 = new SqlCommand("select COUNT([id]) From AspNetUserd", conn);

            int l1 = (int)com1.ExecuteScalar();
            int l2 = (int)com2.ExecuteScalar();
            int l3 = (int)com3.ExecuteScalar();
            //int l4 = (int)com4.ExecuteScalar();


            Label1.Text = (l1).ToString() + "+";
            Label2.Text = (l2).ToString() + "+";
            Label3.Text = (l3).ToString() + "+";
            //Label4.Text=(l4).ToString();
            conn.Close();

        }
        protected void btnAvailableTools_Click(object sender, EventArgs e)
        {
            availableTools.Visible = true;
            organizations.Visible = false;
            donations.Visible = false;
            vol.Visible = false;
            cash.Visible = false;
            Applications.Visible = false;

            btnCash.ForeColor = Color.White;
            btnCash.BackColor = Color.Transparent;
            btnVoulnteer.ForeColor = Color.White;
            btnVoulnteer.BackColor = Color.Transparent;
            btnAvailableTools.ForeColor = Color.Black;
            btnAvailableTools.BackColor = Color.White;
            btnDonations.ForeColor = Color.White;
            btnDonations.BackColor = Color.Transparent;
            btnOrganizations.ForeColor = Color.White;
            btnOrganizations.BackColor = Color.Transparent;
            btnApplications.ForeColor = Color.White;
            btnApplications.BackColor = Color.Transparent;


        }

        protected void btnOrganizations_Click(object sender, EventArgs e)
        {

            organizations.Visible = true;
            availableTools.Visible = false;
            donations.Visible = false;
            vol.Visible = false;
            cash.Visible = false;
            Applications.Visible = false;

            btnCash.ForeColor = Color.White;
            btnCash.BackColor = Color.Transparent;
            btnVoulnteer.ForeColor = Color.White;
            btnVoulnteer.BackColor = Color.Transparent;
            btnAvailableTools.ForeColor = Color.White;
            btnAvailableTools.BackColor = Color.Transparent;
            btnDonations.ForeColor = Color.White;
            btnDonations.BackColor = Color.Transparent;
            btnOrganizations.ForeColor = Color.Black;
            btnOrganizations.BackColor = Color.White;
            btnApplications.ForeColor = Color.White;
            btnApplications.BackColor = Color.Transparent;

        }

        protected void btnDonations_Click(object sender, EventArgs e)
        {
            donations.Visible = true;
            availableTools.Visible = false;
            organizations.Visible = false;
            vol.Visible = false;
            cash.Visible = false;
            Applications.Visible = false;

            btnCash.ForeColor = Color.White;
            btnCash.BackColor = Color.Transparent;
            btnVoulnteer.ForeColor = Color.White;
            btnVoulnteer.BackColor = Color.Transparent;
            btnAvailableTools.ForeColor = Color.White;
            btnAvailableTools.BackColor = Color.Transparent;
            btnDonations.ForeColor = Color.Black;
            btnDonations.BackColor = Color.White;
            btnOrganizations.ForeColor = Color.White;
            btnOrganizations.BackColor = Color.Transparent;
            btnApplications.ForeColor = Color.White;
            btnApplications.BackColor = Color.Transparent;



        }
        public void chkStatus_OnCheckedChanged(object sender, EventArgs e)
        {
            //string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            //SqlConnection con = new SqlConnection(connecsqtionString);
            string constr = "data source=DESKTOP-EJ4EJ89\\SQLEXPRESS;Database=donation ; Integrated Security=True;";

            CheckBox chkStatus = (CheckBox)sender;
            GridViewRow row = (GridViewRow)chkStatus.NamingContainer;
            SqlConnection con = new SqlConnection(constr);

            string cid = row.Cells[9].Text;
            //string cid = GridView1.DataKeys[row.RowIndex]["tool_id"].ToString();

            bool state = chkStatus.Checked;
            //string query = "UPDATE tool SET status = 1 WHERE tool_id = @tool_id";

            string query = "UPDATE Tool SET status = @status WHERE tool_id = @tool_id";

            SqlCommand com = new SqlCommand(query, con);

            com.Parameters.Add("@status", SqlDbType.Bit).Value = state;
            com.Parameters.Add("@tool_id", SqlDbType.Int).Value = cid;

            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            //LoadData();
            //Response.Redirect("Admin.aspx");
            //protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
            //{
            //    int count = 1;

            //    if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            //    {
            //        count++;

            //    }
            //}
        }

        protected void btnVoulnteer_Click(object sender, EventArgs e)
        {
            donations.Visible = false;
            availableTools.Visible = false;
            organizations.Visible = false;
            vol.Visible = true;
            cash.Visible = false;
            Applications.Visible = false;

            btnCash.ForeColor = Color.White;
            btnCash.BackColor = Color.Transparent;
            btnVoulnteer.ForeColor = Color.Black;
            btnVoulnteer.BackColor = Color.White;
            btnAvailableTools.ForeColor = Color.White;
            btnAvailableTools.BackColor = Color.Transparent;
            btnDonations.ForeColor = Color.White;
            btnDonations.BackColor = Color.Transparent;
            btnOrganizations.ForeColor = Color.White;
            btnOrganizations.BackColor = Color.Transparent;
            btnApplications.ForeColor = Color.White;
            btnApplications.BackColor = Color.Transparent;

        }

        protected void btnCash_Click(object sender, EventArgs e)
        {
            donations.Visible = false;
            availableTools.Visible = false;
            organizations.Visible = false;
            vol.Visible = false;
            cash.Visible = true;
            Applications.Visible = false;

            btnCash.ForeColor = Color.Black;
            btnCash.BackColor = Color.White;
            btnVoulnteer.ForeColor = Color.White;
            btnVoulnteer.BackColor = Color.Transparent;
            btnAvailableTools.ForeColor = Color.White;
            btnAvailableTools.BackColor = Color.Transparent;
            btnDonations.ForeColor = Color.White;
            btnDonations.BackColor = Color.Transparent;
            btnOrganizations.ForeColor = Color.White;
            btnOrganizations.BackColor = Color.Transparent;
            btnApplications.ForeColor = Color.White;
            btnApplications.BackColor = Color.Transparent;

        }

        protected void btnApplications_Click(object sender, EventArgs e)
        {
            Applications.Visible = true;
            donations.Visible = false;
            availableTools.Visible = false;
            organizations.Visible = false;
            vol.Visible = false;
            cash.Visible = false;
            btnCash.ForeColor = Color.White;
            btnCash.BackColor = Color.Transparent;
            btnVoulnteer.ForeColor = Color.White;
            btnVoulnteer.BackColor = Color.Transparent;
            btnAvailableTools.ForeColor = Color.White;
            btnAvailableTools.BackColor = Color.Transparent;
            btnDonations.ForeColor = Color.White;
            btnDonations.BackColor = Color.Transparent;
            btnOrganizations.ForeColor = Color.White;
            btnOrganizations.BackColor = Color.Transparent;
            btnApplications.ForeColor = Color.Black;
            btnApplications.BackColor = Color.White;
        }
        public void chkStatus_OnCheckedChanged1(object sender, EventArgs e)
        {
            //string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            //SqlConnection con = new SqlConnection(connecsqtionString);
            
            string constr = @"Server=DESKTOP-EJ4EJ89\SQLEXPRESS;Database=donation ; Integrated Security=True;";

            CheckBox chkStatus = (CheckBox)sender;
            GridViewRow row = (GridViewRow)chkStatus.NamingContainer;
            SqlConnection con = new SqlConnection(constr);

            string cid = row.Cells[0].Text;
            bool state = chkStatus.Checked;
            //string query = "UPDATE tool SET status = 1 WHERE tool_id = @tool_id";

            string query = "UPDATE Application SET applicationStatus = @applicationStatus WHERE application_id = @application_id";

            SqlCommand com = new SqlCommand(query, con);

            com.Parameters.Add("@applicationStatus", SqlDbType.Bit).Value = state;
            com.Parameters.Add("@application_id", SqlDbType.Int).Value = cid;

            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            //LoadData();
            //Response.Redirect("adminapplication.aspx");

        }

        protected void btnStatistics_Click(object sender, EventArgs e)
        {
            Applications.Visible = false;
            donations.Visible = false;
            availableTools.Visible = false;
            organizations.Visible = false;
            vol.Visible = false;
            cash.Visible = false;
        }
    }
}