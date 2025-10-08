using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_managment_system
{
    public partial class userragister : System.Web.UI.Page
    {
        String s = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
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
            txtnm.Text = "";
            txteml.Text = "";
            txtunm.Text = "";
            txtpwd.Text = "";
            txtcpwd.Text = "";
            fnm = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            imgupload();
            cmd = new SqlCommand("insert into reg_tbl (Fullname,Email,Username,Password,Confirmpassword,Image) values ('" + txtnm.Text + "','" + txteml.Text + "','" + txtunm.Text + "','" + txtpwd.Text + "','" + txtcpwd.Text + "','" + fnm + "')", con);
            cmd.ExecuteNonQuery();
            clear();
            Response.Redirect(Request.RawUrl);
            Response.Redirect("userlogin.aspx");
        }
    }
    
}