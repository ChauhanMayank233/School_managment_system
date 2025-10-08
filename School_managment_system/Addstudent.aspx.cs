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
    public partial class Addstudent : System.Web.UI.Page
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
            txtfnm.Text = "";
            txtlnm.Text = "";
            txteml.Text = "";
            txtbir.Text = "";
            drgen.Text = "";
            txtcon.Text = "";
            txtadd.Text = "";
            txtroll.Text = "";
            txtenroll.Text = "";
            fnm = "";


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            imgupload();
            cmd = new SqlCommand("insert into add_stud (FirstName,LastName,Email,Birthday,Gender,ContactNumber,Address,RollNo,EnrollNo,Photo) values " +
                "('" + txtfnm.Text + "','" + txtlnm.Text + "','" + txteml.Text + "','" + txtbir.Text + "','" + drgen.SelectedValue + "','" + txtcon.Text + "','" + txtadd.Text + "','" + txtroll.Text + "','" + txtenroll.Text + "','"+fnm+"')", con);
            cmd.ExecuteNonQuery();
            clear();
        }
    }
}
