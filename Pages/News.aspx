<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="News" ValidateRequest="false" %>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <script type="text/javascript">
        var grid={
            edit:function(){
                return <%=grid.ClientID%>.OnEdit(); 
            },
            delete:function(){
                return <%=grid.ClientID%>.OnDelete(); 
            }
        }
    </script>
    <div class="border">
        <span class="lead">Events Management</span>
        <asp:MultiView ID="multiview" runat="server">
            <asp:View ID="view" runat="server">
                <div class="btn-toolbar">
                    <div class="btn-group">
                        <a href="#" onclick="page.add();" class="btn btn-small btn-success">เพิ่มใหม่</a>
                        <asp:Button ID="btnEdit" CssClass="btn btn-small" Text="แก้ไข" runat="server" OnClientClick="return grid.edit();" OnClick="btnEdit_Click" />
                        <asp:Button ID="btnDelete" CssClass="btn btn-small" Text="ลบ" runat="server" OnClientClick="return grid.delete();" OnClick="btnDelete_Click" />
                    </div>
                </div>
                <Gadget:DataGridView ID="grid" CssClass="table table-bordered table-hover" AllowPaging="true" AllowSorting="true" PageSize="5" AutoGenerateCheckList="true" runat="server">
                    <Columns>
                        <Gadget:BoundField HeaderText="เรื่อง" DataField="Title" SortExpression="Title"></Gadget:BoundField>
                    </Columns>
                </Gadget:DataGridView>
            </asp:View>
            <asp:View ID="edit" runat="server">
                <div class="form-horizontal">
                    <div class="control-group">
                        <label class="control-label" for="txtTitle"><strong>เรื่อง</strong></label>
                        <div class="controls">
                            <asp:DropDownList ID="ddType" runat="server">
                                <asp:ListItem Text="ข่าวย้อนหลัง" Value="1"></asp:ListItem>
                                <asp:ListItem Text="ข่าวกำลังจะมา" Value="2"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="txtTitle"><strong>เรื่อง</strong></label>
                        <div class="controls">
                            <asp:TextBox ID="txtTitle" CssClass="input-xxlarge" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtTitle" ErrorMessage="*" runat="server"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="txtDetail"><strong>รายละเอียด</strong></label>
                        <div class="controls">
                            <Editor:FCKeditor ID="txtEditor" runat="server" Height="700px" Width="100%" BasePath="../ckfinder/fckeditor/">
                            </Editor:FCKeditor>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="txtEventDate"><strong>วันที่</strong></label>
                        <div class="controls">
                            <div class="input-append date" id="datepicker" data-date="12-02-2012" data-date-format="dd-mm-yyyy">
                                <asp:TextBox ID="txtEventDate" runat="server"></asp:TextBox>
                                <span class="add-on"><i class="icon-th"></i>
                                    <asp:RequiredFieldValidator ControlToValidate="txtEventDate" ErrorMessage="*" runat="server"></asp:RequiredFieldValidator></span>
                            </div>

                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="txtDetail"><strong></strong></label>
                        <div class="controls">
                            <asp:Button ID="btnSave" CssClass="btn btn-small btn-primary" Text="บันทึก" runat="server" OnClick="btnSave_Click" />
                            <a href="#" class="btn btn-small" onclick="page.goBack()">ยกเลิก</a>
                        </div>
                    </div>
                </div>
            </asp:View>
        </asp:MultiView>
    </div>
    <script src="../Scripts/jquery-1.9.1.js"></script>
    <script src="../Javascript/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-ui-1.10.3.min.js"></script>
    <script src="../Javascript/BizconFramework.js"></script>
    <script src="../Javascript/page.js"></script>
    <script src="../Javascript/fixJqueryPlugin.js"></script>
    <script src="../Javascript/jquery-ui-1.8.10.offset.datepicker.min.js"></script>
    <%--<script type="text/javascript">
        $("#<%=txtEventDate.ClientID %>").datepicker(
            {
                defaultDate:new Date().getDate(),
                dayNamesMin: ['อา', 'จ', 'อ', 'พ', 'พฤ', 'ศ', 'ส'],
                monthNames: ['มกราคม', 'กุมภาพันธ์', 'มีนาคม', 'เมษายน', 'พฤษภาคม', 'มิถุนายน', 'กรกฎาคม', 'สิงหาคม', 'กันยายน', 'ตุลาคม', 'พฤศจิกายน', 'ธันวาคม'],
                monthNamesShort: ['ม.ค.', 'ก.พ.', 'มี.ค.', 'เม.ย.', 'พ.ค.', 'มิ.ย.', 'ก.ค.', 'ส.ค.', 'ก.ย.', 'ต.ค.', 'พ.ย.', 'ธ.ค.'],
                dateFormat: 'dd/mm/yy',
                isBuddhist: true
            });
    </script>--%>
    <script type="text/javascript">
        var d = new Date();
        var toDay = d.getDate() + '/' + (d.getMonth() + 1) + '/' + (d.getFullYear() + 543);
        $("#<%=txtEventDate.ClientID %>").datepicker({
            dateFormat: 'dd/mm/yy', isBuddhist: true, defaultDate: toDay,
            dayNames: ['อาทิตย์', 'จันทร์', 'อังคาร', 'พุธ', 'พฤหัสบดี', 'ศุกร์', 'เสาร์'],
            dayNamesMin: ['อา.', 'จ.', 'อ.', 'พ.', 'พฤ.', 'ศ.', 'ส.'],
            monthNames: ['มกราคม', 'กุมภาพันธ์', 'มีนาคม', 'เมษายน', 'พฤษภาคม', 'มิถุนายน', 'กรกฎาคม', 'สิงหาคม', 'กันยายน', 'ตุลาคม', 'พฤศจิกายน', 'ธันวาคม'],
            monthNamesShort: ['ม.ค.', 'ก.พ.', 'มี.ค.', 'เม.ย.', 'พ.ค.', 'มิ.ย.', 'ก.ค.', 'ส.ค.', 'ก.ย.', 'ต.ค.', 'พ.ย.', 'ธ.ค.']
        });
    </script>
</asp:Content>

