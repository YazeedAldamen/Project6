using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Session["userName"] = Context.User.Identity.GetUserName();
            Session["user_id"] = Context.User.Identity.GetUserId();
            string volunteer = (string)Session["volunteer"];
            if (volunteer != null)
            {
                if (volunteer == "1")
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "voulnteer();", true);
                    Session["volunteer"] = null;
                }
            }


            string donation = (string)Session["donation"];
            if(donation != null){
                if(donation == "1"){
                    ScriptManager.RegisterStartupScript(this, GetType(), "Success", "donation();", true);
                    Session["donation"] = null;
                }
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("donation.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("donation.aspx");

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("donation.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("donation.aspx");

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("donation.aspx");

        }
       
         protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("donation.aspx");

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("donation.aspx");
        }

        protected void btnVoulnteer_Click(object sender, EventArgs e)
        {
            Response.Redirect("voulnteer.aspx");
        }
    }
}