using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Pages_Customer : WebForm
{
    ActionMode mode = ActionMode.View;
    protected void Page_Load(object sender, EventArgs e)
    {
        mode = !string.IsNullOrEmpty(Request.QueryString["mode"]) ? (ActionMode)Convert.ToInt16(Request.QueryString["mode"]) : ActionMode.View;
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
    public override void DataBind()
    {
        DataView dv = CustomerProvider.CustomerList();
        grid.DataSource = dv;
        grid.CheckListDataField = "CustomerID";
        grid.DataBind();
    }
    protected void EditMode() {
        DataView dv = Program.Connection.Select("*","Customer", string.Format("WHERE CustomerID='{0}'", Request.QueryString["id"]));
        foreach (DataRow row in dv.Table.Rows)
        {
            txtCustomer.Text = row["Name"].ToString();
            txtAddress.Text = row["Address"].ToString();
            txtAttnName.Text = row["AttnName"].ToString();
            txtTel.Text = row["Tel"].ToString();
            txtFax.Text = row["Fax"].ToString();
        }
    }
    protected void InitialBaseControl(){}
    protected void grid_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HyperLink GridItem = (HyperLink)e.Row.FindControl("GridItem");
            GridItem.Text = DataBinder.Eval(e.Row.DataItem, "Name").ToString();
            GridItem.Attributes.Add("onclick", string.Format("page.edit('{0}','Customer');", DataBinder.Eval(e.Row.DataItem, "CustomerID").ToString()));
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            CustomerProvider.CreateCustomer(new Customer()
            {
                CustomerID = Guid.NewGuid().ToString(),
                Name = txtCustomer.Text,
                AttnName = txtAttnName.Text,
                Address = txtAddress.Text,
                Tel = txtTel.Text,
                Fax = txtFax.Text
            });
        }
        catch (Exception ex)
        {
            string notify = NotifyMessage("notify", NotifyType.error, "Warning !!!", "has problem while saving.", "page.goBack();");
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "goBack", notify, true);
        }
        finally {
            string notify = NotifyMessage("notify", NotifyType.success, "Success full", "Save Customer Complete.","page.goBack();");
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "goBack", notify, true);
        }
    }
}