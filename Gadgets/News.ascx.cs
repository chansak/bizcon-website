using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text.RegularExpressions;

public partial class Gadgets_News : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
            DataBind();
    }
    public override void DataBind()
    {
        DataView dv = Program.Connection.Select("TOP 3 *", "Notify", "ORDER BY CreateDate DESC");
        listNews.DataSource = dv;
        listNews.DataBind();
    }
    protected void listNews_PagePropertiesChanged(object sender, EventArgs e)
    {
        DataBind();
    }
    public string getImage(string desciption)
    {
        string pattern = @"<img\s[^\>]*src\s*=\s*[""']([^/<]*/[^""']+)[^\>]*\s*/*>";
        if (Regex.IsMatch(desciption, pattern))
        {
            Regex r = new Regex(pattern, RegexOptions.IgnoreCase | RegexOptions.Compiled);
            return string.Format("<span class=\"thumbnail\">{0}</>", r.Match(desciption).Groups[0].Value);
        }
        else
            return string.Empty;
    }
}