﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Email_Task
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='C:\\Users\\Administrator\\documents\\visual studio 2015\\Projects\\Email_Task\\Email_Task\\App_Data\\Database1.mdf';Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            SqlDataReader R;
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = cmd.CommandText = "Select * from Users where emailaddress = '" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "'";
            R = cmd.ExecuteReader();
            if (R.Read())
            {
                Session["User"] = R["EmailAddress"].ToString();
                Response.Redirect("inboxPage.aspx");
            }

        }
    }
}