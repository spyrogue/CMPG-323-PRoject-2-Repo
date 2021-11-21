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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EmailTextBox.Text = "brandon@gmail.com";
            UsernameTextBox.Text = "Brandon";
            PasswordTextBox.Text = "123";
            LinkButton1.Visible = false;
        }

        string construct = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Brandon\Documents\ImageUser.mdf;Integrated Security=True;Connect Timeout=30";
        public SqlConnection connection;
        public SqlCommand command;
        public SqlDataAdapter adapter;
        public SqlDataReader dataReader;
        public DataSet dataset;
        public string email, username, password = "";

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["LogInEmail"] = null;
            Session["LogInUsername"] = null;
            Session["LogInPassword"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void EmailTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            connection = new SqlConnection(construct);
            string values = "SELECT Email,Username,Password From User_Table WHERE Email = '" + EmailTextBox.Text + "'";
            command = new SqlCommand(values, connection);
            connection.Open();
            dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                email = dataReader.GetValue(0).ToString();
                username = dataReader.GetValue(1).ToString();
                password = dataReader.GetValue(2).ToString();
            }
            connection.Close();

            if (email == EmailTextBox.Text && username == UsernameTextBox.Text && password == PasswordTextBox.Text)
            {
                Response.Write("<script>alert('Logged in successfully')</script>");
                Session["LogInEmail"] = EmailTextBox.Text;
                Session["LogInUsername"] = UsernameTextBox.Text;
                Session["LogInPassword"] = PasswordTextBox.Text;
                Response.Redirect("Images.aspx");
            }
            else
            {
                Response.Write("<script>alert('Incorrect login details, try again')</script>");
            }
        }
    }
}