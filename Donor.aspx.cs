using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid) // Ensures validators are checked
        {
            string name = txtName.Text;
            int age = int.Parse(txtAge.Text);
            string gender = rblGender.SelectedValue;
            string bloodGroup = ddlBloodGroup.SelectedValue;
            string contact = txtContact.Text;
            string email = txtEmail.Text;
            string address = txtAddress.Text;

            // TODO: Save to database or process as needed
            // Example: show confirmation
            Response.Write("<script>alert('Donor Registered Successfully!');</script>");
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtAge.Text = "";
        rblGender.ClearSelection();
        ddlBloodGroup.SelectedIndex = 0;
        txtContact.Text = "";
        txtEmail.Text = "";
        txtAddress.Text = "";
    }
}