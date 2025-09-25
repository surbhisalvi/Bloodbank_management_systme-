<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .contact-container {
            max-width: 900px;
            margin: 40px auto;
            background: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }
        .contact-container h1 {
            color: #b30000;
            margin-bottom: 20px;
            text-align: center;
        }
        .contact-info { margin-bottom: 30px; }
        .contact-info p { margin: 8px 0; }
        .form-group { margin-bottom: 15px; }
        label { font-weight: bold; }
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
        .validation { color: red; font-size: 12px; }
        .success { color: green; font-weight: bold; margin-top: 15px; display: block; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact-container">
        <h1>Contact Us</h1>

        <!-- Static Info -->
        <div class="contact-info">
            <p><b>Address:</b> Blood Bank Center, Main Road, Bhopal</p>
            <p><b>Email:</b> Bloodbankbpl@gmail.in</p>
            <p><b>Phone:</b> +91-9876543210</p>
        </div>

        <!-- Contact Form -->
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="validation" />

        <div class="form-group">
            <label for="txtName">Your Name</label>
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
                ValidationExpression="\w+@\w+\.\w+" ErrorMessage="Enter a valid email"
                CssClass="validation" Display="Dynamic" />
        </div>

        <div class="form-group">
            <label for="txtMessage">Message</label>
            <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ControlToValidate="txtMessage"
                ErrorMessage="Message is required" CssClass="validation" Display="Dynamic" />
        </div>

        <!-- ✅ Submit Button -->
        <!-- ✅ Submit Button -->
  <div style="text-align:center; margin-top:20px;">
      <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn-submit" OnClick="btnSubmit_Click" />
      <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn-clear" OnClick="btnClear_Click" />
  </div>

        <!-- ✅ Success Message -->
        <asp:Label ID="lblMessage" runat="server" CssClass="success"></asp:Label>
    </div>
</asp:Content>