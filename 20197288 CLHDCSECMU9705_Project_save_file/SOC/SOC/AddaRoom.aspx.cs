using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace SOC
{
    public partial class AddaRoom : System.Web.UI.Page
    {
        SqlConnection sqlCon;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                sqlCon = new SqlConnection("data source=LAPTOP-CLMNSDM8;database=SOCModule;user id=sa; password=Akila");
                sqlCon.Open();
                lblTxt.Text = "Successfuly Connected";
            }
            catch (Exception ex)
            {
                lblTxt.Text = "Error Connecting db" + ex;
            }
            if (!IsPostBack)
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("Select HotelName from AddHotel", sqlCon);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();

                    da.Fill(ds, "AddHotel");

                    DropDownList1.DataSource = ds;
                    DropDownList1.DataBind();

                    DropDownList1.DataValueField = "HotelName";
                    DropDownList1.DataBind();
                }
                catch (Exception ex)
                {
                    lblTxt.Text = "error" + ex;
                }
                if (!IsPostBack)
                {
                    GVbind();
                }
            }
        }

        String getHotelId()
        {
            string HotelID = "";
            try
            {
                SqlCommand cmd = new SqlCommand("Select HotelID from AddHotel where HotelName = '" + DropDownList1.Text + "'", sqlCon);
                SqlDataReader dr = cmd.ExecuteReader();

                Boolean records = dr.HasRows;
                if (records)
                {
                    while (dr.Read())
                    {
                        HotelID = dr[0].ToString();
                    }
                }
                dr.Close();
            }
            catch (Exception ex)
            {
                lblTxt.Text = "error Display Hotel Name" + ex;
            }
            return HotelID;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFiles)
            {
                try
                {
                    string fname = Path.GetFileName(FileUpload1.FileName);
                    FileUpload1.SaveAs(Server.MapPath("images/") + fname);

                    SqlCommand cmd = new SqlCommand("insert into AddRoom values('" + txtRoomID.Text + "','" + getHotelId() + "','" + DropDownList2.Text + "','" + txtPrice.Text + "','" + txtCountry.Text + "','" + txtCity.Text + "','" + txtDescription.Text + "','" + FileUpload1.FileName + "');");

                    cmd.Connection = sqlCon;
                    int temp = cmd.ExecuteNonQuery();

                    if (temp > 0)
                    {
                        Response.Write("<script>alert('Room Successfuly Added');</script>"); 
                    }
                    else
                    {
                        Response.Write("<script>alert('Room fail to Added');</script>"); 
                    }
                }
                catch (Exception ex)
                {
                    lblTxt.Text = "Error inserting data" + ex;
                }


            }
        }
              protected void GVbind()
        {
            SqlCommand cmd = new SqlCommand("select * from AddRoom");
            cmd.Connection = sqlCon;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
        }
    }

       
    
}