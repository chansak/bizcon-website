<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="Server">
    <div style="width: 100%; clear: both; float: none; padding-bottom: 0px">
        <Gadget:Carousel ID="carousel" runat="server" />
    </div>
    <div class="border">
        <div class="container">
            <%--<div class="span12">
                <Gadget:Carousel ID="carousel" runat="server" />
            </div>--%>
            <div class="row">
                <div class="span9">
                    <div id="editCtrl" class="btn-group pull-right" style="margin: 0px">
                        <button class="btn btn-mini"><i class="icon-cog"></i></button>
                        <button class="btn btn-mini dropdown-toggle" data-toggle="dropdown">
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li><a href="#" onclick="page.edit();">Edit Content</a></li>
                        </ul>
                        <div id="btnSaveContent" class="pull-right hide" style="padding-left: 10px">
                            <a href="#" class="btn btn-mini" onclick="page.save('default');">บันทึก</a>
                        </div>
                    </div>
                    <div id="defaultPageContent" class="span9">
                    </div>
                    <div class="span9">
                        <div id="solutions" class="liteAccordion stitch">
                            <ol>
                                <li class="slide">
                                    <h2><span>IT Continuity Solutions</span></h2>
                                    <div class="row">
                                        <div class="span6">
                                            <img src="../Images/Solutions/solution11.jpg" alt="" class="pull-left thumbnail">
                                        </div>
                                        <div class="span5">
                                            <h4 class="media-heading">IT Continuity</h4>
                                            <ol>
                                                <li>Disaster Recovery/HIgh Availability</li>
                                                <li>System Recovery/Backup/Recovery/Archiving</li>
                                                <li>End Point Protection</li>
                                            </ol>
                                            <a href="Solution1.aspx">Read more ...</a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <h2><span>Infrastructure</span></h2>
                                    <div class="row">
                                        <div class="span4">
                                            <img src="../Images/Solutions/solution2.jpg" alt="" class="pull-left thumbnail">
                                        </div>
                                        <div class="span5">
                                            <h4 class="media-heading">Infrastructure</h4>
                                            <ol>
                                                <li>Data Center Consolidation</li>
                                                <li>Cloud & Virtualization</li>
                                                <li>Server/Storage Virtualization</li>
                                                <li>Microsoft Infrastructure</li>
                                                <li>Virtual Desktop Infrastructure</li>
                                            </ol>
                                            <a href="Solution2.aspx">Read more ...</a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <h2><span>Network Performance Improvement</span></h2>
                                    <div class="row">
                                        <div class="span4">
                                            <img src="../Images/Solutions/solution3.jpg" alt="" class="pull-left thumbnail">
                                        </div>
                                        <div class="span5">
                                            <h4 class="media-heading">Network Performance Improvement</h4>
                                            <ol>
                                                <li>Applications/Network Visibility</li>
                                                <li>Wide Area Data Service</li>
                                                <li>Bandwidth Management</li>
                                            </ol>
                                            <a href="Solution3.aspx">Read more ...</a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <h2><span>IT Security</span></h2>
                                    <div class="row">
                                        <div class="span4">
                                            <img src="../Images/Solutions/solution4.jpg" alt="" class="pull-left thumbnail">
                                        </div>
                                        <div class="span5">
                                            <h4 class="media-heading">IT Security</h4>
                                            <ol>
                                                <li>Web Application Firewall</li>
                                                <li>New Generation Firewall & VPN</li>
                                                <li>EndPoint Security/Data Loss Prevention</li>
                                            </ol>
                                            <a href="Solution4.aspx">Read more ...</a>
                                        </div>
                                    </div>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="span2">
                    <Gadget:News ID="news" runat="server" />
                </div>
            </div>
        </div>
    </div>
    <script src="../Javascript/Dialog.js"></script>
    <script src="../Javascript/liteaccordion.jquery.js"></script>
    <script type="text/javascript">
        var page = {
            init: function () {
                this.showEditCtrl = false;
            },
            edit: function () {
                //location.href = "default.aspx?mode=edit";
                $("#defaultPageContent").attr("contenteditable", true);
                $("#btnSaveContent").show();
            },
            save: function () {
                PageMethods.Save("default", $("#defaultPageContent").html(), function () {
                    $("#defaultPageContent").attr("contenteditable", false);
                    $("#btnSaveContent").hide();
                }, function (e) {
                    alert(e.message);
                });
            },
            view: function () {
                this.init();
                //set default save button
                $("#btnSaveContent").hide();
                //validate login
                var userId = "<%= CurrentUser.ID %>";
                if (userId == "" || this.showEditCtrl == false) {
                    $("#editCtrl").hide();
                }
                PageMethods.View("default", function (result) {
                    $("#defaultPageContent").html(result);
                }, function () { });
            }
        }
        page.view("default");

        $('#solutions').liteAccordion(
        {
            theme: 'stitch',
            containerWidth: 680,
            containerHeight: 340,
            rounded: true,
            enumerateSlides: true,
            firstSlide: 1,
            linkable: true,
        });

        $(document).ready(function () {
            $("#companyImage").click(function () {
                var size = dialogBox.SelectedSize("video");
                dialogBox.show("../Popup/Default.aspx?mode=video&id=<%# Eval("ID") %>", "Bizcon Solution Grand Opening video.", size.width, size.height, "#000", true)
            });
        });
    </script>
</asp:Content>
