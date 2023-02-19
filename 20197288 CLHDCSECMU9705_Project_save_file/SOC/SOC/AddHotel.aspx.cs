using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace SOC
{
    public partial class AddHotel : System.Web.UI.Page
    {
        SqlConnection sqlCon;
        protected void Page_Load(object sender, EventArgs e)
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

            if(!IsPostBack)
            {
                GVbind();
            }
            
        }

        

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (imgFile.HasFiles)
            {
                try
                {
                    string fname = Path.GetFileName(imgFile.FileName);
                    imgFile.SaveAs(Server.MapPath("images/") + fname);

                    SqlCommand cmd = new SqlCommand("insert into AddHotel values('" + txtHotelID.Text + "','" + txtHotelName.Text + "','" + txtLocation.Text + "','" + txtContact.Text + "','" + txtEmail.Text + "','" + txtHotelRooms.Text + "','" + txtNumberOfEmployes.Text + "','" + imgFile.FileName + "')");

                    cmd.Connection = sqlCon;
                    int temp = cmd.ExecuteNonQuery();

                    if (temp > 0)
                        Response.Write("<script>alert('Hotel Successfuly Added');</script>");
                    

                    else
                    {
                        Response.Write("<script>alert('Hotel fail to Added');</script>"); 
                    }
                }
                catch (Exception ex)
                {
                    lblMsg.Text = "Error inserting data" + ex;
                }
            }

        }

        protected void GVbind()
        {
            SqlCommand cmd = new SqlCommand("select * from AddHotel");
            cmd.Connection = sqlCon;
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.HasRows==true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }

    

}
