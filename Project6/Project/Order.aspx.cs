﻿using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //    var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            //    SqlConnection connection = new SqlConnection(connectionString);
            //    connection.Open();

            //    int id = Convert.ToInt32(Request.QueryString["id"]);
            //    SqlCommand comman = new SqlCommand($"select * from Application where Id='{id}'", connection);

            //    SqlDataReader reader = comman.ExecuteReader();

            //    while (reader.Read())
            //    {
            //        lblOrder.Text = "<div class='container mt-3'>" +
            //            $"<h2>Order Date: {reader[0]}</h2>" +
            //            $"<div class='card'style='width:400px'>" +
            //            $"<div class='card-body'><h4 class='card-title'>{reader[1]}</h4>" +
            //            $"<p> price: {reader[2]}</p>" +
            //            $"</div></div><br></div>";
            //    }


            //    connection.Close();
            //}

           
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            


            string constr = "data source=DESKTOP-EJ4EJ89\\SQLEXPRESS;Database=donation ; Integrated Security=True;";
            SqlConnection con = new SqlConnection(constr);

            string query = $" insert into Application(applicationDate, tool_id, user_id, applicationStatus) values({DateTime.Now}, , 1, 0)";
            SqlCommand com = new SqlCommand(query, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();

        }
    }
}