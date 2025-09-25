<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Urgent.aspx.cs" Inherits="Urgent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .contacts-container {
            max-width: 1000px;
            margin: 40px auto;
            background: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }
        .contacts-container h1 {
            color: #b30000;
            margin-bottom: 20px;
            text-align: center;
        }
        .contact-section {
            margin-bottom: 40px;
        }
        .contact-section h2 {
            color: #800000;
            margin-bottom: 15px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 15px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }
        th {
            background: #b30000;
            color: #fff;
        }
        tr:hover { background: #f5f5f5; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="contacts-container">
        <h1>Life Saving Contacts</h1>

        <!-- Hospitals -->
        <div class="contact-section">
            <h2>Hospitals</h2>
            <table>
                <tr>
                    <th>Hospital Name</th>
                    <th>Contact Number</th>
                    <th>Address</th>
                </tr>
                <tr>
                    <td>City General Hospital</td>
                    <td>+91-9876543210</td>
                    <td>Main Road,Bhopal</td>
                </tr>
                <tr>
                    <td>Metro Multi-specialty Hospital</td>
                    <td>+91-9123456780</td>
                    <td>Ring Road, Bhopal</td>
                </tr>
            </table>
        </div>

        <!-- Blood Banks -->
        <div class="contact-section">
            <h2>Blood Banks</h2>
            <table>
                <tr>
                    <th>Blood Bank Name</th>
                    <th>Contact Number</th>
                    <th>Address</th>
                </tr>
                <tr>
                    <td>Red Cross Blood Bank</td>
                    <td>+91-9988776655</td>
                    <td>Civil Lines, Bhopal</td>
                </tr>
                <tr>
                    <td>City Blood Center</td>
                    <td>+91-9876501234</td>
                    <td>Sector 10, Bhopal</td>
                </tr>
            </table>
        </div>

        <!-- Ambulance Services -->
        <div class="contact-section">
            <h2>Ambulance Services</h2>
            <table>
                <tr>
                    <th>Service Name</th>
                    <th>Contact Number</th>
                    <th>Availability</th>
                </tr>
                <tr>
                    <td>24x7 Emergency Ambulance</td>
                    <td>+91-9999111222</td>
                    <td>City-wide</td>
                </tr>
                <tr>
                    <td>Quick Response Ambulance</td>
                    <td>+91-9111122233</td>
                    <td>Urban & Rural</td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

