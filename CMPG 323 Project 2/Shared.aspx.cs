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
            int i = Convert.ToInt32(GridView1.SelectedIndex);
            string shared = GridView1.SelectedRow.Cells[7].Text;
            /*String name = GridView1.SelectedRow.Cells[2].Text;
            String capturedBy = GridView1.SelectedRow.Cells[4].Text;
            String Location = GridView1.SelectedRow.Cells[5].Text;
            String tags = GridView1.SelectedRow.Cells[6].Text;
            String User = GridView1.SelectedRow.Cells[7].Text;*/

            switch (i){
                case 0:
                    Response.Write("<script>alert('" + ("1") + "')</script>");
                    break;
                case 1:
                    Response.Write("<script>alert('" + ("2") + "')</script>");
                    break;
                case 2:
                    Response.Write("<script>alert('" + ("3") + "')</script>");
                    break;
                case 3:
                    Response.Write("<script>alert('" + ("4") + "')</script>");
                    break;
                case 4:
                    Response.Write("<script>alert('" + ("5") + "')</script>");
                    break;
                case 5:
                    Response.Write("<script>alert('" + ("6") + "')</script>");
                    break;
            }


            //Response.Write("<script>alert('" + shared + "')</script>");
        }
    }
}