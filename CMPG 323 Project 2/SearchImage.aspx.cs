using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
namespace CMPG_323_Project_2
{
    public partial class SearchImage : System.Web.UI.Page
    {
        public SqlConnection con;
        public SqlCommand com;
        public DataSet ds;
        SqlDataAdapter adap;
        SqlTransaction tran;
        public string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Brandon\Documents\ImageUser.mdf;Integrated Security=True;Connect Timeout=30";


        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(connectionString);
            con.Open();
            
            if (!string.IsNullOrEmpty(Session["LogInUsername"] as string))
            {
                string sql = "SELECT * FROM Image_Details WHERE [User] LIKE '%" + Session["LogInUsername"].ToString() + "'";
                ds = new DataSet();
                adap = new SqlDataAdapter();
                com = new SqlCommand(sql, con);
                //com.ExecuteNonQuery();
                adap.SelectCommand = com;
                adap.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                HyperLink5.Visible = false;
                HyperLink6.Visible = false;
                LinkButton1.Visible = true;
            }
            else
            {
                Response.Write("<script>alert('Please login to view this content')</script>");
                Label1.Visible = false;
                TextBox1.Visible = false;
                Button1.Visible = false;
                GridView1.Visible = false;
            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(connectionString);
            con.Open();
            string search_value = TextBox1.Text;
            string sql = "SELECT * FROM Image_Details WHERE [ImageName] LIKE '%" + search_value + "'" +
                "OR  [Captured By] LIKE '%" + search_value + "%' OR [User] LIKE '%" + search_value + "%'";
            ds = new DataSet();
            adap = new SqlDataAdapter();
            com = new SqlCommand(sql, con);
            adap.SelectCommand = com;
            adap.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["LogInEmail"] = null;
            Session["LogInUsername"] = null;
            Session["LogInPassword"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}