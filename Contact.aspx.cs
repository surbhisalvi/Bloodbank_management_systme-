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
        if (Page.IsValid) // ensure validations passed
        {
            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string message = txtMessage.Text.Trim();

            // 👉 Here you can save to DB or send an email
            // For demo, just show confirmation
            lblMessage.Text = "Thank you, " + name + "! Your message has been submitted successfully.";

            // Optional: clear fields
            txtName.Text = "";
            txtEmail.Text = "";
            txtMessage.Text = "";
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtEmail.Text = "";
        txtMessage.Text = "";
        txtName.Text = "";

    }
}