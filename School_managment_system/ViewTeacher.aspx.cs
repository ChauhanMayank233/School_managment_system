using School_managment_system;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace School_managment_system
{
    public partial class ViewTeacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTeachers();
            }
        }

        private void BindTeachers()
        {
            string conStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(conStr))
            {
                string query = "SELECT FirstName, LastName, Email, Contact, Gender, DOB, Qualification, Subject, Address, Photo " +
                               "FROM Add_Teachers";

                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
}
