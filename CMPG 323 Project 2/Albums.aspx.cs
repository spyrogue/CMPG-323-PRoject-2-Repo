using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace CMPG_323_Project_2
{
    public partial class Albums : System.Web.UI.Page
    {
        public SqlConnection con;
        public SqlCommand com;
        public DataSet ds;
        SqlDataAdapter adap;
        public string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Brandon\Documents\ImageUser.mdf;Integrated Security=True;Connect Timeout=30";
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(connectionString);
            con.Open();

            if (!string.IsNullOrEmpty(Session["LogInUsername"] as string))
            {
                HyperLink5.Visible = false;
                HyperLink6.Visible = false;
                LinkButton1.Visible = true;
                TextBox2.Text = Session["LogInUsername"].ToString();
            }
            else
            {
                Response.Write("<script>alert('Access Required')</script>");
                TextBox1.Visible = false;
                TextBox2.Visible = false;
                GridView1.Visible = false;
                Button1.Visible = false;
            }
            con.Close();

            com = new SqlCommand();
            com.Connection = con;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(connectionString);
            string insertAlbumName = TextBox1.Text;
            string insertUser = TextBox2.Text;
            con.Open();
            ds = new DataSet();
            adap = new SqlDataAdapter();
            string sql = "INSERT INTO Albums VALUES('" + insertAlbumName + "','"+ insertUser+"')";
            com = new SqlCommand(sql, con);
            ds = new DataSet();
            adap.SelectCommand = com;
            adap.Fill(ds);
            con.Close();
            Response.Redirect("Albums.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
    }
}