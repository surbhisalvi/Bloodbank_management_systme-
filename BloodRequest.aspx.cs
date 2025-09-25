using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BloodRequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMessage.Text = "";
    }

    // Submit Button Click
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // Basic validation
        if (ddlBloodGroup.SelectedValue == "")
        {
            lblMessage.Text = "Please select a hospital.";
            lblMessage.CssClass = "text-danger fw-bold";
            return;
        }

        if (ddlBloodGroup.SelectedValue == "")
        {
            lblMessage.Text = "Please select a blood group.";
            lblMessage.CssClass = "text-danger fw-bold";
            return;
        }

        if (string.IsNullOrEmpty(txtContact.Text) || string.IsNullOrEmpty(txtUnits.Text) || string.IsNullOrEmpty(txtDate.Text))
        {
            lblMessage.Text = "Please fill in all fields.";
            lblMessage.CssClass = "text-danger fw-bold";
            return;
        }

        // Here you can save data to database if needed

        lblMessage.Text = "Blood request submitted successfully!";
        lblMessage.CssClass = "text-success fw-bold";
    }

    // Clear Button Click
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        ddlBloodGroup.SelectedIndex = 0;
        txtContact.Text = "";
        txtUnits.Text = "";
        txtDate.Text = "";
        lblMessage.Text = "";
    }
}