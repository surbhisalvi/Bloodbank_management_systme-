<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Acceptor_Register.aspx.cs" Inherits="Acceptor_Register_aspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .form-container {
            max-width: 650px;
            margin: 40px auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }
        .form-container h2 {
            text-align: center;
            color: #004080;
            margin-bottom: 20px;
        }
        .form-group { margin-bottom: 15px; }
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
            background: #004080;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .btn-submit:hover { background: #002b5c; }
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

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-container">
        <h2>Registration for blood</h2>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="validation" HeaderText="Please fix the following errors:" />

        <!-- Name -->
        <div class="form-group">
            <label for="txtName">Full Name</label>
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" CssClass="validation" Display="Dynamic" />
        </div>

        <!-- Age -->
        <div class="form-group">
            <label for="txtAge">Age</label>
            <asp:TextBox ID="txtAge" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Age is required" CssClass="validation" Display="Dynamic" />
            <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="txtAge" MinimumValue="1" MaximumValue="120" Type="Integer" ErrorMessage="Enter a valid age (1–120)" CssClass="validation" Display="Dynamic" />
        </div>

        <!-- Gender -->
        <div class="form-group">
            <label>Gender</label>
            <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="">--Select--</asp:ListItem>
                <asp:ListItem Value="Male">Male</asp:ListItem>
                <asp:ListItem Value="Female">Female</asp:ListItem>
                <asp:ListItem Value="Other">Other</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="rblGender" InitialValue="" ErrorMessage="Select a gender" CssClass="validation" Display="Dynamic" />
        </div>

        <!-- Blood Group -->
        <div class="form-group">
            <label for="ddlBloodGroup">Blood Group</label>
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
            <asp:RequiredFieldValidator ID="rfvBloodGroup" runat="server" ControlToValidate="ddlBloodGroup" InitialValue="" ErrorMessage="Select your blood group" CssClass="validation" Display="Dynamic" />
        </div>

        <!-- Contact Number -->
        <div class="form-group">
            <label for="txtContact">Contact Number</label>
            <asp:TextBox ID="txtContact" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvContact" runat="server" ControlToValidate="txtContact" ErrorMessage="Contact number is required" CssClass="validation" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revContact" runat="server" ControlToValidate="txtContact" ValidationExpression="^[0-9]{10}$" ErrorMessage="Enter a valid 10-digit phone number" CssClass="validation" Display="Dynamic" />
        </div>

        <!-- Email -->
        <div class="form-group">
            <label for="txtEmail">Email</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" CssClass="validation" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" ErrorMessage="Enter a valid email address" CssClass="validation" Display="Dynamic" />
        </div>

        <!-- Hospital Name -->
        <div class="form-group">
            <label for="txtHospital">Hospital Name</label>
            <asp:TextBox ID="txtHospital" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvHospital" runat="server" ControlToValidate="txtHospital" ErrorMessage="Hospital name is required" CssClass="validation" Display="Dynamic" />
        </div>

        <!-- Request Reason -->
        <div class="form-group">
            <label for="txtReason">Reason for Request</label>
            <asp:TextBox ID="txtReason" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvReason" runat="server" ControlToValidate="txtReason" ErrorMessage="Please provide a reason for your request" CssClass="validation" Display="Dynamic" />
        </div>

        <!-- ✅ Buttons -->
      
        <!-- Links -->
        <div style="text-align:center; margin-top:10px;">
            <a href="whyDonot.aspx">Why Donate Blood?</a> | 
            <a href="whoneed.aspx">Who Needs Blood?</a>
        </div>
                <!-- ✅ Buttons -->
        <div style="text-align:center; margin-top:20px;">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn-submit" OnClick="btnSubmit_Click" />
            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn-clear" OnClick="btnClear_Click" />
        </div>

    </div>
</asp:Content>
