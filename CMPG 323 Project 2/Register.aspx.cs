using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CMPG_323_Project_2
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LinkButton1.Visible = false;
        }

        string construct = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Brandon\Documents\ImageUser.mdf;Integrated Security=True;Connect Timeout=30";
        public SqlConnection connect;
        public DataSet dataS;
        public SqlDataAdapter adapter;
        SqlCommand command;
        protected void Submit_Click2(object sender, EventArgs e)
        {
            if (EmailTBox.Text == "")
            {
                PasswordValid.Enabled = true;
            }
            if (UsernameTBox.Text == "")
            {
                UsernameValid.Enabled = true;
            }
            if (PasswordTBox.Text == "")
            {
                PasswordValid.Enabled = true;
            }
            else
            {
                Session["Email"] = EmailTBox.Text;
                Session["Username"] = UsernameTBox.Text;
                Session["Password"] = PasswordTBox.Text;

                string insert_query = @"INSERT INTO User_Table VALUES(@Email,@Username,HASHBYTES('SHA',@Password))";
                connect = new SqlConnection(construct);
                connect.Open();
                command = new SqlCommand(insert_query, connect);
                command.Parameters.AddWithValue("@Email", EmailTBox.Text);
                command.Parameters.AddWithValue("@Username", UsernameTBox.Text);
                command.Parameters.AddWithValue("@Password", PasswordTBox.Text);
                command.ExecuteNonQuery();
                connect.Close();
                Response.Redirect("Login.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["LogInEmail"] = null;
            Session["LogInUsername"] = null;
            Session["LogInPassword"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if(CheckBox1.Checked == false)
            {
                PasswordTBox.TextMode = TextBoxMode.Password;
                PasswordConfTbox.TextMode = TextBoxMode.Password;
            }
            else
            {
                PasswordTBox.TextMode = TextBoxMode.SingleLine;
                PasswordConfTbox.TextMode = TextBoxMode.SingleLine;
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}