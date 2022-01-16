using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayroll.WebForms
{
    public partial class Register : System.Web.UI.Page
    {
        public static string connectionString = @"Data Source=(localdb)\ProjectsV13;Initial Catalog=EmployeePayroll;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        SqlConnection connection = new SqlConnection(connectionString);
        
        public void reset()
        {
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text="";
        }
        public void AddEmployee()
        {
            try
            {
                using (this.connection)
                {
                  
                    SqlCommand command = new SqlCommand("SpAddEmployeeDetails", this.connection);
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@EmployeeName", TextBox1.Text);
                    command.Parameters.AddWithValue("@Email", TextBox2.Text);
                    command.Parameters.AddWithValue("@PhoneNumber",TextBox3.Text);
                    command.Parameters.AddWithValue("@Password", TextBox4.Text);
                    this.connection.Open();
                    var result = command.ExecuteNonQuery();
                    this.connection.Close();
                    if (result != 0)
                    {
                        Response.Write("<script>alert('Register Successful')</script>");
                        reset();
                    }
                    else
                    {
                        Response.Write("<script>alert('Unable to Register')</script>");
                    }
                    
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            finally
            {
                this.connection.Close();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.AddEmployee();
        }

       
    }
}