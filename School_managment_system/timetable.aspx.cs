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
    public partial class timetable : System.Web.UI.Page
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
        void clear()
        {
            ddlClass.Text = "";
            ddlDay.Text = "";
            txtSubject.Text = "";
            txtTeacher.Text = "";
            txtStart.Text = "";
            txtEnd.Text = "";
           


        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            getcon();
           
            cmd = new SqlCommand("insert into Time_table (Class,Day,Subject,Teacher,Start_Time,End_Time) values " +
                "('" + ddlClass.Text + "','" + ddlDay.Text + "','" + txtSubject.Text + "','" + txtTeacher.Text + "','" + txtStart.Text + "','" + txtEnd.Text + "')", con);
            cmd.ExecuteNonQuery();
            clear();
        }
    }
}
