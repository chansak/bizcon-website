<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="pBServer.aspx.cs" Inherits="Pages_pBServer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="Server">
    <script src="../Javascript/jquery-1.9.1.min.js"></script>
    <script src="../Javascript/bootstrap.min.js"></script>
    <script src="../Javascript/BizconFramework.js"></script>
    <div class="border">
        <h1>
            <img src="../Images/Partners/hp-logo.gif" />&nbsp;Blade Server</h1>
        &nbsp;&nbsp;&nbsp;&nbsp;The world's most advanced blade server infrastructure designed to drive business innovation and eliminate sprawl
        <ul class="nav nav-tabs" id="myTab">
            <li class="active"><a href="#overview" id="default" data-toggle="tab">Overview</a></li>
            <li><a href="#products" data-toggle="tab" id="product">Products & Service</a></li>
            <li><a href="#solutions" data-toggle="tab">Solutions</a></li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" id="overview">
                <div class="row-fluid">
                    <div class="span6">
                        <ul class="thumbnails">
                            <li>
                                <div class="row-fluid">
                                    <div class="span6">
                                        <a href="#" class="thumbnail">
                                            <img src="../Images/Products/promo-blades-212x120.jpg" />
                                        </a>
                                    </div>
                                    <div class="span6">
                                        <h4>World’s Most Advanced Blade Server Infrastructure</h4>
                                        <a href="#">
                                            <p>See how other customers reduced their data center costs up to 68%</p>
                                        </a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="span6">
                        <ul class="thumbnails">
                            <li>
                                <div class="row-fluid">
                                    <div class="span6">
                                        <a href="#" class="thumbnail">
                                            <img src="../Images/Products/proliantgen8.jpg" />
                                        </a>
                                    </div>
                                    <div class="span6">
                                        <h4>HP Virtual Connect 4.01 Now Available</h4>
                                        <a href="#">
                                            <p>Learn more about wire-once simplicity</p>
                                        </a>

                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="row-fluid">
                    <h2>HP BladeSystem - future proof your data center</h2>
                    <div class="span8">
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;Modern data centers require next generation technologies in a change-ready system architecture to keep up with today and scale for tomorrow. Ideal for virtualization and cloud, HP BladeSystem is architected for any workload, from client to cloud while delivering breakthrough economics and intelligence for unprecedented insight into your data center.</p>
                        <a href="#" id="btnViewBlade" class="btn btn-success btn-large">View Blade System Products</a>
                    </div>
                    <div class="span3">
                        <a href="#" class="thumbnail">
                            <img src="../Images/Products/cont-bladesystem-216x130.jpg" />
                        </a>
                    </div>
                </div>
            </div>
            <div class="tab-pane" id="products">
                <div class="row-fluid">
                    <div class="span11">
                        <ul class="thumbnails">
                            <li>
                                <div class="row-fluid">
                                    <div class="span3">
                                        <a href="#" class="thumbnail">
                                            <img src="../Images/Products/sec-enclosures-125x94.jpg" />
                                        </a>
                                    </div>
                                    <div class="span8">
                                        <h2>HP BladeSystem Enclosures</h2>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;Maximize every hour, watt, and dollar with innovative and market-leading enclosures that significantly reduce cost of ownership over traditional blade server infrastructures.</p>
                                        <ul style="list-style: none; padding: 0px; margin: 0px;">
                                            <li><a href="#" onclick="openWindow('http://www8.hp.com/us/en/products/enclosures/index.html#!page=1&view=grid');">BladeSystem enclosures</a></li>
                                            <li><a href="#" onclick="openWindow('http://h18000.www1.hp.com/products/blades/expansion/index.html');">Expansion blades</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <hr />
                    </div>
                    <div class="span11">
                        <ul class="thumbnails">
                            <li>
                                <div class="row-fluid">
                                    <div class="span3">
                                        <a href="#" class="thumbnail">
                                            <img src="../Images/Products/sec-serverblades-125x94.jpg" />
                                        </a>
                                    </div>
                                    <div class="span8">
                                        <h2>Server Blades</h2>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;Whether a small business or the largest enterprise firm, meet your blade server needs with innovative technology, numerous interconnect alternatives, multiple redundant features, and much more.</p>
                                        <ul style="list-style: none; padding: 0px; margin: 0px;">
                                            <li><a href="#" onclick="openWindow('http://www8.hp.com/us/en/products/integrity-servers/index.html?facet=Integrity-blades');">Integrity server blades</a></li>
                                            <li><a href="#" onclick="openWindow('http://www8.hp.com/us/en/products/proliant-servers/index.html?facet=ProLiant-BL-Blade');">ProLiant server blades</a></li>
                                            <li><a href="#" onclick="openWindow('http://www8.hp.com/us/en/products/proliant-servers/product-detail.html?oid=5288619');">ProLiant workstation blades</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <hr />
                    </div>
                    <div class="span11">
                        <ul class="thumbnails">
                            <li>
                                <div class="row-fluid">
                                    <div class="span3">
                                        <a href="#" class="thumbnail">
                                            <img src="../Images/Products/sec-virtualconnect-125x94.jpg" />
                                        </a>
                                    </div>
                                    <div class="span8">
                                        <h2>Virtual Connect & Networking</h2>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;Save time, dramatically reduce costs and simplify connections by consolidating network connections and enabling administrators to add, replace and recover blade server resources on-the-fly.</p>
                                        <ul style="list-style: none; padding: 0px; margin: 0px;">
                                            <li><a href="#" onclick="openWindow('http://h18000.www1.hp.com/products/blades/components/c-class-adapters.html');">Adapters and mezzanines</a></li>
                                            <li><a href="#" onclick="openWindow('http://h18000.www1.hp.com/products/blades/components/c-class-interconnects.html');">Interconnects</a></li>
                                            <li><a href="#" onclick="openWindow('http://h18004.www1.hp.com/products/blades/virtualconnect/index.html');">Virtual Connect</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <hr />
                    </div>
                    <div class="span11">
                        <h2>Storage</h2>
                        <ul class="thumbnails">
                            <li>
                                <div class="row-fluid">
                                    <div class="span3">
                                        <a href="#" class="thumbnail">
                                            <img src="../Images/Products/sec-networking-125x94.jpg" />
                                        </a>
                                    </div>
                                    <div class="span8">
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;Unite the tools, processes and architecture of blade server storage and networking to speed time and take costs out today and keep them out tomorrow.</p>
                                        <ul style="list-style: none; padding: 0px; margin: 0px;">
                                            <li><a href="#" onclick="openWindow('http://h18006.www1.hp.com/storage/bladesystem/index.html');">External storage</a></li>
                                            <li><a href="#" onclick="openWindow('http://h18006.www1.hp.com/storage/bladesystem/index.html');">Storage blades</a></li>
                                            <li><a href="#" onclick="openWindow('http://www8.hp.com/us/en/products/tape-drives-enclosures/index.html?facet=Tape-blades');">Tape blades</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="tab-pane" id="solutions">
                <div class="row-fluid">
                    <div class="span11">
                        <ul class="thumbnails">
                            <li>
                                <div class="span4">
                                    <a href="#" class="thumbnail">
                                        <img src="../Images/Products/global.jpg" />
                                    </a>
                                </div>
                                <div class="span8">
                                    <h2>HP Converged Systems</h2>
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;Simplify and extend your blade server infrastructure by integrating hardware, software and services into turnkey systems to harness the full potential of virtualization, cloud and next generation applications.</p>
                                    <ul style="list-style: none; padding: 0px; margin: 0px;">
                                        <li><a href="#" onclick="openWindow('http://www8.hp.com/us/en/enterprise/servers/solutions/virtualization/index.aspx');">Client Virtualization</a></li>
                                        <li><a href="#" onclick="openWindow('http://www8.hp.com/us/en/business-solutions/solution.html?compURI=1246501');">CloudSystem</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(this).ready(function () {
            $("#btnViewBlade").click(function () {
                $("#myTab a:eq(1)").tab("show");
            });
        });
    </script>
</asp:Content>

