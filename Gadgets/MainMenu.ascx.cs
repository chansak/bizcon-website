using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;

public partial class Gadgets_MainMenu : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(CurrentUser.ID)) multiview.ActiveViewIndex = 0;
        else multiview.ActiveViewIndex = 1;
    }
    public string getProductsList() {
        StringBuilder html = new StringBuilder();
        DataView dv = CoreLib.getProductsList();
        foreach (DataRow rows in dv.Table.Rows) {
            //html.AppendFormat("<li><a href=\"#\" onclick=\"location.href='ProductDesc.aspx?id={1}';\">{0}</a></li>", rows["Name"],rows["ProductId"]);
            html.AppendFormat("<li><a href=\"#\" onclick=\"location.href='{1}.aspx';\">{0}</a></li>", rows["Name"], rows["PageName"]);
        }
        return html.ToString();
    }
    public string getInternalSystemList() {
        StringBuilder html = new StringBuilder();
        InternalSystemCollection items = InternalSystemProvider.SystemCollection();
        foreach (InternalSystem item in items) {
            html.AppendFormat("<li><a href=\"#\" onclick=\"openWindow('{0}');\">{1}</a></li>", item.NavigateUrl, item.SystemName, item.NavigateUrl);
        }
        return html.ToString();
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        User.Logout();
    }
}