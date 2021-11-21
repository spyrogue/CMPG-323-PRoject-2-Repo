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
    public partial class Shared : System.Web.UI.Page
    {

        public SqlConnection con;
        public SqlCommand com;
        public DataSet ds;
        SqlDataAdapter adap;
        SqlTransaction tran;
        public string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Brandon\Documents\ImageUser.mdf;Integrated Security=True;Connect Timeout=30";

        protected void Page_Load(object sender, EventArgs e)
        {
            com = new SqlCommand();
            com.Connection = con;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            /*string shared = (GridView1.SelectedRow.Cells[8]).Text;
            Response.Clear();
            Response.ContentType = "application/octet-stream";
            Response.AppendHeader("Content-Disposition", "filename=" + shared);
            Response.TransmitFile(Server.MapPath(shared));
            Response.End();*/
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            string shared = (GridView1.SelectedRow.Cells[8]).Text;
            Response.Clear();
            Response.ContentType = "application/octet-stream";
            Response.AppendHeader("Content-Disposition", "filename=" + shared);
            Response.TransmitFile(Server.MapPath(shared));
            Response.End();
        }
    }
}