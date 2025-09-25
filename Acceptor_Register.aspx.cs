using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Acceptor_Register_aspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid) // run validators
        {
            string name = txtName.Text.Trim();
            string age = txtAge.Text.Trim();
            string gender = rblGender.SelectedValue;
            string bloodGroup = ddlBloodGroup.SelectedValue;
            string contact = txtContact.Text.Trim();
            string email = txtEmail.Text.Trim();
            string hospital = txtHospital.Text.Trim();
            string reason = txtReason.Text.Trim();

            // 👉 You can save this data into DB. For now, just show success message:
            string message = "Thank you, {name}! Your request has been submitted.";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);

           
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {

        ClearForm();
    }
        

    // 🔹 Helper method to reset fields
    private void ClearForm()
    {
        txtName.Text = "";
        txtAge.Text = "";
        rblGender.ClearSelection();
        ddlBloodGroup.SelectedIndex = 0;
        txtContact.Text = "";
        txtEmail.Text = "";
        txtHospital.Text = "";
        txtReason.Text = "";
    }
}
