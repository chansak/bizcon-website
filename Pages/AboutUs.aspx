<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div style="width: 100%; clear: both; float: none; padding-bottom: 0px">
        <img src="../Images/masthead_services.jpg" />
    </div>
    <div class="border">
        <div id="editCtrl" class="btn-group pull-right" style="margin: 5px">
            <button class="btn btn-mini"><i class="icon-cog"></i></button>
            <button class="btn btn-mini dropdown-toggle" data-toggle="dropdown">
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu">
                <li><a href="#" onclick="page.edit();">Edit Content</a></li>
            </ul>
            <div id="btnSaveContent" class="pull-right hide" style="padding-left:10px">
                <a href="#" class="btn btn-mini" onclick="page.save('default');">บันทึก</a>
            </div>
        </div>
        <div id="defaultPageContent" class="container">
            <%--<div class="span7">
                <img src="../Images/logo.png" />
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>BizCon</strong> (Business Continuity) เกิดจากการร่วมทุนระหว่าง Weng Holding Company Limited">Weng Holding กับ ทีมบุคคลากรด้านไอที ที่มีประสบการณ์กว่า 20 ปี ด้วยประสบการณ์อันยาวนานและนโยบายที่เน้นให้บุคคลากรของ BizCon เพิ่มทักษะและความสามารถด้านเทคนิคตามมาตราฐานของคู่ค้า ที่เป็นผู้นำด้านเทคโนโลยี่ เช่น HP/Microsoft/VMware/Symantec  รวมกับความมั่นคงของ Weng Holding  จึงทำให้ BizCon มีศักยภาพในการทำงาน (ออกแบบ ติดตั้ง และส่งมอบโซลูชั่น) ให้กับลูกค้าด้วยความมั่นใจ และวางใจในเรื่องการให้บริการอย่างต่อเนื่อง เป็นพันธมิตรธุรกิจระยะยาวกับลูกค้า</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ด้วยประสบการณ์ของกลุ่มผู้จัดตั้ง ได้รับการยอมรับจากกลุ่มลูกค้าองค์กรที่มีชื่อเสียง   บริษัท บิสคอน โซลูชัน จำกัด (BizCON Solutions Co Ltd.) มีแนวคิดในการทำธุรกิจเพื่อเป็นผู้นำด้านการให้บริการโซลูชั่นด้านความต่อเนื่องในการทำงานของระบบไอทีแบบครบวงจรที่สามารถตอบสนองความ ต้องการขององค์กรธุรกิจขนาดกลางถึงใหญ่</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ทีมที่เชี่ยวชาญที่มีประสบการณ์ และได้รับประกาศนียบัตรด้ายเทคนิคจากคู่ค้าซึ่งเป็นผู้นำด้านเทคโนโลยี่ ทำให้ลูกค้ามั่นใจว่าบริษัทมีศักยภาพในการดำเนินโครงการและส่งมอบโครงการให้กับลูกค้า สามารถวางใจในเรื่องความมั่นคงในการให้บริการอย่างต่อเนื่อง เป็นพันธมิตรธุรกิจระยะยาวกับลูกค้า</p>
                <img src="../Images/team.png" class="thumbnail" />
                <strong>Weng Holding Company Limited</strong>
                <address>
                    <strong>เป็นบริษัทกลุ่มพานิชชีวะ</strong> ก่อตั้งเมื่อ 8 พฤศจิกายน 2527
                <br />
                    ประธานเจ้าหน้าที่บริหาร (CEO) : คุณเธนศ พานิชชีวะ<br />
                    ชั้น 12 อาคาร พิพัฒนสิน ถนนนราธิวาสราชนครินทร์, ทุ่งมหาเมฆ, สาทร กรุงเทพ 10120  โทร 02 670 6599, แฟ็ก 02 670 6591
                </address>
                <p>URL : <a href="http://www.wenggroup.com/">www.wenggroup.com/</a></p>
                <p>บริษัทในเครือและที่เกี่ยวข้องในธุรกิจต่าง ๆ เช่น </p>
                <ol>
                    <li>ธุรกิจทางยกระดับดอนเมืองโทลเวย์</li>
                    <li>ธุรกิจรับฝากน้ำมัน</li>
                    <li>ธุรกิจรับฝากสินค้า</li>
                    <li>ธุรกิจขนส่งทางบกและทางน้ำ</li>
                    <li>ธุรกิจจำหน่ายวัตถุดิบการผลิตแก้วและกระจก</li>
                    <li>โรงงานผลิตกระดาษ </li>
                    <li>สนามกอล์ฟเกียรติธานีคันทรี่คลับ</li>
                </ol>
            </div>
            <div class="span4">
                <div class="thumbnail">
                    <strong>Vision</strong>
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;เป็นผู้นำด้านการให้คำปรึกษา จัดหา และส่งมอบโซลูชั่นด้านความต่อเนื่องในการทำงานของระบบไอที ให้กับลูกค้าภาคเอกชนขนาดกลางไปจนถึงองค์กรขนาดใหญ่ ด้วยผลิตภัณท์ชั้นแนวหน้า และบริการที่ดีเลิศ</p>
                </div>
                <br />
                <div class="thumbnail">
                    <strong>Mission</strong>
                    <ol>
                        <li>สรรหาไอทีโซลูชั่น ที่บรรลุวัตถุประสงค์การใช้งาน และตอบสนองความต้องการในด้านประสิทธิผลและงบประมาณ</li>
                        <li>พัฒนาบุคคลากรให้มีคุณภาพในเรื่องความรู้สามารถเชื่อมโยงไอทีโซลูชั่น กับประเด็นทางธุรกิจของลูกค้าได้</li>
                    </ol>
                </div>
                <br />
                <div class="thumbnail">
                    <strong>Company Policy</strong>
                    <ol>
                        <li>ดำเนินธุรกิจเป็นผู้ให้คำปรึกษาและจัดหา โซลูชั่นด้านความต่อเนื่องในการทำงานของระบบไอที</li>
                        <li>จัดจำหน่ายสินค้าจาก World Class IT Leader เช่น HP/Microsoft/VMware/Symantec/Riverbed etc.</li>
                        <li>เป็นผู้เชี่ยวชาญในการให้คำปรึกษา ออกแบบ, ติดตั้ง และส่งมอบ ช่วยลูกค้าบรรลุความต้องการในใช้งาน เพื่อให้เกิดผลทางธุรกิจสูงสุด</li>
                        <li>เน้นพัฒนาบุคลากรให้มี Certifications รับรองคุณภาพตามมาตราฐานของคู่ค้า และรักษาบุคลากรเหล่านั้นให้อยู่กับองค์กร</li>
                        <li>มีบริการต่อเนื่องทั้งในระหว่าง และหลังระยะรับประกัน เพื่อเป็น Solutions partner ของลูกค้าในระยะยาว</li>
                    </ol>
                </div>
            </div>--%>
        </div>
    </div>
    <script src="../Javascript/jquery-1.9.1.min.js"></script>
    <script src="../Javascript/bootstrap.min.js"></script>
    <script type="text/javascript">
        var page = {
            init: function () {
                this.showEditCtrl = false;
            },
            edit: function () {
                //location.href = "AboutUs.aspx?mode=edit";
                $("#defaultPageContent").attr("contenteditable", true);
                $("#btnSaveContent").show();
            },
            save: function () {
                PageMethods.Save("aboutus", $("#defaultPageContent").html(), function () {
                    $("#defaultPageContent").attr("contenteditable", false);
                    $("#btnSaveContent").hide();
                }, function (e) { });
            },
            view: function () {
                this.init();
                //set default save button
                $("#btnSaveContent").hide();
                //validate login
                var userId = "<%= CurrentUser.ID %>";
                if (userId == "" || this.showEditCtrl==false)
                    $("#editCtrl").hide();
                PageMethods.View("aboutus", function (result) {
                    $("#defaultPageContent").html(result);
                }, function () { });
            }
        }
        page.view("aboutus");
    </script>
</asp:Content>

