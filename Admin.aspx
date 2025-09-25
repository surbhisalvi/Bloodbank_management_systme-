<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        /* Sidebar */
        .sidebar {
            width: 200px;
            background-color: #2c3e50;
            color: white;
            height: 100vh;
            position: fixed;
            padding-top: 20px;
        }

        .sidebar a {
            display: block;
            color: white;
            padding: 15px;
            text-decoration: none;
        }

        .sidebar a:hover {
            background-color: #34495e;
        }

        /* Main content */
        .main {
            margin-left: 200px;
            padding: 20px;
        }

        .header {
            background-color: #2980b9;
            color: white;
            padding: 10px;
            text-align: center;
            font-size: 24px;
            margin-bottom: 20px;
        }

        /* Blood section */
        .blood-section h2 {
            margin-bottom: 20px;
        }

        .blood-boxes {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 15px;
        }

        .blood-box {
            background-color: #ecf0f1;
            padding: 20px;
            border-radius: 8px;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            cursor: pointer;
        }

        .blood-box h3 {
            margin: 10px 0;
        }

        .donor {
            background-color: #27ae60;
            color: white;
        }

        .request {
            background-color: #c0392b;
            color: white;
        }

        .logout {
            position: absolute;
            bottom: 20px;
            width: 100%;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Sidebar -->
        <div class="sidebar">
            <a href="Home.aspx">Home</a>
            <a href="Donor.aspx">Donor</a>
            <a href="Urgent.aspx">Hospital</a>
            <a href="Home.aspx" class="logout">Logout</a>
        </div>

        <!-- Main content -->
        <div class="main">
            <div class="header">
                Admin Dashboard
            </div>

            <div class="blood-section">
                <h2>Blood</h2>
                <div class="blood-boxes">
                    <div class="blood-box donor">
                        <h3>A+</h3>
                        <p>3 Donors</p>
                    </div>
                    <div class="blood-box request">
                        <h3>A-</h3>
                        <p>1 Request</p>
                    </div>
                    <div class="blood-box donor">
                        <h3>B+</h3>
                        <p>2 Donors</p>
                    </div>
                    <div class="blood-box request">
                        <h3>B-</h3>
                        <p>2 Requests</p>
                    </div>
                    <div class="blood-box donor">
                        <h3>O+</h3>
                        <p>5 Donors</p>
                    </div>
                    <div class="blood-box request">
                        <h3>O-</h3>
                        <p>1 Request</p>
                    </div>
                    <div class="blood-box donor">
                        <h3>AB+</h3>
                        <p>2 Donors</p>
                    </div>
                    <div class="blood-box request">
                        <h3>AB-</h3>
                        <p>1 Request</p>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
