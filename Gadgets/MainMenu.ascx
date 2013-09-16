<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MainMenu.ascx.cs" Inherits="Gadgets_MainMenu" %>
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="Default.aspx">
                <img src="../Images/logo-without-name.png" />
                BizCon Solutions</a>
            <div class="nav-collapse collapse">
                <ul class="nav nav-pills">
                    <%--<li><a href="Default.aspx"><i class="icon-home"></i>&nbsp;Home</a></li>--%>
                    <li class="divider-vertical"></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Home<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="Default.aspx">Home Page</a></li>
                            <li><a href="AboutUs.aspx">Company overview</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products & Solutions<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="nav-header">Products</li>
                            <%--<%= getProductsList() %>--%>
                            <li class="dropdown-submenu">
                                <a href="#">HP</a>
                                <ul class="dropdown-menu">
                                    <li><a href="pBServer.aspx">Blade Servers</a></li>
                                    <li><a href="pPServer.aspx">ProLiant Servers</a></li>
                                    <li><a href="pStorage.aspx">Storage</a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu">
                                <a href="#">VMware</a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Desktop Virtualization and Mobile Computing</a></li>
                                    <li><a href="#">Data Center Virtualization and Cloud Infrastructure</a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu">
                                <a href="#">Microsoft</a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Active Directory</a></li>
                                    <li><a href="#">Exchange</a></li>
                                </ul>
                            </li>
                            <li class="divider"></li>
                            <li class="nav-header">Solutions</li>
                            <li><a href="Solution1.aspx">IT Continuity Solutions</a></li>
                            <li><a href="#">System Infrastructure</a></li>
                            <li><a href="#">IT/Network Performance Improvement</a></li>
                            <li><a href="#">IT Security</a></li>
                        </ul>
                    </li>
                    <li><a href="Specializations.aspx">Specializations</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="Contact.aspx">Contact</a></li>
                    <li class="divider-vertical"></li>
                    <li>
                        <ul class="nav pull-right">
                            <asp:MultiView ID="multiview" runat="server">
                                <asp:View ID="login" runat="server">
                                    <li>
                                        <a href="Login.aspx">Log In</a>
                                    </li>
                                </asp:View>
                                <asp:View ID="userdetail" runat="server">
                                    <li class="dropdown">
                                        <a class="dropdown-toggle" data-toggle="dropdown"
                                            href="#"><i class="icon-user"></i><b class="caret"></b>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li class="nav-header">Internal System</li>
                                            <%= getInternalSystemList() %>
                                            <li class="divider"></li>
                                            <li class="nav-header">Setting</li>
                                            <li><a href="News.aspx">Events Management</a></li>
                                            <li class="divider"></li>
                                            <li>
                                                <asp:LinkButton ID="btnLogout" Text="Logout" OnClick="btnLogout_Click" runat="server"></asp:LinkButton></li>
                                        </ul>
                                    </li>
                                </asp:View>
                            </asp:MultiView>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

