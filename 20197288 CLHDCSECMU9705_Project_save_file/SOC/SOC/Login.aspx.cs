using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SOC
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection sqlCon;
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                try
                {
                    sqlCon = new SqlConnection("data source=LAPTOP-CLMNSDM8;database=SOCModule;user id=sa; password=Akila");
                    sqlCon.Open();
                    lblMsg.Text = "Connection Sucessfull...";
                }
                catch (Exception ex)
                {
                    lblMsg.Text = "Error Connecting db" + ex;
                }
            }
        }

        
        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from URegistration where UserName = '" + txtUser.Text + "' and Password = '" + txtPassword.Text + "' and UserType='" + DropDownList1.SelectedItem.ToString() + "'");
            cmd.Connection = sqlCon;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                if (DropDownList1.SelectedIndex == 0)
                {
                    Response.Write("<script>alert('Login Sucessfull As ADMIN');</script>");
                    Server.Transfer("AdminHomePage.aspx");
                }
                else if (DropDownList1.SelectedIndex == 1)
                {
                    Response.Write("<script>alert('Login Sucessfull As USER');</script>");
                    Server.Transfer("UserHomePage.aspx");
                }

            }
            else
            {
                Response.Write("error in your input");
            }



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }
    }
    }
