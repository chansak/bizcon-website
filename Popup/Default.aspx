<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Popup.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Popup_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:MultiView ID="search" runat="server">
        <asp:View ID="solutions" runat="server">
            <asp:Label ID="lblTitle" runat="server"></asp:Label>
            <asp:Label ID="lblDescription" runat="server"></asp:Label>
            <span class="pull-right">
                <span style="margin-right: 10px">วันที่ลงประกาศ :<asp:Label ID="lblCreateDate" runat="server"></asp:Label></span>
            </span>
        </asp:View>
        <asp:View ID="video" runat="server">
                <object width="445" height="364">
                <param name="movie" value="http://www.youtube.com/v/n7JL16vcK1c=en&fs=1"></param>
                <param name="allowFullScreen" value="true"></param>
                <param name="allowscriptaccess" value="always"></param>
                <embed src=http://www.youtube.com/v/n7JL16vcK1c&hl=en&fs=1 type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="445" height="364"></embed>
            </object>
        </asp:View>
    </asp:MultiView>
</asp:Content>

