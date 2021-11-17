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

        }

        //string construct = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Users.mdf;Integrated Security=True";
        string construct = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Brandon\Documents\ImageUser.mdf;Integrated Security=True;Connect Timeout=30";
        public SqlConnection connection;
        public SqlCommand command;
        public SqlDataAdapter adapter;
        public SqlDataReader dataReader;
        public DataSet dataset;
        public string email, username, password = "";

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
                Session["LogInEmail"] = EmailTextBox.Text;
                Session["LogInUsername"] = UsernameTextBox.Text;
                Session["LogInPassword"] = PasswordTextBox.Text;
                Response.Redirect("Display_Image.aspx");
            }
            else
            {
                ErrorName.Visible = true;
                ErrorName.Text = "Invalid login credentials";
            }
        }
    }
}