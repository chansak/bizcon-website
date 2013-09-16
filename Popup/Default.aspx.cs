using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net.Mail;
using System.Data;

public partial class Popup_Default : WebForm
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!this.IsPostBack)
        {
            switch (Request.QueryString["mode"].ToString().ToLower())
            {
                case "news":
                    {
                        search.ActiveViewIndex = 0;
                        NewsDatabind();
                        break;
                    }
                case "video":
                    {
                        search.ActiveViewIndex = 1;
                        break;
                    }
                default:
                    {
                        break;
                    }
            }
        }
    }
    protected void NewsDatabind() {
        DataView dv = Program.Connection.Select("*", "Notify", string.Format("WHERE ID='{0}'",Request.QueryString["id"]));
        foreach (DataRow rows in dv.Table.Rows)
        {
            lblTitle.Text = rows["Title"].ToString();
            lblDescription.Text = rows["Detail"].ToString();
            lblCreateDate.Text = Convert.ToDateTime(rows["CreateDate"]).ToString("dd/MM/yyyy");
        }
    }
}