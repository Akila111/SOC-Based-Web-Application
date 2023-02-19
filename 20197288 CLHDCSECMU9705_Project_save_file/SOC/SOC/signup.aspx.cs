using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SOC
{
    public partial class signup : System.Web.UI.Page
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("insert into URegistration values('" + txtUserName.Text + "','" + txtEmail.Text + "','" + txtNicNumber.Text + "','" + txtAddres.Text + "','" + txtphone.Text + "','" + txtPassword.Text + "','" + DropDownList1.Text + "')");

                cmd.Connection = sqlCon;
                int temp = cmd.ExecuteNonQuery();

                if (temp > 0)
                    Response.Write("<script>alert('User Successfuly Register');</script>"); 

                else
                {
                    Response.Write("<script>alert('User Fail To Register');</script>");
                }
            }
            catch (Exception ex)
            {
                lblMsg.Text = "Error inserting data"+ex;
            }
        }
    }
}