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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                //string folderPath = Server.MapPath("~/Images/");

                ////Check whether Directory (Folder) exists.
                //if (!Directory.Exists(folderPath))
                //{
                //    //If Directory (Folder) does not exists Create it.
                //    Directory.CreateDirectory(folderPath);
                //}
                //userImg.SaveAs(folderPath + Path.GetFileName(userImg.FileName));

                int id = 1;
                //Convert.ToInt32(Request.QueryString["id"]);
                SqlCommand comman = new SqlCommand($"select UserName,Email,PhoneNumber,PasswordHash from AspNetUsers where Id='{id}'", connection);

                SqlDataReader sdr = comman.ExecuteReader();
                while (sdr.Read())
                {

                    lblName.Text = sdr[0].ToString();
                    lblUName.Text = sdr[0].ToString();

                    lblEmail.Text = sdr[1].ToString();
                    //lblAddr.Text = sdr[2].ToString();
                    lblPhone.Text = sdr[2].ToString();



                    txtName.Text = sdr[0].ToString();
                    txtEmail.Text = sdr[1].ToString();
                    //txtAddr.Text = sdr[2].ToString();
                    txtPhone.Text = sdr[2].ToString();
                    txtPass.Text = sdr[3].ToString();



                }


                connection.Close();
            }
        }


        protected void btnEdit_Click(object sender, EventArgs e)
        {
            editInfo.Visible = true;
            userInfo.Visible = false;
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            //string filelocation = "";
            //if (userImg.HasFile)
            //{
            //    string fullPath = Server.MapPath("~/Images/") + userImg.FileName;
            //    filelocation = userImg.FileName;
            //    userImg.SaveAs(fullPath);

            //}

            //else
            //{
            //    filelocation = Session["img"].ToString();
            //}

            int id = 1;
            //int id = Convert.ToInt32(Request.QueryString["id"]);


            SqlCommand command = new SqlCommand($"update AspNetUsers set UserName='{txtName.Text}',Email='{txtEmail.Text}',PhoneNumber='{txtPhone.Text}' where Id={id}", connection);

            command.ExecuteNonQuery();
            Label1.Text = txtName.Text;
            connection.Close();
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);
        }

    }
}
