<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Solution1.aspx.cs" Inherits="Pages_Solution1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="Server">
    <div class="border">
        <strong>IT Continuity Solutions</strong>
        <ul class="nav nav-tabs" id="myTab">
            <li class="active"><a href="#overview" data-toggle="tab">Overview</a></li>
            <li><a href="#reference" data-toggle="tab">Reference Site</a></li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" id="overview">
                <div class="span10">
                    <strong>1. Disaster Recovery/HIgh Availability</strong>
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;The challenge in developing a disaster recovery strategy is to determine the best fit of hardware and/or software resiliency/recovery for your environment, recognizing that although a particular solution may work well for a specific purpose, it may also complicate the overall recovery/resiliency architecture. The combination of both hardware and software architectures should be evaluated based on your overall resiliency and recovery strategy and not on how well it satisfies the requirements of a single application component.When developing your recovery strategy, remember that the approach to recovery is intended to support the business and should include aspects of people, technology, and facility. The three Rs of planning; risk, recovery and resiliency should be included throughout your strategy and business case for your program.</p>
                    <div class="thumbnail">
                        <img src="../Images/Solutions/dr.jpg" />
                        Enterprise Operations Cycle of Disaster Recovery
                    </div>
                </div>
                <div class="span10">
                    <strong>2. System Recovery/Backup/Recovery/Archiving</strong>
                </div>
                <div class="span10">
                    <strong>3. End Point Protection</strong>
                </div>
            </div>
            <div class="tab-pane" id="reference">
                <div class="span8 divider">
                    <ul class="row-fluid thumbnails">
                        <li>
                            <img src="../Images/Reference/scg_icon.gif" class="thumbnail" /></li>
                    </ul>
                </div>
                <div class="span3">
                </div>
            </div>
        </div>
    </div>
    <script src="../Javascript/jquery-1.9.1.min.js"></script>
    <script src="../Javascript/bootstrap.min.js"></script>
</asp:Content>

