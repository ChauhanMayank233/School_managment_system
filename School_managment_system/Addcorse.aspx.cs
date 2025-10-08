using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using static System.Runtime.CompilerServices.RuntimeHelpers;
namespace School_managment_system
{
    public partial class Addcorse : System.Web.UI.Page
    {

        string s = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        String fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void imgupload()
        {
            if (fipimg.HasFile)
            {
                fnm = "images/" + fipimg.FileName;
                fipimg.SaveAs(Server.MapPath(fnm));
            }
        }
        void clear()
        {

            txteml.Text = "";

            fnm = "";


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            imgupload();
            cmd = new SqlCommand("insert into Add_course (Subject,Photo) values ('" + txteml.Text + "','" + fnm + "')", con);
            cmd.ExecuteNonQuery();
            clear();
            Label1.Text = "Inserted Successfully";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Logout")
            {
                Session.Abandon();
                Response.Redirect("Schoolmanagementschool.aspx");
            }
        }
    }
    
    
}
