using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayroll.WebForms
{
    public partial class Login : System.Web.UI.Page
    {
        public void reset()
        {
            TextBox1.Text = TextBox2.Text = "";
        }
        public static string connectionString = @"Data Source=(localdb)\ProjectsV13;Initial Catalog=EmployeePayroll;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        SqlConnection connection = new SqlConnection(connectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "select * from EmployeePayroll where email = @Email and password =@Password";
            SqlCommand command = new SqlCommand(query, this.connection);
            command.Parameters.AddWithValue("@Email", TextBox1.Text);
            command.Parameters.AddWithValue("@Password", TextBox2.Text);
            this.connection.Open();
            SqlDataReader dr = command.ExecuteReader();
            //this.connection.Close();
            if(dr.HasRows)
            {
                Session["email"] = TextBox1.Text;
                Response.Write("<script>alert('Login Successful')</script>");
                Response.Redirect("Dashboard.aspx");
                reset();
            }
            else
            {
                Response.Write("<script>alert('Login Failed')</script>");
                reset();
            }
            connection.Close();
        }
    }
}