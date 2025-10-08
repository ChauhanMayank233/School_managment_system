<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Schoolmanagementschool.aspx.cs" Inherits="School_managment_system.Schoolmanagementschool" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style>
        body {
            margin: 0;
            padding: 0;
            background: #f3f4f6;
            font-family: 'Roboto', sans-serif;
        }

        header {
            text-align: center;
            padding: 100px 20px 40px 20px;
            background: linear-gradient(135deg, #6a11cb 0%, #2575fc 100%);
            color: white;
        }

        h1 {
            font-family: 'Lobster', cursive;
            font-size: 48px;
            margin-bottom: 50px;
        }

        ul#navli {
            list-style: none;
            padding: 0;
            margin: 0 auto;
            display: flex;
            justify-content: center;
            gap: 30px;
        }

            ul#navli li {
                display: inline;
            }

                ul#navli li a {
                    text-decoration: none;
                    font-size: 18px;
                    background-color: white;
                    color: #2575fc;
                    padding: 12px 25px;
                    border-radius: 30px;
                    font-weight: bold;
                    transition: all 0.3s ease-in-out;
                    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
                }

                    ul#navli li a:hover {
                        background-color: #2575fc;
                        color: white;
                        transform: scale(1.05);
                    }

        @media (max-width: 600px) {
            h1 {
                font-size: 32px;
            }

            ul#navli {
                flex-direction: column;
                gap: 15px;
            }
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
                <nav>
                    <h1 style="font-family: 'Lobster', cursive; font-weight: 200; font-size: 50px; margin-top: 100px; text-align: center;">Welcome to School Management System </h1>

                    <ul id="navli">
                        <li><a class="homeblack" href="adminlogin.aspx">Admin Login</a></li>
                        <li><a class="homeblack" href="userlogin.aspx">Student Login</a></li>
                    </ul>
                </nav>
            </header>
        </div>
    </form>
</body>
</html>
