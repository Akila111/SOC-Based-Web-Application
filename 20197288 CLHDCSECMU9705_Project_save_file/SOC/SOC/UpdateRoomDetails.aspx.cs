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
    public partial class UpdateRoomDetails : System.Web.UI.Page
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

        protected void btnClear_Click(object sender, EventArgs e)
        {
            {
                txtRoomID.Text = "";
                DropDownList1.Text = "";
                DropDownList2.Text = "";
                txtPrice.Text = "";
                txtCountry.Text = "";
                txtCity.Text = "";
                txtDescription.Text = "";



            }

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

            try
            {
                SqlCommand cmd = new SqlCommand("Select * from AddRoom where RoomID ='" + txtRoomID.Text + "'", sqlCon);


                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {

                    DropDownList1.Text = dr[1].ToString();
                    DropDownList2.Text = dr[2].ToString();
                    txtPrice.Text = dr[3].ToString();
                    txtCountry.Text = dr[4].ToString();
                    txtCity.Text = dr[5].ToString();
                    txtDescription.Text = dr[6].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Room Not Found');</script>");
                }
                dr.Close();
            }
            catch (Exception ex)
            {
                lblMsg.Text = "Can't Found" + ex;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("Update AddRoom set RoomType='" + DropDownList2.Text + "', Price='" + txtPrice.Text + "', Country='" + txtCountry.Text + "', City='" + txtCity.Text + "', Description='" + txtDescription.Text + "' where RoomID='" + txtRoomID.Text + "'", sqlCon);


                int numberOfRecords = cmd.ExecuteNonQuery();
                if (numberOfRecords > 0)
                {
                    Response.Write("<script>alert('Room Successfully Updated');</script>");
                }
            }
            catch (Exception )
            {
                Response.Write("<script>alert('Room Not Successfully Updated');</script>");
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd1 = new SqlCommand("DELETE FROM AddRoom WHERE RoomID = '" + txtRoomID.Text + "'", sqlCon);
                int nor = cmd1.ExecuteNonQuery();

                if (nor > 0)
                {
                    Response.Write("<script>alert('Room Successfully Delete');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Room Not Successfully Delete');</script>");
                }

            }
            catch (Exception ex)
            {
                lblMsg.Text = "Error inserting data" + ex;
            }
        }
    }
}