<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="vSphere.cs" Inherits="Pages_2029a01f_6bba_4176_9df9_5236daa274b5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="Server">
    <div class="border">
        <strong>VMware vSphere ESX and ESXi Info Center</strong>
        <ul class="nav nav-tabs" id="myTab">
            <li class="active"><a href="#overview" data-toggle="tab">Overview</a></li>
            <li><a href="#compare" data-toggle="tab">Compare</a></li>
            <li><a href="#why" data-toggle="tab">Why this product</a></li>
            <li><a href="#migrate" data-toggle="tab">Migrate</a></li>
            <li><a href="#management" data-toggle="tab">Management</a></li>
            <li><a href="#scripting" data-toggle="tab">Scripting</a></li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" id="overview">
                <div class="row-fluid">
                    <div class="span8 divider-right">
                        <strong>Learn About VMware's Most Advanced Hypervisor Architecture</strong>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;vSphere 5.1 is a "bare-metal" hypervisor, meaning it installs directly on top of the physical server and partitions it into multiple virtual machines that can run simultaneously, sharing the physical resources of the underlying server. vSphere delivers industry-leading performance and scalability while setting a new bar for reliability, security and hypervisor management efficiency.</p>
                        <strong>Deploying VMware's Most Advanced Hypervisor Architecture</strong>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;vSphere 5.1 uses the same proven VMkernel to deliver virtualization capabilities, but unlike earlier versions it does not require the overhead of a Linux based console operating system (COS or "Service Console") to perform local management tasks such as executing scripts or installing third party agents. With vSphere 5.1 the COS has been removed, drastically reducing the hypervisor install footprint (less than 150MB vs. 2GB) and moving management functionality from the COS to remote management tools.</p>
                    </div>
                    <div class="span3">
                        <img src="../Images/Products/img-vmware-esxi.jpg" class="thumbnail" />
                    </div>
                </div>
            </div>
            <div class="tab-pane" id="compare">
                <div class="span8 divider">
                    <strong>VMware vSphere Architectures Compared</strong>
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;vSphere ESX Architecture. In the original vSphere ESX architecture, the virtualization kernel (referred to as the VMkernel) was augmented with a management partition known as the console operating system (COS or service console). The primary purpose of the COS was to provide a management interface into the host. Various VMware management agents were deployed in the COS, along with other infrastructure service agents (e.g. name service, time service, logging, etc). In this architecture, many customers deployed other agents from 3rd parties to provide particular functionality, such as hardware monitoring and system management. Furthermore, individual admin users logged into the COS to run configuration and diagnostic commands and scripts.</p>
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;New vSphere ESXi Architecture. In the new vSphere ESXi architecture, the COS has been removed and all of the VMware agents run directly on the VMkernel. Infrastructure services are provided natively through modules included with the VMkernel. Other authorized 3rd party modules , such as hardware drivers and hardware monitoring components, can run in VMkernel as well. Only modules that have been digitally signed by VMware are allowed on the system, creating a tightly locked-down architecture. Preventing arbitrary code from running on the vSphere host greatly improves the security of the system.</p>
                    <div class="span6">
                        <img src="../Images/Products/vsphere_detailed_comparison.gif" class="thumbnail" />
                    </div>
                </div>
                <div class="span3">
                    <div class="thumbnail">
                        <strong>The vSphere Hypervisor Architecture</strong>
                        <p>Learn how vSphere’s innovative architecture operates independently from any general-purpose operating system, offering improved security, increased reliability, and simplified management.</p>
                    </div>
                </div>
            </div>
            <div class="tab-pane" id="why">Why this?</div>
            <div class="tab-pane" id="migrate">...</div>
            <div class="tab-pane" id="management">...</div>
            <div class="tab-pane" id="scripting">...</div>
        </div>
    </div>
    <script src="../Javascript/jquery-1.9.1.min.js"></script>
    <script src="../Javascript/bootstrap.min.js"></script>
</asp:Content>

