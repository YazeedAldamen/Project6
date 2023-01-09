using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            back.Style["background-image"] = "url(\"/Image/mobaile2.jpeg\")";

        }
    }
}