using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace SOC
{
    public partial class UserHomePage : System.Web.UI.Page
    {

        SqlConnection sqlCon;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                sqlCon = new SqlConnection("data source=LAPTOP-CLMNSDM8;database=SOCModule;user id=sa; password=Akila");
                sqlCon.Open();
                Label1.Text = "Connection Sucessfull...";
            }
            catch (Exception ex)
            {
                Label1.Text = "Error Connecting db" + ex;
            }

            if (!IsPostBack)
            {
                GVbind();
            }
        }
        protected void GVbind()
        {
            SqlCommand cmd = new SqlCommand("select * from AddRoom");
            cmd.Connection = sqlCon;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView14.DataSource = dr;
                GridView14.DataBind();
            }
        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
            {
                
                SqlCommand sqlcomm = new SqlCommand();
                string sqlquery = "select * from [dbo].[AddRoom] where Country like '%'+@Country+'%' ";
                sqlcomm.CommandText = sqlquery;
                sqlcomm.Connection = sqlCon;
                sqlcomm.Parameters.AddWithValue("Country", txtSearch.Text);
                DataTable dt = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
                sda.Fill(dt);
                GridView14.DataSource = dt;
                GridView14.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand sqlcomm = new SqlCommand();
            string sqlquery = "select * from [dbo].[AddRoom] where City like '%'+@City+'%' ";
            sqlcomm.CommandText = sqlquery;
            sqlcomm.Connection = sqlCon;
            sqlcomm.Parameters.AddWithValue("City", TextBox1.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
            sda.Fill(dt);
            GridView14.DataSource = dt;
            GridView14.DataBind();
        }

      
    }
    }
