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
            con.Close();
            Label1.Text = "success";
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
    }
}