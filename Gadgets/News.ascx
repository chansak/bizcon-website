<%@ Control Language="C#" AutoEventWireup="true" CodeFile="News.ascx.cs" Inherits="Gadgets_News" %>
<asp:UpdatePanel ID="update" runat="server">
    <ContentTemplate>
        <div class="span2">
            <h3>News & Events</h3>
        </div>
        <ul class="thumbnails">
            <asp:ListView ID="listNews" OnPagePropertiesChanged="listNews_PagePropertiesChanged" runat="server">
                <ItemTemplate>
                    <li style="width: 180px">
                        <a href="#" onclick='var size=dialogBox.SelectedSize("news");dialogBox.show("../Popup/Default.aspx?mode=news&id=<%# Eval("ID") %>","รายละเอียด ข่าว/ประกาศ",size.width,size.height,"#000",true)'>
                            <%# getImage(Eval("Detail").ToString()) %>
                            <p>
                                <%# AppUtilities.Left(Eval("Title").ToString(),80,"") %>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:ListView>
        </ul>
    </ContentTemplate>
</asp:UpdatePanel>
<script src="../Javascript/BizconFramework.js"></script>
<script src="../Javascript/Dialog.js"></script>

