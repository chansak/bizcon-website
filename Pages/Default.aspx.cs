using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Text;
using System.IO;
using System.Web.UI.HtmlControls;

public partial class Pages_Default : WebForm
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    [WebMethod]
    public static void Save(string page, string html)
    {
        switch (page)
        {
            case "default":
                {
                    Program.Connection.Update("DynamicContent",
                        "WHERE PageName='default'",
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
            case "default":
                {
                    return Program.Connection.Select("Content", "DynamicContent", "WHERE PageName='default'").Table.Rows[0]["Content"].ToString();
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