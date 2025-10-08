using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace School_managment_system
{
    public partial class viewstudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindStudents();
            }
        }

        private void BindStudents()
        {
            string conStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(conStr))
            {
                string query = "SELECT RollNo, EnrollNo, FirstName, LastName, Email, " +
                               "Birthday, Gender, ContactNumber, Address, Photo " +
                               "FROM add_stud";

                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
}
