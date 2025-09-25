<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Request.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .contacts-container {
            max-width: 900px;
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
        .contact-section h2, .form-section h2 {
            color: #800000;
            margin-bottom: 15px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }
        th {
            background: #f2f2f2;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label { font-weight: bold; display: block; }
        .form-control {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .btn-submit {
            background: #b30000;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .btn-submit:hover { background: #800000; }
        .btn-clear {
            background: #ccc;
            color: #000;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .btn-clear:hover { background: #999; }
        .validation { color: red; font-size: 12px; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contacts-container">
        <h1>Life Saving Contacts</h1>
        
        <!-- Hospitals -->
        <div class="contact-section">
            <h2>Nearby Hospitals</h2>
            <table>
                <tr>
                    <th>Hospital Name</th>
                    <th>Contact Number</th>
                    <th>Address</th>
                </tr>
                <tr>
                    <td>City General Hospital</td>
                    <td>+91-9876543210</td>
                    <td>Main Road, Bhopal</td>
                </tr>
                <tr>
                    <td>Metro Multi-specialty Hospital</td>
                    <td>+91-9123456780</td>
                    <td>Ring Road, Bhopal</td>
                </tr>
            </table>
        </div>
    
        <!-- Blood Request Form -->
        <div class="form-section" style="margin-top:40px;">
            <h2>Contact us if you need blood</h2>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="validation" />

            <div class="form-group">
                <label for="txtName">Full Name</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                    ErrorMessage="Name is required" CssClass="validation" Display="Dynamic" />
            </div>

            <div class="form-group">
                <label for="txtEmail">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Email is required" CssClass="validation" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                    ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                    ErrorMessage="Enter a valid email" CssClass="validation" Display="Dynamic" />
            </div>

            <div class="form-group">
                <label for="txtPhone">Phone Number</label>
                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone"
                    ErrorMessage="Phone number is required" CssClass="validation" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone"
                    ValidationExpression="^[0-9]{10}$"
                    ErrorMessage="Enter a valid 10-digit phone number"
                    CssClass="validation" Display="Dynamic" />
            </div>

            <div class="form-group">
                <label for="ddlBloodGroup">Blood Group</label>
                <asp:DropDownList ID="ddlBloodGroup" runat="server" CssClass="form-control">
                    <asp:ListItem Text="-- Select --" Value="" />
                    <asp:ListItem>A+</asp:ListItem>
                    <asp:ListItem>A-</asp:ListItem>
                    <asp:ListItem>B+</asp:ListItem>
                    <asp:ListItem>B-</asp:ListItem>
                    <asp:ListItem>O+</asp:ListItem>
                    <asp:ListItem>O-</asp:ListItem>
                    <asp:ListItem>AB+</asp:ListItem>
                    <asp:ListItem>AB-</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvBlood" runat="server" ControlToValidate="ddlBloodGroup"
                    InitialValue="" ErrorMessage="Please select your blood group" CssClass="validation" Display="Dynamic" />
            </div>

            <div class="form-group">
                <label for="txtCity">City</label>
                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtCity"
                    ErrorMessage="City is required" CssClass="validation" Display="Dynamic" />
            </div>

            <!-- ✅ Buttons -->
            <div style="text-align:center; margin-top:20px;">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn-submit" OnClick="btnSubmit_Click" />
                <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn-clear" OnClick="btnClear_Click" />
            </div>
        </div>
    </div>
</asp:Content>

