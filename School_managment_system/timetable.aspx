<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="timetable.aspx.cs" Inherits="School_managment_system.timetable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f8f9fa, #e5e7eb);
            margin: 0;
            padding: 0;
        }

        .header-area {
            background: #9ca3af;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            position: sticky;
            top: 0;
            z-index: 999;
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
            color: #1f2937;
            font-weight: 500;
            padding: 10px 18px;
            border-radius: 8px;
            transition: all 0.3s;
            background: transparent;
            border: none;
            cursor: pointer;
        }

        .main-nav .nav li a:hover,
        .main-nav .nav li .active,
        .main-nav .nav li input[type="submit"]:hover {
            background: #d1d5db;
        }

        .form-container {
            background: white;
            padding: 30px 40px;
            margin: 40px auto;
            max-width: 800px;
            border-radius: 15px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
            text-shadow: 1px 1px 2px #ccc;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 10px 15px;
            vertical-align: top;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="time"],
        select,
        asp\:TextBox {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            transition: all 0.3s ease;
            box-shadow: inset 0 1px 3px rgba(0,0,0,0.05);
        }

        input[type="text"]:focus,
        input[type="time"]:focus,
        select:focus {
            border-color: #9ca3af;
            box-shadow: 0 0 8px rgba(156, 163, 175, 0.4);
            outline: none;
        }

        .btn,
        asp\:Button {
            background: #9ca3af;
            color: #1f2937;
            padding: 12px 25px;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s, transform 0.2s;
        }

        .btn:hover,
        asp\:Button:hover {
            background: #6b7280;
            transform: scale(1.05);
            color: white;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <header class="header-area header-sticky">
        <div class="container">
            <nav class="main-nav">
                <ul class="nav">
                    <li><a href="admindash.aspx">Home</a></li>
                    <li><a href="viewstudent.aspx">View Student</a></li>
                    <li><a href="AddTeacher.aspx">Add Teacher</a></li>
                    <li><a href="ViewTeacher.aspx">View Teacher</a></li>
                    <li><a href="timetable.aspx">Time Table</a></li>
                    <li><a href="Addcorse.aspx">Add Course</a></li>
                    <li>
                        <asp:Button ID="Button2" runat="server" Text="Logout" />
                    </li>
                </ul>
            </nav>
        </div>
    </header>

    <body>
        
            <div class="form-container">
                <h2>Create Time Table</h2>
                <table>
                    <tr>
                        <td>Class:</td>
                        <td>
                            <asp:DropDownList ID="ddlClass" runat="server">
                                <asp:ListItem Text="Select" Value=""></asp:ListItem>
                                <asp:ListItem Text="Class 1" Value="Class 1"></asp:ListItem>
                                <asp:ListItem Text="Class 2" Value="Class 2"></asp:ListItem>
                                <asp:ListItem Text="Class 3" Value="Class 3"></asp:ListItem>
                                <asp:ListItem Text="Class 4" Value="Class 4"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>Day:</td>
                        <td>
                            <asp:DropDownList ID="ddlDay" runat="server">
                                <asp:ListItem Text="Select" Value=""></asp:ListItem>
                                <asp:ListItem Text="Monday" Value="Monday"></asp:ListItem>
                                <asp:ListItem Text="Tuesday" Value="Tuesday"></asp:ListItem>
                                <asp:ListItem Text="Wednesday" Value="Wednesday"></asp:ListItem>
                                <asp:ListItem Text="Thursday" Value="Thursday"></asp:ListItem>
                                <asp:ListItem Text="Friday" Value="Friday"></asp:ListItem>
                                <asp:ListItem Text="Saturday" Value="Saturday"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>Subject:</td>
                        <td>
                            <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
                        </td>
                        <td>Teacher:</td>
                        <td>
                            <asp:TextBox ID="txtTeacher" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Start Time:</td>
                        <td>
                            <asp:TextBox ID="txtStart" runat="server" TextMode="Time"></asp:TextBox>
                        </td>
                        <td>End Time:</td>
                        <td>
                            <asp:TextBox ID="txtEnd" runat="server" TextMode="Time"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" style="text-align:center;">
                            <asp:Button ID="btnSave" runat="server" Text="Save Time Table" />
                        </td>
                    </tr>
                </table>
            </div>
       
    </body>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
