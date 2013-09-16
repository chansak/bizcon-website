using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AboutUs : WebForm
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [WebMethod]
    public static void Save(string page, string html)
    {
        switch (page)
        {
            case "aboutus":
                {
                    Program.Connection.Update("DynamicContent",
                        "WHERE PageName='aboutus'",
                        "Content", html);
                    break;
                }
        }
    }
    [WebMethod]
    public static string View(string page)
    {
        switch (page)
        {
            case "aboutus":
                {
                    return Program.Connection.Select("Content", "DynamicContent", "WHERE PageName='aboutus'").Table.Rows[0]["Content"].ToString();
                    break;
                }
            default:
                {
                    return String.Empty;
                    break;
                }
        }
    }
}