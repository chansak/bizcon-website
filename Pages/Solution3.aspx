<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Solution3.aspx.cs" Inherits="Pages_Solution3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
        <div class="content">
        <h4></h4>
        <ul class="nav nav-tabs" id="myTab">
            <li class="active"><a href="#overview" data-toggle="tab">Overview</a></li>
            <li><a href="#reference" data-toggle="tab">Reference Site</a></li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" id="overview">
                <div class="row">
                    <div class="span8 divider-right">
                    </div>
                    <div class="span3">
                    </div>
                </div>
            </div>
            <div class="tab-pane" id="reference">
                <div class="span8 divider">
                </div>
                <div class="span3">
                </div>
            </div>
        </div>
    </div>
</asp:Content>

