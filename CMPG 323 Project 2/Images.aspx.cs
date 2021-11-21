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
    public partial class Images : System.Web.UI.Page
    {
        public SqlConnection con;
        public SqlCommand com;
        public DataSet ds;
        SqlDataAdapter adap;
        SqlTransaction tran;
        public string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Brandon\Documents\ImageUser.mdf;Integrated Security=True;Connect Timeout=30";


        protected void Page_Load(object sender, System.EventArgs e)
        {
            con = new SqlConnection(connectionString);
            con.Open();

            if (!string.IsNullOrEmpty(Session["LogInUsername"] as string))
            {
                HyperLink5.Visible = false;
                HyperLink6.Visible = false;
                LinkButton1.Visible = true;
            }
            else
            {
                Response.Write("<script>alert('Please login to view this content')</script>");
                TextBox1.Visible = false;
                TextBox3.Visible = false;
                TextBox4.Visible = false;
                TextBox5.Visible = false;
                TextBox6.Visible = false;
                DropDownList2.Visible = false;
                fileupload.Visible = false;
                GridView1.Visible = false;
                upload.Visible = false;
            }
            con.Close();

            com = new SqlCommand();
            com.Connection = con;
        }

        protected void upload_Click(object sender, System.EventArgs e)
        {
            try
            {
                con = new SqlConnection(connectionString);
                string insertImageName = TextBox1.Text;
                string insertAlbumId = DropDownList2.SelectedValue;
                string insertCapturedBy = TextBox3.Text;
                string insertTags = TextBox4.Text;
                string insertLocation = TextBox5.Text;
                string insertUser = TextBox6.Text;
                string insertImage = Path.GetFileName(fileupload.PostedFile.FileName);
                fileupload.SaveAs(Server.MapPath("~/Images/" + insertImage));

                con = new SqlConnection(connectionString);
                con.Open();
                ds = new DataSet();
                adap = new SqlDataAdapter();
                string sql = "INSERT INTO Image_Details VALUES('" + insertImageName + "','" + insertAlbumId + "','" + insertCapturedBy + "','" + insertTags + "','" + insertLocation + "','" + insertUser + "','Images/" + insertImage + "')";
                com = new SqlCommand(sql, con);
                ds = new DataSet();
                adap.SelectCommand = com;
                adap.Fill(ds);
                con.Close();
                

                /*con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Brandon\Documents\ImageUser.mdf;Integrated Security=True;Connect Timeout=30");
                con.Open();
                com = new SqlCommand("insert into Image_Details (ImageName, Album Id, Captured By, Tags, Location, User, Image) values(@ImageName,@Album Id, @Captured By, @Tags, @Location, @User, @Image)", con);
                com.Parameters.AddWithValue("@ImageName", insertImageName);
                com.Parameters.AddWithValue("@Album Id", insertAlbumId);
                com.Parameters.AddWithValue("@Captured By", insertCapturedBy);
                com.Parameters.AddWithValue("@Tags", insertTags);
                com.Parameters.AddWithValue("@Location", insertLocation);
                com.Parameters.AddWithValue("@User", insertUser);
                com.Parameters.AddWithValue("@Image", "Images/" + insertImage);
                com.ExecuteNonQuery();
                adap = new SqlDataAdapter("select * from Image_Details", con);
                ds = new DataSet();
                adap.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();*/
                if (insertAlbumId != "Album Id")
                {

                }
                Response.Redirect("Images.aspx");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Could not upload file')</script>");
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Brandon\Documents\ImageUser.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            adap = new SqlDataAdapter("select * from Image_Details", con);
            ds = new DataSet();
            adap.Fill(ds);
            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DownloadFile(string name)
        {
            string _path = Request.PhysicalApplicationPath + "CV/" + name;
            System.IO.FileInfo _file = new System.IO.FileInfo(_path);
            if (_file.Exists)
            {
                Response.Clear();
                Response.AddHeader("Content-Disposition", "attachment; filename=" + _file.Name);
                Response.AddHeader("Content-Length", _file.Length.ToString());
                Response.ContentType = "application/octet-stream";
                Response.WriteFile(_file.FullName);
                Response.End();
            }
            else
            {
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "messagebox", "&lt;script type=\"text/javascript\"&gt;alert('File not Found');</script>");
            }
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            /*string shared = (GridView1.SelectedRow.Cells[10]).Text;
            Response.Clear();
            Response.ContentType = "application/octet-stream";
            Response.AppendHeader("Content-Disposition", "filename=" + shared);
            Response.TransmitFile(Server.MapPath(shared));
            Response.End();*/

            int i = Convert.ToInt32(GridView1.SelectedIndex);
            String ImageName = GridView1.SelectedRow.Cells[3].Text;
            String CapturedBy = GridView1.SelectedRow.Cells[5].Text;
            String Tags = GridView1.SelectedRow.Cells[6].Text;
            String Location = GridView1.SelectedRow.Cells[7].Text;
            String SharedFrom = GridView1.SelectedRow.Cells[8].Text;
            String Image = GridView1.SelectedRow.Cells[10].Text;
            String ImagePath = GridView1.SelectedRow.Cells[10].Text;
            Response.Write("<script>alert('" + User + "')</script>");
            con = new SqlConnection(connectionString);
            con.Open();
            string sql = "INSERT INTO Shared VALUES('" + ImageName + "','" + CapturedBy + "','" + Location + "','" + Tags + "','" + SharedFrom + "','" + Image + "','" + ImagePath + "')";
            com = new SqlCommand(sql, con);
            com.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Image shared successfully')</script>");

        }

        protected void ShareBtn_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Brandon\Documents\ImageUser.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            tran = con.BeginTransaction();
            com.Transaction = tran;
            string slno = null;
            try
            {
                /*foreach (GridViewRow g1 in GridView1.Rows)
                {
                    string imageName = (g1.FindControl("TextBox1") as TextBox).Text;
                    string albumId = (g1.FindControl("TextBox2") as TextBox).Text;
                    string capturedBy = (g1.FindControl("TextBox3") as TextBox).Text;
                    string tags = (g1.FindControl("TextBox4") as TextBox).Text;
                    string location = (g1.FindControl("TextBox5") as TextBox).Text;
                    string user = (g1.FindControl("TextBox6") as TextBox).Text;
                    string image = (g1.FindControl("TextBox7") as TextBox).Text;
                    string query = "insert into Shared values(" + imageName + ",'" + albumId + "'," + capturedBy + ",'" + tags + "',"+location+"',"+user+"',"+image+")";
                    //cmd.CommandText = "insert into Members values ('" + g1.Cells[0].Text + "','" + g1.Cells[1].Text + "','" + g1.Cells[2].Text + "','" + g1.Cells[3].Text + "')";  
                    //slno = id;
                    com.CommandText = query;
                    com.ExecuteNonQuery();
                }
                tran.Commit();*/

            }
            catch(Exception ex)
            {
                upload.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }

            /*con = new SqlConnection(connectionString);
            con.Open();
            ds = new DataSet();
            adap = new SqlDataAdapter();
            string sql = "INSERT INTO Shared VALUES('@ImageName','@AlbumId','@CapturedBy','@Tags','@Location','@User','Images/@Image')";
            com = new SqlCommand(sql, con);
            ds = new DataSet();
            adap.SelectCommand = com;
            adap.Fill(ds);
            con.Close();
            Response.Redirect("Images.aspx");*/
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

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            /*if (e.CommandName == "Download")
            {
                int i = Convert.ToInt32(GridView1.SelectedIndex);
                string shared = GridView1.SelectedRow.Cells[7].Text;

                Response.Clear();
                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "filename=");
                Response.TransmitFile(@"~\Images\" + shared + ".png");
                Response.End();

                *//*Response.Clear();
                Response.ContentType = "Image/.png";
                Response.AppendHeader("Content-Disposition", "attachmentl;filename=/" + e.CommandArgument);
                Response.Write("<script>alert('" + ("/Images/") + "')</script>");
                Response.TransmitFile("/Images/");
                Response.End();*//*
            }*/
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            string _Name = ((ImageButton)sender).CommandArgument;
            DownloadFile(_Name);
            /*con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Brandon\Documents\ImageUser.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            tran = con.BeginTransaction();
            com.Transaction = tran;
            string slno = null;
            try
            {
                *//*foreach (GridViewRow g1 in GridView1.Rows)
                {
                    string imageName = (g1.FindControl("TextBox1") as TextBox).Text;
                    string albumId = (g1.FindControl("TextBox2") as TextBox).Text;
                    string capturedBy = (g1.FindControl("TextBox3") as TextBox).Text;
                    string tags = (g1.FindControl("TextBox4") as TextBox).Text;
                    string location = (g1.FindControl("TextBox5") as TextBox).Text;
                    string user = (g1.FindControl("TextBox6") as TextBox).Text;
                    string image = (g1.FindControl("TextBox7") as TextBox).Text;
                    string query = "insert into Shared values(" + imageName + ",'" + albumId + "'," + capturedBy + ",'" + tags + "'," + location + "'," + user + "'," + image + ")";
                    //cmd.CommandText = "insert into Members values ('" + g1.Cells[0].Text + "','" + g1.Cells[1].Text + "','" + g1.Cells[2].Text + "','" + g1.Cells[3].Text + "')";  
                    //slno = id;
                    com.CommandText = query;
                    com.ExecuteNonQuery();
                }
                tran.Commit();*//*
                con = new SqlConnection(connectionString);
                con.Open();
                ds = new DataSet();
                adap = new SqlDataAdapter();
                string sql = "INSERT INTO Shared" +
                    "SELECT ImageName, Album Id, Captured By, Tags, Location, User, Image FROM Image_Details ";
                com = new SqlCommand(sql, con);
                ds = new DataSet();
                adap.SelectCommand = com;
                adap.Fill(ds);
                con.Close();
                Response.Redirect("Shared.aspx");
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }*/
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