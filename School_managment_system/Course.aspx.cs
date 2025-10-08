using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace School_managment_system
{
    public partial class Course : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            BindCourse();

        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        protected void BindCourse()
        {
            string query = "SELECT Photo,Subject FROM Addcourse";
            using (SqlCommand cmd = new SqlCommand(query, con))
            {

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                rptCourses.DataSource = dt;
                rptCourses.DataBind();
            }


        }



        protected void gvCourses_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


    }
}
        
    
