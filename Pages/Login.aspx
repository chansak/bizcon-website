<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div class="border">
        <h3>User Authentication <i class="icon-lock"></i></h3>
        <div class="container">
            <div class="form-horizontal">
                <div class="row-fluids">
                    <div class="control-group">
                        <label class="control-label" for="inputEmail">Email</label>
                        <div class="controls">
                            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="reqUserName" ControlToValidate="txtUserName" CssClass="help-inline" ErrorMessage="*" runat="server"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="inputPassword">Password</label>
                        <div class="controls">
                            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="reqPassword" ControlToValidate="txtPassword" CssClass="help-inline" ErrorMessage="*" runat="server"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="control-group">
                        <div class="controls">
                            <label class="checkbox">
                                <%--<input type="checkbox" disabled="disabled">--%>
                                <asp:CheckBox ID="cbRemember" runat="server" />
                                Remember me
                            </label>
                            <asp:Button ID="btnLogin" CssClass="btn" Text="Login" runat="server" OnClick="btnLogin_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

