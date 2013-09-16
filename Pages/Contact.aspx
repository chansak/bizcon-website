<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div class="border">
        <div class="container">
            <address>
                <strong>บริษัทบิสคอน โซลูชั่นส์ จำกัด</strong><br>
                ชั้น 12 อาคาร พิพัฒนสิน ถนนนราธิวาสราชนครินทร์, ทุ่งมหาเมฆ, สาทร กรุงเทพ 10120  โทร 02 670 6599, แฟ็ก 02 670 6591
            </address>
            <div class="container-fluid">
                <div class="row-fluid">
                    <div class="span6">
                        <div id="map_canvas" class="thumbnail" style="width: 500px; height: 420px"></div>
                    </div>
                    <div class="span6">
                        <div class="form-horizontal">
                            <div class="control-group">
                                <label class="control-label" for="txtEmail"><strong>E-mail</strong></label>
                                <div class="controls">
                                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><asp:RequiredFieldValidator ControlToValidate="txtEmail" ErrorMessage="*" runat="server"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ErrorMessage="*"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="txtName"><strong>ชื่อ-สกุล</strong></label>
                                <div class="controls">
                                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox><asp:RequiredFieldValidator ControlToValidate="txtName" ErrorMessage="*" runat="server"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="txtDetail"><strong>เรื่องติดต่อ</strong></label>
                                <div class="controls">
                                    <asp:TextBox ID="txtDetail" TextMode="MultiLine" Rows="10" runat="server"></asp:TextBox><asp:RequiredFieldValidator ControlToValidate="txtDetail" ErrorMessage="*" runat="server"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="control-group">
                                <label></label>
                                <div class="controls">
                                    <asp:Button ID="btnSave" Text="บันทึก" CssClass="btn btn-primary" runat="server" OnClick="btnSave_Click" />
                                    <asp:Button ID="btnCancel" Text="ยกเลิก" CssClass="btn" runat="server" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../Javascript/jquery-1.9.1.min.js"></script>
    <script src="../Javascript/bootstrap.min.js"></script>
    <script type="text/javascript">
        function myMaps() {
            var mapsGoo = google.maps;
            var Position = new mapsGoo.LatLng(13.710973, 100.536079);//ละติจูด,ลองติจูด เริ่มต้น โดยผมให้เริ่มต้นที่ กรุงเตบ  
            var myOptions = {
                center: Position,//ตำแหน่งแสดงแผนที่เริ่มต้น  
                zoom: 16,//ซูมเริ่มต้น คือ 8  
                mapTypeId: mapsGoo.MapTypeId.ROADMAP //ชนิดของแผนที่  
            };
            var map = new mapsGoo.Map(document.getElementById("map_canvas"), myOptions);
            var infowindow = new mapsGoo.InfoWindow();
            var marker = new mapsGoo.Marker({//เรียกเมธอดMarker(ปักหมุด)และกำหนดออปชั่น  
                position: Position,
                draggable: true
                //title:"Hello World!"  
            });
            var Posi = marker.getPosition();//เลือกเมธอดแสดงตำแหน่งของตัวปักหมุด  
            $('#mapsLat').val(Posi.lat());//ละติจูดของMarker  
            $('#mapsLng').val(Posi.lng());//ลองติจูดของMarker  
            marker.setMap(map);//แสดงตัวปักหมุดโลด!!  
            //ตรวจจับเหตุการณ์ต่างๆ ที่เกิดใน google maps  
            mapsGoo.event.addListener(marker, 'dragend', function (ev) {//ย้ายหมุด  
                var location = ev.latLng;
                $('#mapsLat').val(location.lat());//เอาค่าละติจูดไปแสดงที่ Tag HTML ที่มีแอตทริบิวต์ id ชื่อ mapsLat  
                $('#mapsLng').val(location.lng());//เอาค่าลองติจูดไปแสดงที่ Tag HTML ที่มีแอตทริบิวต์ id ชื่อ mapsLng  
            });
            mapsGoo.event.addListener(marker, 'click', function (ev) {//คลิกที่หมุด  
                var location = ev.latLng;
                $('#mapsLat').val(location.lat());//เอาค่าละติจูดไปแสดงที่ Tag HTML ที่มีแอตทริบิวต์ id ชื่อ mapsLat  
                $('#mapsLng').val(location.lng());//เอาค่าลองติจูดไปแสดงที่ Tag HTML ที่มีแอตทริบิวต์ id ชื่อ mapsLng  
                infowindow.setContent('ละติจูด:' + location.lat() + 'ลองติจูด:' + location.lng());
                infowindow.open(map, marker);
            });
            mapsGoo.event.addListener(map, 'zoom_changed', function (ev) {//ซูมแผนที่  
                zoomLevel = map.getZoom();//เรียกเมธอด getZoom จะได้ค่าZoomที่เป็นตัวเลข  
                $('#mapsZoom').val(zoomLevel);//เอาค่า Zoom Level ไปแสดงที่ Tag HTML ที่มีแอตทริบิวต์ id ชื่อ zoom  
            });
            var infoContent = '<div style="width:200px;height80px;"><img src="../Images/logo.png" /><div><small><span class="text-info">บริษัทบิสคอน โซลูชั่นส์ จำกัด</span></small></div></div>';

            infowindow.setContent(infoContent);
            infowindow.open(map, marker);
        }
        $(document).ready(function () {
            myMaps();
        });
    </script>
</asp:Content>

