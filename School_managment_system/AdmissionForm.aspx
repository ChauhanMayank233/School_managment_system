<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdmissionForm.aspx.cs" Inherits="School_managment_system.AdmissionForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(120deg, #e0f2fe, #bae6fd);
            margin: 0;
            padding: 0;
        }

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="form-container">
        <h2>Student Admission Form</h2>
        <table>
            <tr>
                <td><label for="txtFName">First Name:</label></td>
                <td><asp:TextBox ID="txtFName" runat="server"></asp:TextBox></td>
                <td><label for="txtLName">Last Name:</label></td>
                <td><asp:TextBox ID="txtLName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><label for="txtEmail">Email:</label></td>
                <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                <td><label for="txtContact">Contact:</label></td>
                <td><asp:TextBox ID="txtContact" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><label for="ddlGender">Gender:</label></td>
                <td>
                    <asp:DropDownList ID="ddlGender" runat="server">
                        <asp:ListItem Text="Select" Value=""></asp:ListItem>
                        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td><label for="txtDOB">Date of Birth:</label></td>
                <td><asp:TextBox ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox></td>
            </tr>

            <!-- Address Section -->
            <tr>
                <td><label for="txtHouse">House No / Street:</label></td>
                <td><asp:TextBox ID="txtHouse" runat="server"></asp:TextBox></td>
                <td><label for="txtCity">City:</label></td>
                <td><asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><label for="txtState">State:</label></td>
                <td><asp:TextBox ID="txtState" runat="server"></asp:TextBox></td>
                <td><label for="txtPincode">Pincode:</label></td>
                <td><asp:TextBox ID="txtPincode" runat="server"></asp:TextBox></td>
            </tr>

           
            <tr>
                <td>Photo:</td>
                <td><asp:FileUpload ID="filePhoto" runat="server" /></td>
            </tr>
            <tr>
                <td colspan="4" style="text-align:center;">
                    <asp:Button ID="btnSave" runat="server" Text="Save Student" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
