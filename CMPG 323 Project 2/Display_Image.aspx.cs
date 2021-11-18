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
    public partial class Display_Image : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Brandon\Documents\ImageUser.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            da = new SqlDataAdapter("select * from Image_Details", con);
            ds = new DataSet();
            da.Fill(ds);
            gdImage.DataSource = ds;
            gdImage.DataBind();
        }

        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        protected void upload_Click(object sender, EventArgs e)
        {
            try
            {
                string filename = Path.GetFileName(fileupload.PostedFile.FileName);
                fileupload.SaveAs(Server.MapPath("~/Images/" + filename));
                con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Brandon\Documents\ImageUser.mdf;Integrated Security=True;Connect Timeout=30");
                con.Open();
                cmd = new SqlCommand("insert into Image_Details (ImageName,Image) values(@ImageName,@Image)", con);
                cmd.Parameters.AddWithValue("@ImageName", filename);
                cmd.Parameters.AddWithValue("@Image", "Images/" + filename);
                cmd.ExecuteNonQuery();
                da = new SqlDataAdapter("select * from Image_Details", con);
                ds = new DataSet();
                da.Fill(ds);
                gdImage.DataSource = ds;
                gdImage.DataBind();
                
            }
            catch (Exception ex)
            {
                upload.Text = ex.Message;
            }
        }

        protected void Display_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Brandon\Documents\ImageUser.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            da = new SqlDataAdapter("select * from Image_Details", con);
            ds = new DataSet();
            da.Fill(ds);
            gdImage.DataSource = ds;
            gdImage.DataBind();
            upload.Text = "Upload";
        }
        private string GetFileExtension(string fileExtension)
        {
            switch (fileExtension.ToLower())
            {
                case ".docx":
                case ".doc":
                    return "Microsoft Word Document";
                case ".xlsx":
                case ".xls":
                    return "Microsoft Excel Document";
                case ".txt":
                    return "Text Document";
                case ".jpg":
                case ".png":
                    return "Image";
                default:
                    return "Unknown";
            }
        }

        protected void gdImage_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}