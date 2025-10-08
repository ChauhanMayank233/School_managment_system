<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewTimeTable.aspx.cs" Inherits="School_managment_system.ViewTimeTable" %>
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

        .container {
            background: white;
            padding: 30px 40px;
            margin: 40px auto;
            max-width: 900px;
            border-radius: 15px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
            overflow-x: auto;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
            text-shadow: 1px 1px 2px #ccc;
        }

        .gridview {
            width: 100%;
            border-collapse: collapse;
        }

        .gridview th, .gridview td {
            padding: 12px 15px;
            border: 1px solid #ccc;
            text-align: left;
        }

        .gridview th {
            background: #9ca3af;
            color: #1f2937;
        }

        .gridview tr:nth-child(even) {
            background: #f3f4f6;
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

    <div class="container">
        <h2>Time Table</h2>
        <asp:GridView ID="GridView1" runat="server" CssClass="gridview" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="Class" HeaderText="Class" />
                <asp:BoundField DataField="Day" HeaderText="Day" />
                <asp:BoundField DataField="Subject" HeaderText="Subject" />
                <asp:BoundField DataField="Teacher" HeaderText="Teacher" />
                <asp:BoundField DataField="StartTime" HeaderText="Start Time" DataFormatString="{0:HH:mm}" />
                <asp:BoundField DataField="EndTime" HeaderText="End Time" DataFormatString="{0:HH:mm}" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>