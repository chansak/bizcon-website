var CKFLang =
{

Dir : 'ltr',
HelpLang : 'en',

// Date Format
//		d    : Day
//		dd   : Day (padding zero)
//		m    : Month
//		mm   : Month (padding zero)
//		yy   : Year (two digits)
//		yyyy : Year (four digits)
//		h    : Hour (12 hour clock)
//		hh   : Hour (12 hour clock, padding zero)
//		H    : Hour (24 hour clock)
//		HH   : Hour (24 hour clock, padding zero)
//		M    : Minute
//		MM   : Minute (padding zero)
//		a    : Firt char of AM/PM
//		aa   : AM/PM
DateTime : 'd/m/yyyy h:MM aa',
DateAmPm : ['AM','PM'],

// Folders
FoldersTitle	: 'โฟลเดอร์',
FolderLoading	: 'กำลังโหลด...',
FolderNew		: 'กรุณาพิมพ์ชื่อโฟลเดอร์ใหม่: ',
FolderRename	: 'กรุณาพิมพ์ชื่อโฟลเดอร์ใหม่: ',
FolderDelete	: 'คุณต้องการลบ "%1" โฟลเดอร์ใช่หรือไม่?',
FolderRenaming	: ' (กำลังแก้ไขชื่อ...)',
FolderDeleting	: ' (กำลังลบ...)',

// Files
FileRename		: 'กรุณาพิมพ์ชื่อไฟล์ใหม่: ',
FileRenameExt	: 'คุณต้องการเปลี่ยนนามสกุลของไฟล์ใช่หรือไม่? ไฟล์อาจจะใช้งานไม่ได้',
FileRenaming	: 'กำลังแก้ไขชื่อ...',
FileDelete		: 'คุณต้องการลบไฟล์ "%1" ใช่หรือไม่?',

// Toolbar Buttons (some used elsewhere)
Upload		: 'นำเข้าไฟล์ข้อมูล',
UploadTip: 'นำเข้าไฟล์ข้อมูลใหม่',
Refresh		: 'รีเฟรช',
Settings	: 'ตั้งค่า',
Help		: 'ช่วยเหลือ',
HelpTip		: 'ช่วยเหลือ',

// Context Menus
Select		: 'เลือก',
SelectThumbnail : 'เลือกรูปย่อ',
View		: 'มุมมอง',
Download	: 'ดาวน์โหลด',

NewSubFolder	: 'สร้างโฟลเดอร์ใหม่',
Rename			: 'ตั้งชื่อใหม่',
Delete			: 'ลบ',

// Generic
OkBtn		: 'ตกลง',
CancelBtn	: 'ยกเลิก',
CloseBtn	: 'ปิด',

// Upload Panel
UploadTitle: 'นำเข้าไฟล์ข้อมูลใหม่',
UploadSelectLbl		: 'เลือกไฟล์ที่จะอัพโหลด',
UploadProgressLbl	: '(กำลังทำการอัพโหลด, กรุณารอสักครู่...)',
UploadBtn			: 'บันทึก',

UploadNoFileMsg		: 'กรุณาเลือกไฟล์จากคอมพิวเตอร์ของคุณ',

// Settings Panel
SetTitle		: 'ตั้งค่า',
SetView			: 'มุมมอง:',
SetViewThumb	: 'รูปย่อ',
SetViewList		: 'รายการ',
SetDisplay		: 'แสดง:',
SetDisplayName	: 'ชื่อไฟล์',
SetDisplayDate	: 'วันที่',
SetDisplaySize	: 'ขนาด',
SetSort			: 'จัดเรียง:',
SetSortName		: 'ชื่อไฟล์',
SetSortDate		: 'วันที่',
SetSortSize		: 'ขนาด',

// Status Bar
FilesCountEmpty : '<ไม่มีโฟลเดอร์>',
FilesCountOne	: '1 ไฟล์',
FilesCountMany	: '%1 ไฟล์',

// Connector Error Messages.
ErrorUnknown : 'มันไม่สามารถที่จะเสร็จสิ้นตามคำขอ. (Error %1)',
Errors : 
{
 10 : 'คำสั่งไม่ถูกต้อง',
 11 : 'ประเภททรัพยากรไม่ได้ระบุตามคำขอ',
 12 : 'ประเภททรัพยากรไม่ถูกต้อง',
102 : 'ไฟล์หรือชื่อโฟลเดอร์ไม่ถูกต้อง',
103 : 'ไม่สามารถที่จะเสร็จสิ้นตามคำขอเนื่องจากข้อจำกัด',
104 : 'ไม่สามารถที่จะเสร็จสิ้นตามคำขอเนื่องจากระบบแฟ้มไม่ได้รับอนุญาต',
105 : 'นามสกุลไฟล์ไม่ถูกต้อง.',
109 : 'คำขอไม่ถูกต้อง',
110 : 'ข้อผิดพลาดที่ไม่รู้จัก',
115 : 'แฟ้มหรือโฟลเดอร์ที่ใช้มีชื่อนี้อยู่แล้ว.',
116 : 'ไม่พบโฟลเดอร์. กรุณารีเฟรชแล้วลองใหม่อีกครั้ง',
117 : 'ไม่พบโฟล์. กรุณารีเฟรชแล้วลองใหม่อีกครั้ง',
201 : 'แฟ้มที่ใช้ชื่อนี้มีอยู่แล้ว. ไฟล์ที่อัพโหลดถูกเปลี่ยนชื่อเป็น "%1"',
202 : 'ไฟล์ไม่ถูกต้อง',
203 : 'ไฟล์ไม่ถูกต้อง. ขนาดไฟล์ใหญ่เกินไป.',
204 : 'ไฟล์ที่อัพโหลดไม่สมบูรณ์',
205 : 'ไม่มีโฟลเดอร์ชั่วคราวสำหรับการอัปโหลดในเซิร์ฟเวอร์',
206 : 'ยกเลิกการอัปโหลดเนื่องจากความปลอดภัย. ไฟล์ HTML ที่มีข้อมูลเช่น',
500 : 'ไฟล์ที่เบราว์เซอร์ถูกปิดการใช้งานเนื่องจากความปลอดภัย. โปรดติดต่อผู้ดูแลระบบของคุณและตรวจสอบไฟล์กำหนดค่าคอนฟิก CKFinder',
501 : 'รูปย่อถูกปิดการใช้งาน.'
},

// Other Error Messages.
ErrorMsg :
{
FileEmpty		: 'ชื่อไฟล์จะต้องไม่ว่าง',
FolderEmpty		: 'ชื่อโฟลเดอร์จะต้องไม่ว่าง',

FileInvChar		: 'ชื่อไฟล์ไม่สามารถมีตัวอักษรต่อไปนี้: \n\\ / : * ? " < > |',
FolderInvChar	: 'ชื่อโฟลเดอร์ไม่สามารถมีตัวอักษรต่อไปนี้: \n\\ / : * ? " < > |',

PopupBlockView	: 'ไม่สามารถเปิดไฟล์ในหน้าต่างใหม่. กรุณากำหนดค่าบราวเซอร์ของคุณและปิดการใช้งาน ตัวบล็อคป๊อปอัป ทั้งหมดสำหรับเว็บไซต์นี้.'
}

} ;
