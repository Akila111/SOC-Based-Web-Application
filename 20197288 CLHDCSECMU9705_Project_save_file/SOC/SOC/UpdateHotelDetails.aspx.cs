using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SOC
{
    public partial class UpdateHotelDetails : System.Web.UI.Page
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
            txtHotelID.Text = "";
            txtHotelName.Text = "";
            txtLocation.Text = "";
            txtContact.Text = "";
            txtEmail.Text = "";
            txtHotelRooms.Text = "";
            txtNumberOfEmployes.Text = "";
           


        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("Select * from AddHotel where HotelID ='" + txtHotelID.Text + "'", sqlCon);


                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {

                    txtHotelName.Text = dr[1].ToString();
                    txtLocation.Text = dr[2].ToString();
                    txtContact.Text = dr[3].ToString();
                    txtEmail.Text = dr[4].ToString();
                    txtHotelRooms.Text= dr[5].ToString();
                    txtNumberOfEmployes.Text = dr[6].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Hotel not Found');</script>"); 
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
                SqlCommand cmd = new SqlCommand("Update AddHotel set HotelName='" + txtHotelName.Text + "', Location='" + txtLocation.Text + "', ContactInformation='" + txtContact.Text + "', EmailAddress='" + txtEmail.Text + "', HotelRoom='" + txtHotelRooms.Text + "', NumerOfEmployes='" + txtNumberOfEmployes.Text + "' where HotelID='" + txtHotelID.Text + "'", sqlCon);


                int numberOfRecords = cmd.ExecuteNonQuery();
                if (numberOfRecords > 0)
                {
                    Response.Write("<script>alert('Data Successfully Updated');</script>"); 
                }
            }
            catch (Exception )
            {
                Response.Write("<script>alert('Data Fail To Update');</script>");
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd1 = new SqlCommand("DELETE FROM AddHotel WHERE HotelID = '" + txtHotelID.Text + "'", sqlCon);
                int nor = cmd1.ExecuteNonQuery();

                if (nor > 0)
                {
                    Response.Write("<script>alert('Hotel Delete Succsessful');</script>"); 
                }
                else
                {
                    Response.Write("<script>alert('Hotel Fail To Delete');</script>");
                }

            }
            catch (Exception ex)
            {
                lblMsg.Text = "Error inserting data" + ex;
            }

        }
    }
}