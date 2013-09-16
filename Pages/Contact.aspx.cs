using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : WebForm
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //try
        //{
        //    Program.Connection.AddNew(
        //        "Contacts",
        //        "Email,DisplayName,Detail,IP",
        //        txtEmail.Text, txtName.Text, txtDetail.Text, Request.ServerVariables["REMOTE_ADDR"].ToString()
        //        );
        //    Response.Redirect("Contact.aspx");
        //}
        //catch (Exception ex) {
        //    Response.Write(ex.Message);
        //}
        AppUtilities.SendMail(txtEmail.Text, "bizcon-mkt@bizcon.co.th", "Jobs From " + txtName.Text, txtDetail.Text, true);
        Response.Redirect("Contact.aspx");
    }
}