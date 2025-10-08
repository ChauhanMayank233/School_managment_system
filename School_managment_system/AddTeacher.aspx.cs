  using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Net;
using System.Web.UI;
using System.Xml.Linq;

namespace School_managment_system
{
    public partial class AddTeacher : System.Web.UI.Page
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
            if (filePhoto.HasFile)
            {
                fnm = "images/" + filePhoto.FileName;
                filePhoto.SaveAs(Server.MapPath(fnm));
            }
        }
        void clear()
        {
            txtFName.Text = "";
            txtLName.Text = "";
            txtEmail.Text = "";
            txtDOB.Text = "";
            txtContact.Text = "";
            txtAddress.Text = "";
            ddlGender.Text = "";
            txtQualification.Text = "";
            txtSubject.Text = "";
            fnm = "";


        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            getcon();
            imgupload();
            cmd = new SqlCommand("INSERT INTO Add_Teachers " +
                "(FirstName, LastName, Email, Contact, Gender, DOB, Qualification, Subject, Address, Photo) " +
                "VALUES ('" + txtFName.Text + "','" + txtLName.Text + "','" + txtEmail.Text + "','" + txtContact.Text + "','" + ddlGender.Text + "','" + txtDOB.Text + "','" + txtQualification.Text + "','" + txtSubject.Text + "','" + txtAddress.Text + "','" + fnm + "')", con);
            cmd.ExecuteNonQuery();

            clear();
        }
    }
}


