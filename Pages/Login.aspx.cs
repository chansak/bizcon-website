using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : WebForm
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        { }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (UserProvider.ValidateUser(txtUserName.Text, txtPassword.Text, cbRemember.Checked))
        {
            Response.Redirect(FormsAuthentication.DefaultUrl);
        }
    }
}