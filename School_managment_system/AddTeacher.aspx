<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddTeacher.aspx.cs" Inherits="School_managment_system.AddTeacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
      body {
          font-family: 'Poppins', sans-serif;
          background: linear-gradient(120deg, #e0f2fe, #bae6fd); /* light sky gradient */
          margin: 0;
          padding: 0;
      }

      /* Header */
      .header-area {
          background: #0284c7; /* blue header */
          box-shadow: 0 4px 15px rgba(0,0,0,0.15);
          position: sticky;
          top: 0;
          z-index: 1000;
      }

      .header-area .container {
          max-width: 1200px;
          margin: auto;
          padding: 15px 20px;
      }

      .main-nav {
          display: flex;
          justify-content: flex-end;
          align-items: center;
      }

      .main-nav .nav {
          list-style: none;
          display: flex;
          gap: 20px;
          margin: 0;
          padding: 0;
      }

      .main-nav .nav li a,
      .main-nav .nav li input[type="submit"] {
          text-decoration: none;
          color: white;
          font-weight: 500;
          padding: 10px 20px;
          border-radius: 25px;
          transition: all 0.3s;
          background: transparent;
          border: 2px solid transparent;
          cursor: pointer;
      }

      .main-nav .nav li a:hover,
      .main-nav .nav li .active,
      .main-nav .nav li input[type="submit"]:hover {
          background: white;
          color: #0284c7;
          border-color: #0284c7;
      }

      /* Form Container */
      .form-container {
          background: white;
          padding: 35px 45px;
          margin: 50px auto;
          max-width: 850px;
          border-radius: 20px;
          box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
      }

      h2 {
          text-align: center;
          color: #0284c7;
          margin-bottom: 25px;
          font-size: 28px;
          font-weight: 600;
      }

      table {
          width: 100%;
          border-collapse: collapse;
      }

      td {
          padding: 12px 15px;
          vertical-align: middle;
      }

      label {
          font-weight: 600;
          display: block;
          margin-bottom: 6px;
          color: #334155;
      }

      input[type="text"],
      input[type="email"],
      input[type="date"],
      select,
      .form-control,
      asp\:TextBox {
          width: 100%;
          padding: 12px;
          border: 2px solid #cbd5e1;
          border-radius: 10px;
          transition: all 0.3s ease;
          font-size: 15px;
      }

      input[type="text"]:focus,
      input[type="email"]:focus,
      select:focus {
          border-color: #0284c7;
          box-shadow: 0 0 10px rgba(2,132,199,0.3);
          outline: none;
      }

      .form-control-file {
          padding: 5px;
      }

      /* Buttons */
      .btn,
      asp\:Button {
          background: #0284c7;
          color: white;
          padding: 12px 30px;
          border: none;
          border-radius: 30px;
          font-size: 16px;
          font-weight: 600;
          cursor: pointer;
          transition: all 0.3s;
      }

      .btn:hover,
      asp\:Button:hover {
          background: #0369a1;
          transform: scale(1.05);
      }

      .btn:active,
      asp\:Button:active {
          transform: scale(0.95);
      }

      /* Footer */
      footer {
          background: #bae6fd;
          color: #1e3a8a;
          text-align: center;
          padding: 15px;
          margin-top: 40px;
          font-size: 14px;
          border-top: 3px solid #0284c7;
      }
  </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header Start -->
    <header class="header-area">
        <div class="container">
            <nav class="main-nav">
                <ul class="nav">
                    <li><a href="admindash.aspx">Home</a></li>
                    <li><a href="Addstudent.aspx">Add Student</a></li>
                    <li><a href="viewstudent.aspx">View Student</a></li>
                    <li><a href="AddTeacher.aspx" class="active">Add Teacher</a></li>
                    <li><a href="ViewTeacher.aspx">View Teacher</a></li>
                    <li><a href="timetable.aspx">Time Table</a></li>
                    <li><a href="Addcorse.aspx"> Add Course</a></li>
                    <li><asp:Button ID="Button2" runat="server" Text="Logout" /></li>
                </ul>
            </nav>
        </div>
    </header>
    <!-- Header End -->

    
        <div class="form-container">
  
            <h2>Add Teacher</h2>
            <table>
                <tr>
                    <td>First Name:</td>
                    <td><asp:TextBox ID="txtFName" runat="server"></asp:TextBox></td>
                    <td>Last Name:</td>
                    <td><asp:TextBox ID="txtLName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                    <td>Contact:</td>
                    <td><asp:TextBox ID="txtContact" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td>
                        <asp:DropDownList ID="ddlGender" runat="server">
                            <asp:ListItem Text="Select" Value=""></asp:ListItem>
                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>Date of Birth:</td>
                    <td><asp:TextBox ID="txtDOB" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Qualification:</td>
                    <td><asp:TextBox ID="txtQualification" runat="server"></asp:TextBox></td>
                    <td>Subject:</td>
                    <td><asp:TextBox ID="txtSubject" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td colspan="3"><asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Photo:</td>
                    <td><asp:FileUpload ID="filePhoto" runat="server" /></td>
                </tr>
                <tr>
                    <td colspan="4" style="text-align:center;">
                        <asp:Button ID="btnSave" runat="server" Text="Save Teacher" OnClick="btnSave_Click" />
                    </td>
                </tr>
            </table>
        </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>

