<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Addstudent.aspx.cs" Inherits="School_managment_system.Addstudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f8f9fa, #e5e7eb); /* lighter gray */
            margin: 0;
            padding: 0;
        }

        /* Header Area */
        .header-area {
            background: #9ca3af; /* light gray header */
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

                .main-nav .nav li {
                    display: inline-block;
                }

                    .main-nav .nav li a,
                    .main-nav .nav li input[type="submit"] {
                        text-decoration: none;
                        color: #1f2937; /* dark text for contrast */
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
                            background: #d1d5db; /* hover with slightly darker gray */
                        }

        /* Form Container */
        .form-container {
            background: white;
            padding: 30px 40px;
            margin: 40px auto;
            max-width: 800px;
            border-radius: 15px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
            transform-style: preserve-3d;
            transition: transform 0.5s;
        }

            .form-container:hover {
                transform: rotateX(2deg) rotateY(2deg);
            }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
            text-shadow: 1px 1px 2px #ccc;
        }

        /* Table Form Style */
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
        input[type="email"],
        input[type="date"],
        select,
        .form-control,
        asp\:TextBox {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            transition: all 0.3s ease;
            box-shadow: inset 0 1px 3px rgba(0,0,0,0.05);
        }

            input[type="text"]:focus,
            input[type="email"]:focus,
            select:focus {
                border-color: #9ca3af;
                box-shadow: 0 0 8px rgba(156, 163, 175, 0.4);
                outline: none;
            }

        .form-control-file {
            padding: 5px;
        }

        /* Button Style */
        .btn,
        asp\:Button {
            background: #9ca3af; /* light gray buttons */
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
                background: #6b7280; /* darker gray on hover */
                transform: scale(1.05);
                color: white;
            }

            .btn:active,
            asp\:Button:active {
                transform: scale(0.95);
            }

        /* Footer Area */
        footer {
            background: #d1d5db; /* light gray footer */
            color: #374151;
            text-align: center;
            padding: 20px;
            margin-top: 40px;
            font-size: 14px;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->

                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="admindash.aspx" class="active">Home</a></li>
                            <li><a href="Addstudent.aspx">Add Student</a></li>
                            <li><a href="viewstudent.aspx">View Student</a></li>
                            <li><a href="AddTeacher.aspx">Add Teacher</a></li>
                            <li><a href="ViewTeacher.aspx">View Teacher</a></li>
                            <li><a href="timetable.aspx">Time Table</a></li>
                            <li><a href="Addcorse.aspx"> Add Course</a></li>
                            <li>
                                <asp:Button ID="Button2" runat="server" Text="Logout" />
                            </li>
                        </ul>

                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->
    <body>
        <form id="form1">
            <div class="form-container">
                <h2>Add Student  </h2>
                <table>
                    <tr>
                        <td>First Name:</td>
                        <td>
                            <asp:TextBox ID="txtfnm" runat="server"></asp:TextBox>
                        </td>
                        <td>Last Name:</td>
                        <td>
                            <asp:TextBox ID="txtlnm" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td colspan="3">
                            <asp:TextBox ID="txteml" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Birthday:</td>
                        <td>
                            <asp:TextBox ID="txtbir" runat="server"></asp:TextBox>
                        </td>
                        <td>Gender:</td>
                        <td>
                            <asp:DropDownList ID="drgen" runat="server">
                                <asp:ListItem Text="Select" Value=""></asp:ListItem>
                                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>Contact Number:</td>
                        <td>
                            <asp:TextBox ID="txtcon" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Address: </td>
                        <td>
                            <asp:TextBox ID="txtadd" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Roll No:</td>
                        <td colspan="3">
                            <asp:TextBox ID="txtroll" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Enroll No:</td>
                        <td>
                            <asp:TextBox ID="txtenroll" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Photo"></asp:Label>
                      </td>
                    <td>
                        <asp:FileUpload ID="fipimg" runat="server" />
                    </td>
                    </tr>

                    <tr>
                        <td colspan="4" style="text-align: center;">
                            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"  />
                        </td>
                    </tr>
                </table>
            </div>
        </form>
    </body>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>

