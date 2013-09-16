<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Pages_Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="Server">
    <div class="border">
        <div id="notify" class="hide"></div>
        <span class="lead">Customer Management</span>
        <asp:MultiView ID="multiview" runat="server">
            <asp:View ID="view" runat="server">
                <div class="btn-toolbar">
                    <div class="btn-group">
                        <a href="#" onclick="page.add('Customer');" class="btn btn-small btn-success">เพิ่มใหม่</a>
                        <asp:Button ID="btnDelete" CssClass="btn btn-small" Text="ลบ" runat="server" OnClientClick="return grid.delete();" />
                    </div>
                </div>
                <asp:UpdatePanel ID="grid_updatepanel" runat="server">
                    <ContentTemplate>
                        <Gadget:DataGridView ID="grid" CssClass="table table-bordered table-hover" AutoGenerateCheckList="true" AllowPaging="true" AllowSorting="true" OnRowDataBound="grid_RowDataBound" runat="server">
                            <Columns>
                                <%--<asp:BoundField HeaderText="Customer Name" DataField="Name" SortExpression="Name" />--%>
                                <asp:TemplateField HeaderText="Customer Name">
                                    <ItemTemplate>
                                        <asp:HyperLink ID="GridItem" runat="server"></asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField HeaderText="Attn Name" DataField="AttnName" SortExpression="AttnName" />
                            </Columns>
                        </Gadget:DataGridView>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </asp:View>
            <asp:View ID="edit" runat="server">
                <asp:UpdatePanel ID="form_updatepanel" runat="server">
                    <ContentTemplate>
                        <div class="bs-docs-customer">
                            <div class="form-horizontal">
                                <div class="control-group">
                                    <label class="control-label" for="txtTitle">Name</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtCustomer" CssClass="input-xlarge" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="txtTitle">Address</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtAddress" CssClass="input-xxlarge" TextMode="MultiLine" Rows="3" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="txtTitle">Attn Name</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtAttnName" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Contact</label>
                                    <div class="controls form-inline">
                                        <label>Tel : </label>
                                        <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
                                        <label>Fax : </label>
                                        <asp:TextBox ID="txtFax" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <div class="controls">
                                        <asp:Button ID="btnSave" CssClass="btn btn-primary" Text="บันทึก" OnClick="btnSave_Click" runat="server" />
                                        <a href="#" class="btn" onclick="page.goBack();">ยกเลิก</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </asp:View>
        </asp:MultiView>
        <div class="btn-toolbar">
            <a href="#" onclick="page.gotoReferer();" class="btn btn-link btn-small"><i class="icon-chevron-left"></i>Back</a>
        </div>
    </div>
    <script src="../Javascript/jquery-1.9.1.min.js"></script>
    <script src="../Scripts/jquery-ui-1.10.2.min.js"></script>
    <script src="../Scripts/modernizr-2.6.2.js"></script>
    <script src="../Javascript/bootstrap.min.js"></script>
    <script src="../Javascript/BizconFramework.js"></script>
    <script src="../Javascript/page.js"></script>
    <script type="text/javascript">
        var grid={
            edit:function(){
                return <%=grid.ClientID%>.OnEdit(); 
            },
            delete:function(){
                return <%=grid.ClientID%>.OnDelete(); 
            }
        }
        //$('#notify').html("<button type='button' class='close' data-dismiss='alert'>&times;</button><h4>Test</h4>description").fadeIn().addClass('alert alert-success').delay(3000).fadeOut(1000,function(){page.goBack();});
    </script>
</asp:Content>

