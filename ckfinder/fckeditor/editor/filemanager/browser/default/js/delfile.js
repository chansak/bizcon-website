function newXmlHttp(){
var xmlhttp = false;

try{
xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
}catch(e){
try{
xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
}catch(e){
xmlhttp = false;
}
}

if(!xmlhttp && document.createElement){
xmlhttp = new XMLHttpRequest();
}
return xmlhttp;
}

function delfileajax(id){
var url = "ajax/ajax.ashx?param=editorDelfile&id="+id; 
xmlhttp = newXmlHttp();
xmlhttp.open("GET", url, false);
xmlhttp.send(null); 
returntext = xmlhttp.responseText;
if(returntext=="0") alert("คุณไม่ได้สิทธิ์ในการลบไฟล์");

}

function delfile(id) { 
if (window.confirm("คุณแน่ใจที่จะลบ File นี้ ?")) {
delfileajax(id);
window.parent.frames['frmResourcesList'].Refresh();
}
}

