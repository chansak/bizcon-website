<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="pPServer.aspx.cs" Inherits="Pages_pPServer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="Server">
    <div class="border">
        <h1>
            <img src="../Images/Partners/hp-logo.gif" />&nbsp;ProLiant Servers</h1>
        &nbsp;&nbsp;&nbsp;&nbsp;The world's most intelligent servers, including rack and tower servers, server blades, and scalable systems.
        <div class="tabbable">
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
                                                <img src="../Images/Products/promo-proliant-gen8-servers-212x120.jpg" />
                                            </a>
                                        </div>
                                        <div class="span6">
                                            <h4>HP ProLiant Gen8 Servers</h4>
                                            <p>&nbsp;&nbsp;&nbsp;&nbsp;Just got faster, smarter and more efficient</p>
                                            <a href="#">Learn about new ProLiant Gen8 enhancements and support for the latest Intel® Xeon® Processors</a>
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
                                                <img src="../Images/Products/promo-proliant-VMmark-212x120.jpg" />
                                            </a>
                                        </div>
                                        <div class="span6">
                                            <h4>One, two, three … sweep!</h4>
                                            <p>&nbsp;&nbsp;&nbsp;&nbsp;HP ProLiant achieves #1 2P,4P and 8P virtualization performance on VMmark 2.x benchmark</p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <h2>What is an intelligent server?</h2>
                        <div class="span8">
                            <p>
                                &nbsp;&nbsp;&nbsp;&nbsp;An intelligent server transforms the economics and expectations of the data center.
The newest generation of ProLiant servers provides you the benefit of more than 150 customer driven innovations delivering built-in intelligence and automation across the data center lifecycle.
                            </p>
                            <a href="#" id="btnView" class="btn btn-success btn-large">View ProLiant Products</a>
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
                            <div class="accordion" id="accordion2">
                                <div class="accordion-group">
                                    <div class="accordion-heading">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
                                            <i class="icon-ok-circle"></i>
                                            HP ProLiant Rack Server
                                        </a>

                                    </div>
                                    <div id="collapseOne" class="accordion-body collapse in">
                                        <div class="span12">
                                            <div id="myPager" class="pagination pagination-mini pagination-right"></div>
                                        </div>
                                        <div class="accordion-inner">
                                            <div class="pages">
                                                <div class="page">
                                                    <div class="row-fluid">
                                                        <div id="group1" class="span7 thumbnail">
                                                            <img class="previewImg" />
                                                            <ul class="thumbnails">
                                                                <li>
                                                                    <img src="../Images/Products/ProLiant/group1/c03296460.png" class="thumbnail" width="50" height="50" onclick="swapImg.swap('group1',this);" />
                                                                </li>
                                                                <li>
                                                                    <img src="../Images/Products/ProLiant/group1/c03296535.png" class="thumbnail" width="50" onclick="swapImg.swap('group1',this);" height="50" />
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="span5">
                                                            <h2>HP ProLiant DL300 Servers</h2>
                                                            <h2>HP ProLiant DL320e Gen8 Server</h2>
                                                            <p>&nbsp;&nbsp;&nbsp;&nbsp;HP ProLiant DL320e Gen8, a single-socket 1U rack server, delivers affordable and yet powerful performance while providing essential features for varied computing needs. It is ideal for enterprise data centers and service providers requiring a low-cost server to run single dedicated/IT applications, web and edge-of-network applications.</p>
                                                        </div>
                                                    </div>
                                                    <div class="row-fluid">
                                                        <div class="span11">
                                                            <div class="tabbable">
                                                                <ul class="nav nav-tabs" id="tabgroup1">
                                                                    <li class="active"><a href="#group1_1" data-toggle="tab">Overview</a></li>
                                                                    <li><a href="#group1_2" data-toggle="tab">Specification</a></li>
                                                                </ul>
                                                                <div class="tab-content">
                                                                    <div class="tab-pane active" id="group1_1">
                                                                        <h2>What's New</h2>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>50% increase in internal storage capacity (up to 12TB)</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Improved memory performance with HP SmartMemory</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Simplified IT management with HP iLO Management Engine (iLO4)</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Save IT expenses with 94% Platinum Plus power efficiency options</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Enhanced serviceability with fast access PCIe riser solutions</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2>Features</h2>
                                                                        <h3>Affordable, Powerful and Flexible to Meet Your Varied Computing Needs</h3>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Offers a range of processor options to meet your varied computing needs, including the latest Intel Xeon E3-1200 v2 product family processor technology, up to 3.7GHz, 4 core.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP SmartMemory for improved workload performance supporting up to 4 DDR3 1600 MHz UDIMMs (32GB max).</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP SmartDrives offer more drive options including 8 SFF and 4 LFF drive cages giving you flexibility for increased capacity for your local storage. Supporting up to 3TB with LFF.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Maximum I/O performance with 2 PCI Express (PCIe) slots, including 1 PCIe Gen 3 slot, and 7 USB ports.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <h3>Maximize System Uptime with Built-in Gen8 Technologies</h3>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP SmartMemory prevents data loss and downtime with enhanced error handling while improving workload performance and power efficiency.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP SmartDrive technology improves serviceability and prevents data loss with features such as icon-based status display and Do Not Remove LED.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP Smart Array options provide businesses RAID mirroring and striping capability to protect critical data while Flash-backed write cache (FBWC) captures and holds data indefinitely in the event of a power loss, equipment failure, human error or virus attacks.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Redundant PSU and storage options allow for more security and essential data backup.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <h3>Unlock your Infrastructure’s Potential with HP’s Easy-to-Use Integrated Management and Support</h3>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP iLO Management Engine is a complete set of embedded features, standard on all ProLiant Gen8 servers. Includes HP iLO, HP Agentless Management, HP Active Health System, HP Intelligent Provisioning, and HP Embedded Remote Support.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP Insight Control provides advanced management capabilities across the lifecycle of your HP ProLiant server infrastructure. HP iLO Advanced, a key component, provides enhanced remote server functions that reduce IT travel costs, while increasing Time-To-Resolution.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP Insight Online with HP Insight Remote Support provides 24X7 remote monitoring and anywhere, anytime personalized access to your IT and support status.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP SmartUpdate reduces deployment time and update complexity by systematically updating server infrastructure in the data center. Includes HP Smart Update Manager (HP SUM), and Service Pack for ProLiant (SPP), and other products.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <h3>Energy Efficiency for Power Savings and a Green Environment</h3>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Standard power supply provides 85% efficiency while redundant power supply options provide up to 94% efficiency (Platinum Plus). The redundant power supply options support HP's Power Discovery Services.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>First in industry to include 3D array of temperature sensors to help precisely control server fans to direct cooling and reduce unnecessary fan power, saving on cooling costs.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>ENERGY STAR® qualified server configurations illustrate HP’s continued commitment to helping customers conserve energy and save money.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                    </div>
                                                                    <div class="tab-pane" id="group1_2">
                                                                        <h2>System Features</h2>
                                                                        <dl>
                                                                            <dt>Processor family<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>Intel® Xeon® E3-1200v2 product family; Intel® Core™ i3; Intel® Pentium®</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Number of processors<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>1</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Processor core available<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>4 or 2</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Form factor (fully configured)<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>1U</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Power supply type<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>(1) Multi-output</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Expansion slots<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>(2) Maximum - For detail descriptions reference the QuickSpec</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2>Memory</h2>
                                                                        <dl>
                                                                            <dt>Memory, maximum<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>32GB</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Memory slots<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>4 DIMM slots; Maximum</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Memory type<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>DDR3 UDIMM</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2>Storages</h2>
                                                                        <dl>
                                                                            <dt>Drive description<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>(4) LFF SAS/SATA/SSD or; (8) SFF SAS/SATA/SSD; Hot plug and/or Non-hot plug, depending on model</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2>Controller Card</h2>
                                                                        <dl>
                                                                            <dt>Network controller<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>1Gb 330i Ethernet Adapter 2 Ports per controller; Applicable to all models</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Storage controller<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>Dynamic Smart Array B120i or; Smart Array P222; Depending on model</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2>Security Management</h2>
                                                                        <dl>
                                                                            <dt>Infrastructure management<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>iLO Management Engine, Insight Control</span>
                                                                            </dd>
                                                                        </dl>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="page">
                                                    <div class="row-fluid">
                                                        <div id="group2" class="span7 thumbnail">
                                                            <img class="previewImg" />
                                                            <ul class="thumbnails">
                                                                <li>
                                                                    <img src="../Images/Products/ProLiant/group2/c03383867.png" class="thumbnail" width="50" height="50" onclick="swapImg.swap('group2',this);" />
                                                                </li>
                                                                <li>
                                                                    <img src="../Images/Products/ProLiant/group2/c03383894.png" class="thumbnail" width="50" onclick="swapImg.swap('group2',this);" height="50" />
                                                                </li>
                                                                <li>
                                                                    <img src="../Images/Products/ProLiant/group2/c03383911.png" class="thumbnail" width="50" height="50" onclick="swapImg.swap('group2',this);" />
                                                                </li>
                                                                <li>
                                                                    <img src="../Images/Products/ProLiant/group2/c03383919.png" class="thumbnail" width="50" onclick="swapImg.swap('group2',this);" height="50" />
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="span5">
                                                            <h2>HP ProLiant DL500 Servers</h2>
                                                            <h2>HP ProLiant DL560 Gen8 Server</h2>
                                                            <p>&nbsp;&nbsp;&nbsp;&nbsp;The HP ProLiant DL560 Gen8 server, latest server in the ProLiant Scale-up x86 portfolio, that redefines density-optimized 4-socket rack server technology without compromising on performance, scalability, and expandability. Built on the latest Gen8 innovative and intuitive hardware and software features and supporting the new high-density and cost effective Intel® Xeon® E5-4600 processors, the DL560 Gen8 is ideal for virtualization, server consolidation, database, business processing, and general 4P data-intensive applications where optimization of data center space and price/performance is paramount.</p>
                                                        </div>
                                                    </div>
                                                    <div class="row-fluid">
                                                        <div class="span11">
                                                            <div class="tabbable">
                                                                <ul class="nav nav-tabs" id="Ul1">
                                                                    <li class="active"><a href="#group2_1" data-toggle="tab">Overview</a></li>
                                                                    <li><a href="#group2_2" data-toggle="tab">Specification</a></li>
                                                                </ul>
                                                                <div class="tab-content">
                                                                    <div class="tab-pane active" id="group2_1">
                                                                        <h2>What's New</h2>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>ROI in less than 3 months with the HP ProLiant DL560 Gen8 server&#13;
August 2012. Based on internal HP testing and calculations</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Leading 4P VMmark 2.1.1 performance record score of 18.75@18 tiles &#13;
Sept 2012. http://h20195.www2.hp.com/v2/GetPDF.aspx/4AA4-3968ENW</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Gain flexibility and I/O throughput with up to six (6) PCIe 3.0 expansion slots</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Increased performance and memory capacity of up to 1.5TB with HP SmartMemory</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>New FlexibleLOM technology provides a choice in networking with 1Gb or 10Gb NICs, CNA, SFP+, FCoE or InfiniBand options</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2 xmlns="http://www.w3.org/1999/xhtml" class="group_head">Features</h2>
                                                                        <h3 align="left">Ideal 4S/2U Dense Form Factor without Compromising on Performance, Scalability, and Expandability</h3>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Providing 4S computing in a dense 2U form factor, the ProLiant DL560 supports up to four cost-effective Intel® Xeon® E5-4600 processors each up to 8 cores and 130 watts without system configuration restrictions.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP Smart Storage technology is designed to remove storage bottlenecks and turbo-charge data-intensive application performance to accelerate workloads. Support for the HP Smart Array P420i RAID controller with optional 512MB Flash Backed Write Cache.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Up to six PCIe 3.0 expansion slots (3 x16), this technology supports the highest performing option cards now and into the future and provides improved latency of up to 400% the bandwidth per I/O expansion slot compared to G7 servers.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP FlexibleLOM provides you a choice of networking bandwidth and fabric so you can adapt to changing business needs.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP SmartMemory prevents data loss and downtime with enhanced error handling while improving workload performance and power efficiency. Support for 48 DDR3-DIMM sockets for up to 1.5TB max capacity.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <h3 align="left">Redefining the Customer Experience with HP ProActive Insight architecture</h3>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Redefining the Customer Experience with HP ProActive Insight architecture 
User-inspired design features that prevent data loss, reduce downtime, and improve serviceability include HP SmartDrives, "Snap and Go" rail kit options, and tool-less access to components.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Integrated Lifecycle Automation provides intuitive system management with simplified provisioning, proactive health monitoring and alerting, and automated firmware and system software maintenance.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Dynamic Workload Acceleration converges storage, compute, and I/O to turbo-charge performance and resiliency while eliminating bottlenecks.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Automated Energy Optimization reclaims space, power, and cooling resources needed for workloads and extends your data center capacity.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP proactive support services enable industry leading performance, uptime and productivity integrated into a personalized, simplified support experience.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <h3 align="left">Unlock your Infrastructure’s Potential with HP’s Easy-to-Use Integrated Management and Support</h3>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP iLO Management Engine is a complete set of embedded features, standard on all ProLiant Gen8 servers. Includes HP iLO, HP Agentless Management, HP Active Health System, HP Intelligent Provisioning, and HP Embedded Remote Support.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP Insight Control provides advanced management capabilities across the lifecycle of your HP ProLiant server infrastructure. HP iLO Advanced, a key component, provides enhanced remote server functions that reduce IT travel costs, while increasing Time-To-Resolution.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP Insight Online with HP Insight Remote Support provides 24X7 remote monitoring and anywhere, anytime personalized access to your IT and support status.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP SmartUpdate reduces deployment time and update complexity by systematically updating server infrastructure in the data center. Includes HP Smart Update Manager (HP SUM), and Service Pack for ProLiant (SPP), and other products.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                    </div>
                                                                    <div class="tab-pane" id="group2_2">
                                                                        <h2>System Features</h2>
                                                                        <dl>
                                                                            <dt>Processor family<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>Intel® Xeon® E5-4600 product family</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Number of processors<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>4 or 2</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Processor core available<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>8 or 6 or 4</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Form factor (fully configured)<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>2U</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Power supply type<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>(2) Common Slot</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Expansion slots<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>(6) Maximum - For detail descriptions reference the QuickSpec</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2>Memory</h2>
                                                                        <dl>
                                                                            <dt>Memory, maximum<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>1.5TB</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Memory slots<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>48 DIMM slots; Maximum</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Memory type<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>DDR3 RDIMM</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2>Storages</h2>
                                                                        <dl>
                                                                            <dt>Drive description<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>(5) SFF SAS/SATA/SSD; Hot plug, depending on model</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2>Controller Card</h2>
                                                                        <dl>
                                                                            <dt>Network controller<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>1Gb 331FLR Ethernet Adapter 4 Ports per controller or; 10Gb 530FLR-SFP+ Ethernet Adapter 2 Ports per controller; Depending on model</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Storage controller<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>Smart Array P420i; Applicable to all models</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2>Security Management</h2>
                                                                        <dl>
                                                                            <dt>Infrastructure management<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>iLO Management Engine, Insight Control</span>
                                                                            </dd>
                                                                        </dl>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="page">
                                                    <div class="row-fluid">
                                                        <div id="group3" class="span7 thumbnail">
                                                            <img class="previewImg" />
                                                            <ul class="thumbnails">
                                                                <li>
                                                                    <img src="../Images/Products/ProLiant/group3/c03293698.png" class="thumbnail" width="50" height="50" onclick="swapImg.swap('group3',this);" />
                                                                </li>
                                                                <li>
                                                                    <img src="../Images/Products/ProLiant/group3/c03293836.png" class="thumbnail" width="50" onclick="swapImg.swap('group3',this);" height="50" />
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="span5">
                                                            <h2>HP ProLiant DL300 Servers</h2>
                                                            <h2>HP ProLiant DL380e Gen8 Server</h2>
                                                            <p>&nbsp;&nbsp;&nbsp;&nbsp;HP ProLiant DL380e Gen8, a dual-socket 2U rack server, offers unprecedented performance, flexibility, manageability, and serviceability suitable to SMBs and enterprise customers. It is ideal for datacenters looking for essential flexibility and expandability to meet their compute and storage needs.</p>
                                                        </div>
                                                    </div>
                                                    <div class="row-fluid">
                                                        <div class="span11">
                                                            <div class="tabbable">
                                                                <ul class="nav nav-tabs" id="Ul2">
                                                                    <li class="active"><a href="#group3_1" data-toggle="tab">Overview</a></li>
                                                                    <li><a href="#group3_2" data-toggle="tab">Specification</a></li>
                                                                </ul>
                                                                <div class="tab-content">
                                                                    <div class="tab-pane active" id="group3_1">
                                                                        <h2>What's New</h2>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Great choice of hardware and software-based controller options</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Double memory capacity with up to 12 DDR3 1600 MHz slots (up to 384GB)</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Simplified IT management with HP iLO Management Engine (iLO4)</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Easy installation with sliding ball-bearing rails that snap in place</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Enhanced serviceability with fast access PCIe riser solutions, clear air baffle, improved cable management, and HP Smart Socket guides</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2 xmlns="http://www.w3.org/1999/xhtml" class="group_head">Features</h2>
                                                                        <h3 align="left">Redefining the Customer Experience with HP ProActive Insight architecture</h3>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>User-inspired design features that prevent data loss, reduce downtime, and improve serviceability include HP SmartDrives, HP Smart Socket guides, "Snap and Go" rail kit options, and tool-less access to components.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Integrated Lifecycle Automation provides intuitive system management with simplified provisioning, proactive health monitoring and alerting, and automated firmware and system software maintenance.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Dynamic Workload Acceleration converges storage, compute, and I/O to turbo-charge performance and resiliency while eliminating bottlenecks.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Automated Energy Optimization reclaims space, power, and cooling resources needed for workloads and extends your data center capacity.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <h3 align="left">Unlock your Infrastructure’s Potential with HP’s Easy-to-Use Integrated Management and Support</h3>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP iLO Management Engine is a complete set of embedded features, standard on all ProLiant Gen8 servers. Includes HP iLO, HP Agentless Management, HP Active Health System, HP Intelligent Provisioning, and HP Embedded Remote Support.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP Insight Control provides advanced management capabilities across the lifecycle of your HP ProLiant server infrastructure. HP iLO Advanced, a key component, provides enhanced remote server functions that reduce IT travel costs, while increasing Time-To-Resolution.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP Insight Online with HP Insight Remote Support provides 24X7 remote monitoring and anywhere, anytime personalized access to your IT and support status.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP SmartUpdate reduces deployment time and update complexity by systematically updating server infrastructure in the data center. Includes HP Smart Update Manager (HP SUM), and Service Pack for ProLiant (SPP), and other products.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <h3 align="left">Improved Application, Storage, and I/O Performance</h3>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP SmartMemory prevents data loss and downtime with enhanced error handling while improving workload performance and power efficiency. Support for RDIMMs, LRDIMMs, and UDIMMs with up to 384GB max capacity.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Support for HP SmartStorage including PCIe 3.0, HP SmartDrives, and HP Flash Backed Write Cache with capacity up to 2GB. Choice of up to twenty seven (27) 2.5-inch SFF or fourteen (14) 3.5-inch LFF SAS, SATA, SSD drives with optical media.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP Smart Storage technology is designed to remove storage bottlenecks and turbo-charge data-intensive application performance to accelerate workloads.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <h3 align="left">Built for Performance, Efficiency and Easier Access</h3>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>ENERGY STAR® qualified server configurations illustrate HP’s continued commitment to helping customers conserve energy and save money.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>“Snap and Go” rack rails reduce friction with high quality ball-bearing design allowing for quick access to the server while an ambidextrous options allow for better cabling management.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>First in industry to include 3D array of temperature sensors to help precisely control server fans to direct cooling and reduce unnecessary fan power, saving on cooling costs.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>High efficiency 80+ certified HP Common Slot Power Supplies provide up to 94% efficiency (Platinum) and support HP’s Power Discovery Services.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Intel® Xeon® processor E5-2400 product family offers best price performance compute and memory; essential for everyday business needs.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                    </div>
                                                                    <div class="tab-pane" id="group3_2">
                                                                        <h2>System Features</h2>
                                                                        <dl>
                                                                            <dt>Processor family<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>Intel® Xeon® E5-2400 product family</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Number of processors<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>2 or 1</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Processor core available<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>8 or 6 or 4</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Form factor (fully configured)<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>2U</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Power supply type<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>(2) Common Slot</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Expansion slots<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>(6) For detail descriptions reference the QuickSpec</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2>Memory</h2>
                                                                        <!--begin spec mapping-->
                                                                        <dl>
                                                                            <dt>Memory, maximum<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>384GB</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Memory slots<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>12 DIMM slots; Maximum, depending on model</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Memory type<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>DDR3 RDIMM, LRDIMM, or UDIMM, depending on model</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2>Storages</h2>
                                                                        <dl>
                                                                            <dt>Drive description<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>(14) LFF SAS/SATA/SSD or; (27) SFF SAS/SATA/SSD; Hot plug, depending on model</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2>Controller Card</h2>
                                                                        <dl>
                                                                            <dt>Network controller<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>1Gb 366i Ethernet Adapter 4 Ports per controller; Applicable to all models</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Storage controller<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>Dynamic Smart Array B120i or; Dynamic Smart Array B320i or; Smart Array P420; Depending on model</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2>Security Management</h2>
                                                                        <dl>
                                                                            <dt>Infrastructure management<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>iLO Management Engine, Insight Control</span>
                                                                            </dd>
                                                                        </dl>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="page">
                                                    <div class="row-fluid">
                                                        <div id="group4" class="span7 thumbnail">
                                                            <img class="previewImg" />
                                                            <ul class="thumbnails">
                                                                <li>
                                                                    <img src="../Images/Products/ProLiant/group4/c03690337.png" class="thumbnail" width="50" height="50" onclick="swapImg.swap('group4',this);" />
                                                                </li>
                                                                <li>
                                                                    <img src="../Images/Products/ProLiant/group4/c03690338.png" class="thumbnail" width="50" onclick="swapImg.swap('group4',this);" height="50" />
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="span5">
                                                            <h2>HP ProLiant DL900 Servers</h2>
                                                            <h2>HP ProLiant DL980 G7 Server</h2>
                                                            <p>&nbsp;&nbsp;&nbsp;&nbsp;HP ProLiant DL980 G7, featuring HP's PREMA Architecture delivers the balanced scaling, self-healing resiliency and breakthrough efficiency needed to overcome the challenges of today's most demanding x86 compute environments. Whether implementing a single and very large data intensive, or many consolidated or virtualized workloads, the DL980 G7 server is an ideal platform to deploy and scale up your Enterprise environments with confidence. </p>
                                                        </div>
                                                    </div>
                                                    <div class="row-fluid">
                                                        <div class="span11">
                                                            <div class="tabbable">
                                                                <ul class="nav nav-tabs" id="Ul3">
                                                                    <li class="active"><a href="#group4_1" data-toggle="tab">Overview</a></li>
                                                                    <li><a href="#group4_2" data-toggle="tab">Specification</a></li>
                                                                </ul>
                                                                <div class="tab-content">
                                                                    <div class="tab-pane active" id="group4_1">
                                                                        <h2>What's New</h2>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Smart CPU Caching technology improves CPU utilization and performance</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Self-healing resiliency maximizes application uptime</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Intel Xeon E7-4800and 7500 series processors with up to 10 cores per processor</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Expandable 8 socket server configurable with up to 80 processor cores</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>128 DIMM slots, for a system maximum of 2TB of memory (using 16GB DIMMs), capable of 4TB with 32GB DIMMs in future</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Up to 16 I/O slots to support the most I/O intensive applications</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2 xmlns="http://www.w3.org/1999/xhtml" class="group_head">Features</h2>
                                                                        <h3 align="left">Balanced scaling delivers world-leading performance</h3>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Streamline CPU utilization and performance with HP's smart CPU caching technology which enables, the processor(s) to remain focused on its task with less interruptions, resulting in faster job completion</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Efficiently use compute and memory resources with HP's scalable design supporting up to 8 processors / 80 processor cores, 128 DDR3 DIMM slots for a memory maximum of 2 TB, capable of 4TB with 32GB DIMMs in the future and up to 16 I/O slots</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <h3 align="left">Self healing resiliency delivers up to a 200% boost in reliability</h3>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Reduce communication errors on overloaded systems with HP’s PREMA Architecture, providing 50% more interconnect capacity and dynamic QPI routing</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Achieve a highly reliable scale up infrastructure combining mission critical and x86 technologies and expertise from an industry leader in both</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Hot plug redundant fans and power supplies</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <h3 align="left">Breakthrough efficiencies deliver payback in as little as 60 days</h3>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Consolidate multiple resource intensive servers on to a single system to achieve up to 96% reduction in power and cooling costs</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Reduce, reclaim and extend the life of your data center with HP Thermal Logic technologies and triple your datacenter capacity</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Aggressively respond with HP iLO3 (part of Insight Control) remote console management that operates 8x faster than the previous version</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Free up operational dollars, speed up project success and increase levels of application availability with HP Mission Critical Services</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>In depth technical collaboration between HP and key industry partners speeds time to deployment of application on the DL980 G7</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                    </div>
                                                                    <div class="tab-pane" id="group4_2">
                                                                        <h2>System Features</h2>
                                                                        <dl>
                                                                            <dt>Processor family<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>Intel® Xeon® E7-4800 product family; Intel® Xeon® E7-2800 product family</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Number of processors<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>8 or 4</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Processor core available<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>10 or 8 or 6 or 4</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Form factor (fully configured)<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>8U</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Power supply type<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>(8) Redundant standard on performance models, optional on entry and base models Common Slot</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Expansion slots<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>(16) Maximum - For detail descriptions reference the QuickSpec</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2>Memory</h2>
                                                                        <dl>
                                                                            <dt>Memory, maximum<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>4TB</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Memory slots<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>128 DIMM slots; Maximum</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Memory type<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>DDR3 RDIMM</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2>Storage</h2>
                                                                        <dl>
                                                                            <dt>Drive description<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>(8) SFF SAS/SSD; Hot plug, depending on model</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2>Network Controller Card</h2>
                                                                        <dl>
                                                                            <dt>Network controller<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>1Gb NC375i Multifunction Ethernet Adapter 4 Ports per controller; Applicable to all models</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Storage controller<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>Smart Array P410i; Applicable to all models</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2>Security Management</h2>
                                                                        <dl>
                                                                            <dt>Infrastructure management<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>Lights-Out100 (Standard), HP Insight Control (Optional)</span>
                                                                            </dd>
                                                                        </dl>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="page">
                                                    <div class="row-fluid">
                                                        <div id="group5" class="span7 thumbnail">
                                                            <img class="previewImg" />
                                                            <ul class="thumbnails">
                                                                <li>
                                                                    <img src="../Images/Products/ProLiant/group5/c02604907.png" class="thumbnail" width="50" height="50" onclick="swapImg.swap('group5',this);" />
                                                                </li>
                                                                <li>
                                                                    <img src="../Images/Products/ProLiant/group5/c02660609.png" class="thumbnail" width="50" onclick="swapImg.swap('group5',this);" height="50" />
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="span5">
                                                            <h2>HP ProLiant DL500 Servers</h2>
                                                            <h2>HP ProLiant DL580 G7 Server</h2>
                                                            <p>&nbsp;&nbsp;&nbsp;&nbsp;Traditionally, mission-critical RAS (Reliability, Availability and Serviceability) features have been associated with RISC (Reduced Instruction Set Computing) systems. HP has designed an eco-system of RAS functionalities that has raised the bar for the HP ProLiant DL580 G7 Server series. The DL580 G7 continues to deliver best-in-class HP performance, manageability, and reliability features with the latest Intel processor technology and it is the ideal choice for customers that are ready to deploy large databases that require scale-up compute processing, large memory and I/O intensive applications.</p>
                                                        </div>
                                                    </div>
                                                    <div class="row-fluid">
                                                        <div class="span11">
                                                            <div class="tabbable">
                                                                <ul class="nav nav-tabs" id="Ul4">
                                                                    <li class="active"><a href="#group5_1" data-toggle="tab">Overview</a></li>
                                                                    <li><a href="#group5_2" data-toggle="tab">Specification</a></li>
                                                                </ul>
                                                                <div class="tab-content">
                                                                    <div class="tab-pane active" id="group5_1">
                                                                        <h2>What's New</h2>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Flexible technologies provides customer choice in networking with either a Broadcom or Qlogic solution</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2 xmlns="http://www.w3.org/1999/xhtml" class="group_head">Features</h2>
                                                                        <h3 align="left">Outstanding Performance and Scalability</h3>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Flexible technologies provides customer choice in networking with either a Broadcom or Qlogic solution.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>I/O expansion capabilities, the latest 10 core Intel processors, expandable DDR3 memory enables growing scaling up IT infrastructure as the business grows.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>The HP 4S architecture, new memory landscape of 2TB, 10Gb NIC upgrade option, up to 11 I/O slots and industry leading management solutions make this system ideal for virtualization.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>High performing Intel® Xeon® processor E7-4800 and 7500 series, faster memory access, higher network and I/O bandwidths enables the DL580 G7 for critical applications and workloads.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <h3 align="left">Advanced Reliability and Availability</h3>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Double Device Data Correction - DDDC (Ready), this feature extends the capability to withstand failures in two x4 DRAM devices. DDDC can fix both single-and double-DRAM device memory errors.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>Standard hot plug redundant fans (3+1) and common-slot power supplies add high availability in the system.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>The latest flash backed write cache technology provides indefinite cache data retention as compared to two days retention with battery backed write cache in earlier generations.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP Insight Control helps administrators manage health proactively and in addition to new features like HP Memory Quarantine (which requires OS support), based on Intel's Machine Check Architecture (MCA) recovery, it empowers the DL580 G7 to be more resistant to errors in virtual environments.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <h3 align="left">Industry Leading Management Solution</h3>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP Insight Control measures, meters and caps power usage on individual and groups of servers to optimize power usage, driving significant gains to data center capacity.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP Insight Control now provides the ability to watch recorded boot and failure sequences, remote power on and power off, thereby enabling customers to dramatically reduce troubleshooting time, cost, and travel expenses. Functionality is provided by iLO Advanced.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>With HP Insight Control, you can reduce unplanned downtime by up to 77%.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <h3 align="left">HP Converged Infrastructure Approach</h3>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>HP is the only company to offer a full portfolio of standards-based, integrated solutions and services developed specifically to solve the complexities of the data center.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dd>
                                                                                <ul>
                                                                                    <li>By simplifying, integrating and automating technology, Converged Infrastructure accelerates outcomes that matter with: faster time to revenue; lower acquisition and implementation costs; flexibly respond to business changes and lower risks.</li>
                                                                                </ul>
                                                                            </dd>
                                                                        </dl>
                                                                    </div>
                                                                    <div class="tab-pane" id="group5_2">
                                                                        <h2>System Features</h2>
                                                                        <dl>
                                                                            <dt>Processor family<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>Intel® Xeon® E7-4800 product family; Intel® Xeon® 7500 series</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Number of processors<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>4 or 2</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Processor core available<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>10 or 8 or 6 or 4</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Form factor (fully configured)<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>4U</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Power supply type<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>(4) Common Slot</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Expansion slots<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>(11) Maximum - For detail descriptions reference the QuickSpec</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2>Memory</h2>
                                                                        <dl>
                                                                            <dt>Memory, maximum<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>2TB</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Memory slots<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>64 DIMM slots; Maximum</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Memory type<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>DDR3 RDIMM</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2>Stoarage</h2>
                                                                        <dl>
                                                                            <dt>Drive description<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                        </dl>
                                                                        <h2>Controller Cards</h2>
                                                                        <dl>
                                                                            <dt>Network controller<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>1Gb NC375i Multifunction Ethernet Adapter 4 Ports per controller or; 1Gb 331i Ethernet Adapter 4 Ports per controller; Depending on model</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <dl>
                                                                            <dt>Storage controller<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>Smart Array P410i; Applicable to all models</span>
                                                                            </dd>
                                                                        </dl>
                                                                        <h2>Security management</h2>
                                                                        <dl>
                                                                            <dt>Infrastructure management<span class="delimitor">:</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <span>Lights-Out100 (Standard), HP Insight Control (Optional)</span>
                                                                            </dd>
                                                                        </dl>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <a href="#" class="btn btn-info" onclick="openWindow('http://www8.hp.com/us/en/products/proliant-servers/index.html?facet=ProLiant-DL-Rack');">Learn more about HP Rack Server</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-group">
                                    <div class="accordion-heading">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
                                            <i class="icon-ok-circle"></i>
                                            HP ProLiant Tower Server
                                        </a>
                                    </div>
                                    <div id="collapseTwo" class="accordion-body collapse">
                                        <div class="accordion-inner">
                                            <p>&nbsp;&nbsp;&nbsp;&nbsp;Expandable tower servers ideal for remote and branch offices and growing businesses.</p>
                                            <a href="#" class="btn btn-info" onclick="openWindow('http://www8.hp.com/us/en/products/proliant-servers/index.html?facet=ProLiant-ML-Tower');">Shop for HP ProLiant Tower Servers now</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-group">
                                    <div class="accordion-heading">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">
                                            <i class="icon-ok-circle"></i>
                                            HP ProLiant Micro Server
                                        </a>
                                    </div>
                                    <div id="collapseThree" class="accordion-body collapse">
                                        <div class="accordion-inner">
                                            <p>&nbsp;&nbsp;&nbsp;&nbsp;Ideal entry-level server with essential features for small business and departmental use.</p>
                                            <a href="#" class="btn btn-info" onclick="openWindow('http://www8.hp.com/us/en/products/proliant-servers/index.html?facet=ProLiant-MicroServer');">Shop for HP ProLiant Micro Servers now</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-group">
                                    <div class="accordion-heading">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseFour">
                                            <i class="icon-ok-circle"></i>
                                            HP ProLiant Scaleable Server
                                        </a>
                                    </div>
                                    <div id="collapseFour" class="accordion-body collapse">
                                        <div class="accordion-inner">
                                            <p>&nbsp;&nbsp;&nbsp;&nbsp;Purpose-built for scale for service providers, high performance computing, big data, and more, delivering rapid deployment, greater agility and lower operational cost.</p>
                                            <a href="#" class="btn btn-info" onclick="openWindow('http://h17007.www1.hp.com/us/en/enterprise/servers/proliant/scalable/index.aspx');">Shop for Scaleable Server now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
                                            <img src="../Images/Products/spat-mgmt-200x160.jpg" />
                                        </a>
                                    </div>
                                    <div class="span8">
                                        <h2>HP Client Virtualization solutions</h2>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;HP can help you deploy an advanced client virtualization solution that securely and cost-effectively supports the mobile workforce and BYOD-delivered as a complete reference architecture based on HP servers, storage, networking, and services. HP offers both enterprise and midsized customizable solutions that are tightly integrated with Citrix XenDesktop, Citrix VDI-in-a-Box, Microsoft Windows 2012, and VMware View.</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="span11">
                            <ul class="thumbnails">
                                <li>
                                    <div class="span8">
                                        <h2>High Performance Computing (HPC)</h2>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;HP ProLiant Servers deliver innovation at any scale and for any workload. Solutions are purpose-built and engineered for high-performance computing from mainstream applications to the grandest scientific challenges across a multitude of industries.</p>
                                    </div>
                                    <div class="span4">
                                        <a href="#" class="thumbnail">
                                            <img src="../Images/Products/high-performance-200x160.png" />
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="span11">
                            <ul class="thumbnails">
                                <li>
                                    <div class="span4">
                                        <a href="#" class="thumbnail">
                                            <img src="../Images/Products/spat-converged-200x160.jpg" />
                                        </a>
                                    </div>
                                    <div class="span8">
                                        <h2>HP Converged Systems</h2>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;HP Converged Systems deliver a systematic approach to optimize application performance and standardize IT operations across the data center with a common architecture, management and security model.</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="span11">
                            <ul class="thumbnails">
                                <li>
                                    <div class="span8">
                                        <h2>HP CloudSystem Matrix</h2>
                                        <p>
                                            &nbsp;&nbsp;&nbsp;&nbsp;HP CloudSystem Matrix is the entry-level solution of the CloudSystem portfolio which is ideal for Infrastructure-as-a-Service (IaaS) for private and hybrid cloud environments.
                                        </p>
                                    </div>
                                    <div class="span4">
                                        <a href="#" class="thumbnail">
                                            <img src="../Images/Products/spat-matrix-200x160.jpg" />
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="span11">
                            <ul class="thumbnails">
                                <li>
                                    <div class="span4">
                                        <a href="#" class="thumbnail">
                                            <img src="../Images/Products/spat-bulletin-200x160.jpg" />
                                        </a>
                                    </div>
                                    <div class="span8">
                                        <h2>Solutions for small and medium business</h2>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;Whether you are just starting your business, building momentum, gaining efficiencies or expanding your business HP has a solution tailored for you. Introducing HP Just Right IT, designed to help you choose from a great range of technology offers across HP Servers, Storage, Networking, Services and Solutions - designed for Small and Mid-sized business.</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../Javascript/bootstrap.min.js"></script>
    <script src="../Javascript/BizconFramework.js"></script>
    <script src="../Javascript/swapImg.js"></script>
    <script src="../Javascript/pagination.js"></script>
    <script type="text/javascript">
        $(function () {
            swapImg.init("group1");
            swapImg.init("group2");
            swapImg.init("group3");
            swapImg.init("group4");
            swapImg.init("group5");
            $(".pages .page").each(function (idx, val) {
                if (idx > 0)
                    $(this).hide();
            });
        });
    </script>
    <script type="text/javascript">
        $(this).ready(function () {
            $("#btnView").click(function () {
                $("#myTab a:eq(1)").tab("show");
            });
            $('#myPager').pagination(5, {
                callback: function (page, component) {
                    $(".pages .page").each(function (idx, val) {
                        if (page == idx)
                            $(this).fadeIn("slow");
                        else
                            $(this).hide();
                    });
                }
            });
        });
    </script>
</asp:Content>

