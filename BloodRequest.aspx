<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BloodRequest.aspx.cs" Inherits="BloodRequest" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Blood Request Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body { background: #f8f9fa; }
        .form-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 30px;
            background: #fff;
            border-radius: 15px;
            box-shadow: 0px 5px 15px rgba(0,0,0,0.1);
        }
        .btn-danger, .btn-secondary { width: 48%; }
        .btn-group { display: flex; justify-content: space-between; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-container">
                <h3 class="text-center text-danger mb-4">🩸 Blood Request Form</h3>

                <!-- Requester / Hospital Name -->
                <asp:TextBox runat="server" ID="txtName" CssClass="form-control mb-3" placeholder="Requester / Hospital Name" TextMode="SingleLine"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName"
                    ErrorMessage="Name is required" CssClass="text-danger d-block mb-3" />

                <!-- Contact Number -->
                <asp:TextBox runat="server" ID="txtContact" CssClass="form-control mb-3" placeholder="Contact Number" TextMode="SingleLine"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtContact"
                    ErrorMessage="Contact number is required" CssClass="text-danger d-block mb-3" />

                <!-- Blood Group -->
                <asp:DropDownList runat="server" ID="ddlBloodGroup" CssClass="form-control mb-3">
                    <asp:ListItem Text="-- Select Blood Group --" Value="" />
                    <asp:ListItem Text="A+" Value="A+" />
                    <asp:ListItem Text="A-" Value="A-" />
                    <asp:ListItem Text="B+" Value="B+" />
                    <asp:ListItem Text="B-" Value="B-" />
                    <asp:ListItem Text="O+" Value="O+" />
                    <asp:ListItem Text="O-" Value="O-" />
                    <asp:ListItem Text="AB+" Value="AB+" />
                    <asp:ListItem Text="AB-" Value="AB-" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlBloodGroup"
                    InitialValue="" ErrorMessage="Select a blood group" CssClass="text-danger d-block mb-3" />

                <!-- Units Required -->
                <asp:TextBox runat="server" ID="txtUnits" CssClass="form-control mb-1" placeholder="Units Required" TextMode="SingleLine"></asp:TextBox>
                <asp:RangeValidator runat="server" ControlToValidate="txtUnits"
                    MinimumValue="1" MaximumValue="10" Type="Integer"
                    ErrorMessage="Units must be between 1 and 10" CssClass="text-danger d-block mb-3" />

                <!-- Date Required -->
                <asp:TextBox runat="server" ID="txtDate" CssClass="form-control mb-3" placeholder="Date Required (yyyy-mm-dd)" TextMode="SingleLine"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDate"
                    ErrorMessage="Date is required" CssClass="text-danger d-block mb-3" />
                <asp:RegularExpressionValidator runat="server" ControlToValidate="txtDate"
                    ValidationExpression="^\d{4}-\d{2}-\d{2}$"
                    ErrorMessage="Enter date in yyyy-mm-dd format" CssClass="text-danger d-block mb-3" />

                <!-- Buttons -->
                <div class="btn-group mb-3">
                    <asp:Button runat="server" ID="btnSubmit" Text="Submit" CssClass="btn btn-danger" OnClick="btnSubmit_Click" />
                    <asp:Button runat="server" ID="btnClear" Text="Clear" CssClass="btn btn-secondary" OnClick="btnClear_Click" />
                </div>

                <!-- Message Label -->
                <asp:Label runat="server" ID="lblMessage" CssClass="d-block mt-3 text-center fw-bold"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
