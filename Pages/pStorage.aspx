<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="pStorage.aspx.cs" Inherits="Pages_pStorage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="Server">
    <script src="../Javascript/jquery-1.9.1.min.js"></script>
    <script src="../Javascript/bootstrap.min.js"></script>
    <script src="../Javascript/BizconFramework.js"></script>
    <div class="border">
        <h1>
            <img src="../Images/Partners/hp-logo.gif" />&nbsp;3PAR StoreServ Storage</h1>
        &nbsp;&nbsp;&nbsp;&nbsp;The only primary storage architecture you’ll ever need.
        <%--<ul class="nav nav-tabs" id="myTab">
            <li class="active"><a href="#overview" id="default" data-toggle="tab">Overview</a></li>
        </ul>--%>
        <div class="tab-content">
            <div class="tab-pane active" id="overview">
                <div class="row-fluid">
                    <div class="span12">
                        <ul class="thumbnails">
                            <li>
                                <div class="row-fluid">
                                    <h2>Overview</h2>

                                    <div class="span4">
                                        <a href="#" class="thumbnail">
                                            <%--<img src="../Images/Products/T-3PAR-family__220x160--C-tcm245-1410398--CT-tcm245-1237012-32.jpg" />--%>
                                            <img src="../Images/Products/Storage/c03736132.png" />
                                        </a>
                                    </div>
                                    <div class="span7">
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;Alone in the industry, HP 3PAR StoreServ Storage uses a single architecture to deliver primary storage platforms for midrange, Tier-1 enterprise, and optimized all-flash arrays.</p>
                                        <h4>NEW: HP 3PAR StoreServ 7450—optimized all-flash array</h4>
                                        <h4>Introducing HP Storage Plug in for SAP NetWeaver Landscape Virtualization Manager—leverage SAP landscape management automation with HP 3PAR StoreServ </h4>
                                    </div>
                                </div>
                                <div class="span11">
                                    <h4>When Tier-1 data services matter, don’t compromise. Choose HP 3PAR StoreServ Storage.</h4>
                                    <table class="table table-bordered" width="100%">
                                        <thead>
                                            <tr class="main_header">
                                                <th width="34%">What matters most?</th>
                                                <th class="last" width="66%">We recommend:</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td width="34%">
                                                    <p><strong>Economics</strong></p>
                                                </td>
                                                <td width="66%">
                                                    <p>
                                                        <strong><a title="HP StoreServ 7000" href="http://www8.hp.com/us/en/products/disk-storage/product-detail.html?oid=5335712" nonhp="no" target="_blank" xtitle="hp page | link | HP StoreServ 7000">HP 3PAR StoreServ 7000</a>—Tier-1 storage at a midrange price</strong><br>
                                                        Quad-controller capable 3PAR StoreServ 7400 delivers Tier-1 storage starting at $32,000.
                                                        <br>
                                                        <br>
                                                        <a title="4AA4-4120ENW | link" href="http://h20195.www2.hp.com/V2/GetDocument.aspx?docname=4AA4-4120ENW&amp;cc=us&amp;lc=en" nonhp="no" target="_blank" xtitle="4AA4-4120ENW | link">HP 3PAR StoreServ 7000 data sheet</a><br>
                                                        <br>
                                                        <a title="4AA4-5186ENW | link | stor" href="http://h20195.www2.hp.com/V2/GetDocument.aspx?docname=4AA4-5186ENW&amp;cc=us&amp;lc=en" target="_blank" nonhp="no" xtitle="4AA4-5186ENW | link | stor">Exchange 2010 Solution with 3PAR StoreServ 7400</a>
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="34%">
                                                    <p><strong>Performance</strong></p>
                                                </td>
                                                <td width="66%">
                                                    <p>
                                                        <strong><a title="HP 3PAR StoreServ 7450" href="http://www8.hp.com/us/en/products/disk-storage/product-detail.html?oid=5386547" nonhp="no" target="_blank" xtitle="hp page | link | HP 3PAR StoreServ 7450">HP 3PAR StoreServ 7450</a>—All-flash array</strong><br>
                                                        No Compromise: Over 500,000 IOPS and Tier-1 features
                                                        <br>
                                                        <br>
                                                        <a title="4AA4-6962ENW | link" href="http://h20195.www2.hp.com/V2/GetDocument.aspx?docname=4AA4-6962ENW&amp;cc=us&amp;lc=en" target="_blank" nonhp="no" xtitle="4AA4-6962ENW | link">HP 3PAR StoreServ 7450 data sheet</a>
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="34%">
                                                    <p><strong>Scale</strong></p>
                                                </td>
                                                <td width="66%">
                                                    <p>
                                                        <strong><a title="HP 3PAR StoreServ 10000" href="http://www8.hp.com/us/en/products/disk-storage/product-detail.html?oid=5157544" nonhp="no" target="_blank" xtitle="hp page | link | HP 3PAR StoreServ 10000">HP 3PAR StoreServ 10000</a>—Tier-1, mission critical</strong><br>
                                                        Up to 2.2PB capacity and 8 controller nodes.
                                                        <br>
                                                        <br>
                                                        <a title="4AA3-2351ENW | link | stor" href="http://h20195.www2.hp.com/V2/GetDocument.aspx?docname=4AA3-2351ENW&amp;cc=us&amp;lc=en" nonhp="no" target="_blank" xtitle="4AA3-2351ENW | link | stor">HP 3PAR StoreServ 10000 Storage data sheet</a><br>
                                                        <br>
                                                        <a title="4AA3-6568ENW | link" href="http://h20195.www2.hp.com/V2/GetDocument.aspx?docname=4AA3-6568ENW&amp;cc=us&amp;lc=en" nonhp="no" target="_blank" xtitle="4AA3-6568ENW | link">HP 3PAR StoreServ 10000 Storage:
                                                            <br>
                                                            Extending Tier-1 Storage Choice</a>
                                                    </p>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <h4>3PAR StoreServ—Storage for the next era</h4>
                                    <p>HP 3PAR StoreServ Storage is a family of modern storage systems with Tier-1 models that range from less than $40,000 to multi-million dollar systems found in the world’s largest cloud data centers.</p>
                                    <ul>
                                        <li>Autonomic — Increase storage management efficiency</li>
                                        <li>Efficient — Reduce capacity requirements by 50% — guaranteed</li>
                                        <li>Multi-Tenant — Double VM density — guaranteed</li>
                                        <li>Federated — Non-disruptive data mobility between systems</li>
                                    </ul>
                                    <h4>HP Storage Services: popular offerings to support your storage needs.</h4>
                                    <p>Discover, plan and design services</p>
                                    <ul>
                                        <li><a title="HP Storage Modernization" href="http://h20195.www2.hp.com/V2/GetDocument.aspx?docname=4AA3-4620ENW&amp;amp;cc=us&amp;amp;lc=en" nonhp="no" target="_blank" xtitle="4AA3-4620ENW | link">HP Storage Modernization</a></li>
                                        <li><a href="http://h20195.www2.hp.com/V2/GetDocument.aspx?docname=4AA4-1174ENW&amp;cc=us&amp;lc=en" nonhp="no" title="4AA4-1174ENW | link" target="_blank" xtitle="4AA4-1174ENW | link">HP Storage Impact Analysis</a></li>
                                        <li><a title="HP Storage Efficiency Analysis" href="http://h20195.www2.hp.com/V2/getdocument.aspx?docname=4AA3-6727ENW&amp;cc=us&amp;lc=en" nonhp="no" target="_blank" xtitle="4AA3-6727ENW | link">HP Storage Efficiency Analysis</a></li>
                                    </ul>
                                    <h4>Deploy and integrate services</h4>
                                    <ul>
                                        <li><a title="HP 3PAR StoreServ 10000 Installation and Startup Service" href="http://h20195.www2.hp.com/V2/GetDocument.aspx?docname=4AA2-8240ENW&amp;cc=us&amp;lc=en" nonhp="no" target="_blank" xtitle="4AA2-8240ENW | link">HP 3PAR StoreServ 10000 Installation and Startup Service</a></li>
                                        <li><a title="HP 3PAR 10000 Software Installation and Startup Service" href="http://h20195.www2.hp.com/V2/getdocument.aspx?docname=4AA3-2345ENW&amp;amp;cc=us&amp;amp;lc=en" nonhp="no" target="_blank" xtitle="4AA3-2345ENW | link">HP 3PAR 10000 Software Installation and Startup Service</a></li>
                                        <li><a title="HP 3PAR StoreServ 7000 Storage Installation and Startup Service" href="http://h20195.www2.hp.com/V2/GetDocument.aspx?docname=4AA4-2568ENW&amp;cc=us&amp;lc=en" nonhp="no" target="_blank" xtitle="4AA4-2568ENW | link">HP 3PAR StoreServ 7000 Storage Installation and Startup Service</a></li>
                                        <li><a title="HP 3PAR 7000 Software Installation and Startup Service" href="http://h20195.www2.hp.com/V2/GetDocument.aspx?docname=4AA4-2569ENW&amp;cc=us&amp;lc=en" nonhp="no" target="_blank" xtitle="4AA4-2569ENW | link">HP 3PAR 7000 Software Installation and Startup Service</a></li>
                                        <li><a title="HP EVA to 3PAR StoreServ Acceleration Service" href="http://h20195.www2.hp.com/V2/GetDocument.aspx?docname=4AA4-4549ENW&amp;cc=us&amp;lc=en" nonhp="no" target="_blank" xtitle="4AA4-4549ENW | link - DUPE DO NOT USE">HP EVA to 3PAR StoreServ Acceleration Service</a></li>
                                        <li><a title="HP Data Replication Solution Service" href="http://h20195.www2.hp.com/V2/GetDocument.aspx?docname=5981-7875EN&amp;amp;cc=us&amp;amp;lc=en" nonhp="no" target="_blank" xtitle="5981-7875EN | link">HP Data Replication Solution Service</a></li>
                                        <li><a title="HP Storage Data Migration Services" href="http://h20195.www2.hp.com/V2/GetDocument.aspx?docname=4AA3-0774ENW&amp;amp;cc=us&amp;amp;lc=en" nonhp="no" target="_blank" xtitle="4AA3-0774ENW | link">HP Storage Data Migration Services</a></li>
                                        <li><a href="http://h20195.www2.hp.com/V2/getdocument.aspx?docname=4AA4-3404ENW&amp;cc=us&amp;lc=en" nonhp="no" title="4AA4-3404ENW | link" target="_blank" xtitle="4AA4-3404ENW | link">HP 3PAR StoreServ Health Check</a></li>
                                    </ul>
                                    <h4>Operate and support services</h4>
                                    <ul>
                                        <li><a href="http://h20195.www2.hp.com/V2/getdocument.aspx?docname=5982-0079EN&amp;cc=us&amp;lc=en" nonhp="no" title="5982-0079EN | link | stor" target="_blank" xtitle="5982-0079EN | link | stor">HP Critical Service</a></li>
                                        <li><a href="http://h20195.www2.hp.com/V2/GetDocument.aspx?docname=4AA4-3446ENW&amp;cc=us&amp;lc=en" target="_blank" nonhp="no" title="HP Proactive Care 24x7 and HP Proactive Care Personalized Support" xtitle="4AA4-3446ENW | link">HP Proactive Care 24x7 and HP Proactive Care Personalized Support</a></li>
                                        <li><a href="http://h20195.www2.hp.com/V2/GetDocument.aspx?docname=c03536535&amp;cc=us&amp;lc=en " nonhp="no" title="c03536535 | link" target="_blank" xtitle="c03536535 | link">HP Education Services</a></li>
                                    </ul>
                                    <p><a title="View all HP Storage Services" class="btn btn-success btn-large" href="#" onclick="openWindow('http://www8.hp.com/us/en/products/disk-storage/index.html?facet=3par-storage#!view=column&page=1&facet=3par-storage');">View all HP Storage Services</a></p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

