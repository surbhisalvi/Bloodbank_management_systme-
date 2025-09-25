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
        if (Page.IsValid) // ensure validators passed
        {
            string name = txtName.Text;
            string email = txtEmail.Text;
            string phone = txtPhone.Text;
            string bloodGroup = ddlBloodGroup.SelectedValue;
            string city = txtCity.Text;

            // TODO: Save to database or send an email/notification
            // For now, just show a confirmation message
            Response.Write("<script>alert('Blood request submitted successfully!');</script>");
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtEmail.Text = "";
        txtPhone.Text = "";
        ddlBloodGroup.SelectedIndex = 0;
        txtCity.Text = "";
    }
}
