using System;
using System.Collections.Generic;
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
    }
}