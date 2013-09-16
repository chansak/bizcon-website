using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class News : WebForm
{
    ActionMode mode = ActionMode.View;
    protected void Page_Load(object sender, EventArgs e)
    {
        mode= !string.IsNullOrEmpty(Request.QueryString["mode"])?(ActionMode)Convert.ToInt16(Request.QueryString["mode"]):ActionMode.View;
        if (!this.IsPostBack)
        {
            if (mode == ActionMode.View)
            {
                multiview.ActiveViewIndex = 0;
                DataBind();
            }
            else
            {
                if (mode == ActionMode.Edit)
                    EditMode();
                multiview.ActiveViewIndex = 1;
            }
        }
        InitialBaseControl();
    }
    void InitialBaseControl() {
    }
    public override void DataBind()
    {
        DataView dvData = Program.Connection.Select("*", "Notify", "ORDER BY EventDate DESC");
        grid.CheckListDataField = "ID";
        grid.DataSource = dvData;
        grid.DataBind();
    }
    void EditMode() {
        DataView dvData = Program.Connection.Select("TOP (10) ID, Title, Detail, CreateDate, EventDate,Type", "Notify", string.Format("WHERE ID='{0}'", Request.QueryString["id"]));
        foreach (DataRow row in dvData.Table.Rows) {
            txtTitle.Text = row["Title"].ToString();
            txtEditor.Value = row["Detail"].ToString();
            txtEventDate.Text = Convert.ToDateTime(row["EventDate"]).ToString("dd/MM/yyyy");
            ddType.SelectedValue = row["Type"].ToString();
        }
    }
    protected void btnAddNews_Click(object sender, EventArgs e)
    {
        Response.Redirect("News.aspx?mode=1");
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (mode == ActionMode.AddNew)
        {
            Program.Connection.AddNew(
                "Notify",
                "Title,Detail,EventDate,Type",
                txtTitle.Text, txtEditor.Value, Convert.ToDateTime(txtEventDate.Text).ToString("s"),ddType.SelectedValue
                );
        }
        else if (mode == ActionMode.Edit)
        {
            Program.Connection.Update(
                "Notify",
                string.Format("WHERE ID='{0}'",Request.QueryString["id"]),
                "Title,Detail,EventDate,Type",
                txtTitle.Text, txtEditor.Value, Convert.ToDateTime(txtEventDate.Text).ToString("s"),ddType.SelectedValue
                );
        }
        Response.Redirect("News.aspx");
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        Response.Redirect(string.Format("News.aspx?mode=2&id={0}", grid.SelectedItems[0].ToString()));
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        Program.Connection.Delete(
            "Notify",
            string.Format("WHERE ID IN({0})","'"+ string.Join("','",grid.SelectedItems) + "'"));
        Response.Redirect("News.aspx");
    }
}