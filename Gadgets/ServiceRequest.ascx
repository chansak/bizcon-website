<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ServiceRequest.ascx.cs" Inherits="Gadgets_ServiceRequest" %>
<Gadget:DataGridView ID="grid" CssClass="table table-bordered table-hover" AllowPaging="true" AllowSorting="true" runat="server">
    <Columns>
        <asp:BoundField HeaderText="เลขที่ใบสั่งซื้อ" DataField="SONUM" SortExpression="" />
        <asp:BoundField HeaderText="ชื่อลูกค้า" DataField="" SortExpression="" />
        <asp:BoundField HeaderText="ประเภทการบริการ" DataField="" SortExpression="" />
        <asp:BoundField HeaderText="ผู้ปฏิบัติงาน" DataField="" SortExpression="" />
        <asp:BoundField HeaderText="วันที่ดำเนินงาน" DataField="" SortExpression="" />
    </Columns>
</Gadget:DataGridView>
<script src="../Javascript/jquery-1.9.1.min.js"></script>
<script src="../Javascript/bootstrap.min.js"></script>
