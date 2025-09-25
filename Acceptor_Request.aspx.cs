using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Acceptor_Request : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid) // makes sure validators are checked
        {
            string name = txtName.Text.Trim();
            string bloodGroup = ddlBloodGroup.SelectedValue;
            string hospital = txtHospital.Text.Trim();
            string reason = txtReason.Text.Trim();
            string urgency = ddlUrgency.SelectedValue;
            string contact = txtContact.Text.Trim();

            // 👉 Replace this with DB insert code as needed
            string message = "Request submitted successfully for {name} ({bloodGroup}).";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);

        }
    }


    protected void btnClear_Click(object sender, EventArgs e)
    {

        ClearForm();
    }

    // 🔹 Helper method to reset all fields
    private void ClearForm()
    {
        txtName.Text = "";
        ddlBloodGroup.SelectedIndex = 0;
        txtHospital.Text = "";
        txtReason.Text = "";
        ddlUrgency.SelectedIndex = 0;
        txtContact.Text = "";
    }
}
    