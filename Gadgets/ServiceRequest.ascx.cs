using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  

public partial class Gadgets_ServiceRequest : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
            DataBind();
    }
    public override void DataBind()
    {
        DataView dv = Program.Connection.Select("*", 
            @"
                ServiceRequest SR 
                INNER JOIN Customer C ON SR.CustomerID=C.CustomerID
                INNER JOIN Users U ON SR.ServiceBY=U.UserID", "");
        grid.DataSource = dv;
        grid.DataBind();
    }
}