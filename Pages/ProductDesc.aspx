<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="ProductDesc.aspx.cs" Inherits="Pages_ProductDesc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
    <script src="../Javascript/jquery-1.9.1.min.js"></script>
    <script src="../Javascript/bootstrap.min.js"></script>
    <Gadget:Products ID="products" runat="server" />
</asp:Content>