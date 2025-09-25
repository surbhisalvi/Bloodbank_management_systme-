<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Acceptor_Request.aspx.cs" Inherits="Acceptor_Request" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .form-container {
            max-width: 600px;
            margin: 40px auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }
        .form-container h2 {
            text-align: center;
            color: #b30000;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }
        .form-control {
            width: 100%;
            padding: 8px;
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
        .btn-submit:hover {
            background: #800000;
        }
        .validation {
            color: red;
            font-size: 12px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-container">
        <h2>Blood Request Form</h2>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="validation" HeaderText="Please fix the following errors:" />

        <!-- Full Name -->
        <div class="form-group">
            <label for="txtName">Full Name</label>
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" 
                ErrorMessage="Name is required" CssClass="validation" Display="Dynamic" />
        </div>

        <!-- Blood Group -->
        <div class="form-group">
            <label for="ddlBloodGroup">Blood Group Needed</label>
            <asp:DropDownList ID="ddlBloodGroup" runat="server" CssClass="form-control">
                <asp:ListItem Value="">--Select--</asp:ListItem>
                <asp:ListItem>A+</asp:ListItem>
                <asp:ListItem>A-</asp:ListItem>
                <asp:ListItem>B+</asp:ListItem>
                <asp:ListItem>B-</asp:ListItem>
                <asp:ListItem>O+</asp:ListItem>
                <asp:ListItem>O-</asp:ListItem>
                <asp:ListItem>AB+</asp:ListItem>
                <asp:ListItem>AB-</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvBloodGroup" runat="server" ControlToValidate="ddlBloodGroup" 
                InitialValue="" ErrorMessage="Select a blood group" CssClass="validation" Display="Dynamic" />
        </div>

        <!-- Hospital -->
        <div class="form-group">
            <label for="txtHospital">Hospital Name</label>
            <asp:TextBox ID="txtHospital" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvHospital" runat="server" ControlToValidate="txtHospital"
                ErrorMessage="Hospital name is required" CssClass="validation" Display="Dynamic" />
        </div>

        <!-- Reason -->
        <div class="form-group">
            <label for="txtReason">Reason for Request</label>
            <asp:TextBox ID="txtReason" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvReason" runat="server" ControlToValidate="txtReason"
                ErrorMessage="Please enter reason" CssClass="validation" Display="Dynamic" />
        </div>

        <!-- Urgency -->
        <div class="form-group">
            <label for="ddlUrgency">Urgency</label>
            <asp:DropDownList ID="ddlUrgency" runat="server" CssClass="form-control">
                <asp:ListItem Value="">--Select--</asp:ListItem>
                <asp:ListItem>Immediate</asp:ListItem>
                <asp:ListItem>Within 24 hours</asp:ListItem>
                <asp:ListItem>Within 3 days</asp:ListItem>
                <asp:ListItem>Flexible</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvUrgency" runat="server" ControlToValidate="ddlUrgency"
                InitialValue="" ErrorMessage="Select urgency level" CssClass="validation" Display="Dynamic" />
        </div>

        <!-- Contact Number -->
        <div class="form-group">
            <label for="txtContact">Contact Number</label>
            <asp:TextBox ID="txtContact" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvContact" runat="server" ControlToValidate="txtContact"
                ErrorMessage="Contact number is required" CssClass="validation" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revContact" runat="server" ControlToValidate="txtContact"
                ValidationExpression="^[0-9]{10}$" ErrorMessage="Enter a valid 10-digit phone number"
                CssClass="validation" Display="Dynamic" />
        </div>
                <!-- ✅ Buttons -->
        <div style="text-align:center; margin-top:20px;">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn-submit" OnClick="btnSubmit_Click" />
            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn-submit" OnClick="btnClear_Click" />
        </div>


       
    </div>
</asp:Content>

