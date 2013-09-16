using System;
using System.Web;
using System.Security.Cryptography;
using System.IO;
using System.Configuration;
using System.Web.Configuration;
using System.Collections;
using System.Net.Mail;
using System.Drawing.Text;
using System.Drawing.Imaging;
using System.Drawing;
using System.Text;
using System.Globalization ;
using System.Data;
using System.Text.RegularExpressions;
public enum ActionMode
{
    View =0,
    AddNew = 1,
    Edit = 2,
    Delete = 3
}
public class AppUtilities
{
    private CultureInfo thai = new CultureInfo ("th-TH");
    private CultureInfo eng = new CultureInfo ("en-EN");
    private static string comparevalue;
    private static SortedList _thaidays;
    public static int edPop = 0; // ตัวแปรคุมการ alert 0=ค่าเริ่มต้น,  1=แก้ไขสำเร็จ, 2=ไม่สามารถแก้ไขได้เนื่องจากเป็น user คนละคน
    public static bool handle = false;
    public AppUtilities()
    {
    }
    public static string GetDirectoryName(string path)
    {
        if (String.IsNullOrEmpty(path)) return path;
        path = path.Substring(0, path.LastIndexOf("/"));
        path = path.Substring(path.LastIndexOf("/") + 1);
        return path;
    }
    public static string Left(string param, int length)
    {
        string result = param.Substring(0, length);
        return result;
    }
    public static string Left(string param, int length,string overtext)
    {
        string result ="";
        if (param.Length > length)
        {
            result =param.Substring(0, length);
            return string.Format("{0} {1}", result, overtext);
        }
        else
            return string.Format("{0} {1}", param, overtext); ;
    }
    public static string Right(string param, int length)
    {
        string result = param.Substring(param.Length - length, length);
        return result;
    }
    public static string Mid(string param, int startIndex, int length)
    {
        string result = param.Substring(startIndex, length);
        return result;
    }
    public static string Mid(string param, int startIndex)
    {
        string result = param.Substring(startIndex);
        return result;
    }
    public static bool ExistsInArray(string value, string[] array)
    {
        if (array == null) return false;
        if (array.Length == 0) return false;
        comparevalue = value;
        Predicate<string> match = new Predicate<string>(exists);
        return Array.Exists<string>(array, match);

    }
    private static bool exists(string value)
    {
        if (comparevalue.Trim() == value.Trim()) return true;
        return false;
    }
    public static SortedList ThaiDays
    {
        get
        {
            if (_thaidays != null) return _thaidays;
            _thaidays = new SortedList();
            _thaidays.Add(1, "อาทิตย์");
            _thaidays.Add(2, "จันทร์");
            _thaidays.Add(3, "อังคาร");
            _thaidays.Add(4, "พุธ");
            _thaidays.Add(5, "พฤหัสบดี");
            _thaidays.Add(6, "ศุกร์");
            _thaidays.Add(7, "เสาร์");
            return _thaidays;
        }
    }
    //public void SendMail(string sender, string receiver, string subject, string message, bool isBodyHtml)
    //{
    //    MailMessage mail = new MailMessage();
    //    mail.From = new MailAddress(sender, sender);
    //    string[] receivers = receiver.Split(',');
    //    foreach (string to in receivers)
    //    {
    //        mail.To.Add(new MailAddress(to));
    //    }
    //    mail.Subject = subject;
    //    mail.Body = message;
    //    mail.IsBodyHtml = isBodyHtml;
    //    try
    //    {
    //        SmtpClient client = new SmtpClient();
    //        client.Send(mail);
    //    }
    //    catch
    //    {
    //        return;
    //    }
    //}
    public static void SendMail(string sender, string receiver, string subject, string message, bool isBodyHtml)
    {
        MailMessage mail = new MailMessage();
        System.Net.NetworkCredential cred = new System.Net.NetworkCredential("Chansak.K@bizcon.co.th", "chansakcsc");

        mail.To.Add(new MailAddress(receiver));
        mail.Subject = subject;

        mail.From = new MailAddress(sender);
        mail.IsBodyHtml = true;
        mail.Body = message;
        string client = "BIZCONSVR-03.bizcon.co.th";
        try
        {
            SmtpClient smtp = new SmtpClient(client);
            smtp.UseDefaultCredentials = false;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.EnableSsl = false;
            smtp.Credentials = cred;
            smtp.Port = 25;
            smtp.Send(mail);
        }
        catch(Exception ex) {HttpContext.Current.Response.Write(ex.Message);}
    }
    public static string getKeyName(string param)
    {
        if (!String.IsNullOrEmpty(param))
        {
            if (param.IndexOf("=") > -1) return param.Substring(0, param.IndexOf("="));
            return param;
        }
        return String.Empty;
    }
    public static string getValue(string param)
    {
        if (!String.IsNullOrEmpty(param))
        {
            return param.Substring(param.IndexOf("=") + 1);
        }
        return String.Empty;
    }
    public string RandomID(int range)
    {
        Random rd = new Random();
        return rd.Next(range).ToString();
    }
    public static string AutoID(int length)
    {
        RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
        byte[] buffer = new byte[length / 2];
        rng.GetBytes(buffer);
        string autoID = ByteToHex(buffer, length);
        return autoID;
    }
    protected static string ByteToHex(byte[] bytes, int lenght)
    {
        System.Text.StringBuilder hexstring = new System.Text.StringBuilder(lenght / 2);
        for (int i = 0; i < bytes.Length; i++)
        {
            hexstring.Append(String.Format("{0:X2}", bytes[i]));
        }
        string str = hexstring.ToString();
        for (int i = 6; i < str.Length - 2; i += 7)
        {
            str = str.Insert(i, "-");
        }
        return str.ToLower();
    }
    public string FilterText(string text)
    {
        if (text.Length < 1) return "";
        string str = text;
        str = str.Replace("\'", "");
        return str;
    }
    public string UrlConvert(object str)
    {
        if (str != null)
        {
            string strOutput = str.ToString();
            string strPattern = "http://((\\w+)\\.)+(\\w+)(/[\\w+./?%=&]*)?";
            System.Text.RegularExpressions.Regex urlRegex = new System.Text.RegularExpressions.Regex(strPattern);
            System.Text.RegularExpressions.MatchCollection mc = urlRegex.Matches(str.ToString());
            if (mc.Count > 0)
            {
                int index = -1;
                foreach (System.Text.RegularExpressions.Match m in mc)
                {
                    string strtmp;
                    index = strOutput.IndexOf(m.Value, index + 1);
                    strtmp = "<A HREF=\"" + m.Value + "\">";
                    strOutput = strOutput.Insert(index, strtmp);
                    strOutput = strOutput.Insert(index + m.Value.Length + strtmp.Length, "</A>");
                }
                return strOutput;
            }
            return str.ToString();
        }
        return String.Empty;
    }
    public static HttpCookie EncryptCookie(HttpCookie cookie)
    {
        try
        {
            HttpCookie encrypted = CloneCookie(cookie);
            encrypted.Value = Encrypt(encrypted.Value);
            return encrypted;
        }
        catch (Exception e)
        {
            throw new HttpException("Unable to Encrypt the cookie.", e);
        }
    }
    public static HttpCookie DecryptCookie(HttpCookie cookie)
    {
        try
        {
            if (cookie == null) throw new ArgumentNullException("cookie");
            if (cookie.Value.Length == 0) return cookie;
        }
        catch
        {
            return cookie;
        }
        try
        {
            HttpCookie decryptedCookie = CloneCookie(cookie);
            decryptedCookie.Value = Decrypt(decryptedCookie.Value);
            return decryptedCookie;
        }
        catch (Exception e)
        {
            throw new HttpException("Unable to Decrypt the cookie.", e);
        }
    }
    public static string Encrypt(object text)
    {
        if (text != null)
        {
            MemoryStream ms = new MemoryStream();
            RijndaelManaged rm = new RijndaelManaged();
            rm.Key = System.Text.Encoding.Default.GetBytes(MachineKey.Length > 32 ? MachineKey.Substring(0, 32) : MachineKey);
            byte[] iv ={ 11, 12, 33, 50, 78, 25, 72, 84, 23, 65, 48, 69, 250, 36, 125, 147 };
            rm.IV = iv;
            ICryptoTransform transformer = rm.CreateEncryptor();
            CryptoStream cs = new CryptoStream(ms, transformer, CryptoStreamMode.Write);
            try
            {
                byte[] data = System.Text.Encoding.Default.GetBytes(text.ToString());
                ms.Write(data, 0, data.Length);
                string result = Convert.ToBase64String(ms.ToArray());
                ms.Close();
                return result;
            }
            catch
            {
                return String.Empty;
            }
        }
        return String.Empty;
    }
    public static string MachineKey
    {
        get
        {
            Configuration config = (Configuration)WebConfigurationManager.OpenWebConfiguration("~/web.config");
            MachineKeySection machineKey = (MachineKeySection)config.GetSection("system.web/machineKey");
            return machineKey.DecryptionKey;
        }
    }
    public static string Decrypt(object text)
    {
        if (text != null)
        {
            MemoryStream ms = new MemoryStream();
            RijndaelManaged rm = new RijndaelManaged();
            rm.Key = System.Text.Encoding.Default.GetBytes(MachineKey.Length > 32 ? MachineKey.Substring(0, 32) : MachineKey);
            byte[] iv ={ 11, 12, 33, 50, 78, 25, 72, 84, 23, 65, 48, 69, 250, 36, 125, 147 };
            rm.IV = iv;
            ICryptoTransform transformer = rm.CreateDecryptor();
            CryptoStream cs = new CryptoStream(ms, transformer, CryptoStreamMode.Write);
            try
            {
                byte[] data = Convert.FromBase64String(text.ToString());
                ms.Write(data, 0, data.Length);
                string result = System.Text.Encoding.Default.GetString(ms.ToArray());
                ms.Close();
                return result;
            }
            catch
            {
                return String.Empty;
            }
        }
        return String.Empty;
    }
    protected static HttpCookie CloneCookie(HttpCookie source)
    {
        HttpCookie encrypted = new HttpCookie(source.Name);
        encrypted.Expires = source.Expires;
        encrypted.Path = source.Path;
        encrypted.Secure = source.Secure;
        encrypted.Domain = source.Domain;
        encrypted.Value = source.Value;
        return encrypted;
    }
    public static void Alert(System.Web.UI.Page myPage, string text, Boolean back)
    {
        if (back)
        {
            string id = Guid.NewGuid().ToString();
            myPage.ClientScript.RegisterStartupScript(myPage.GetType(), id, string.Format("alert(\"{0}\");history.back();", text), true);
        }
        else
        {
            string id = Guid.NewGuid().ToString();
            myPage.ClientScript.RegisterStartupScript(myPage.GetType(), id, string.Format("alert(\"{0}\");", text), true);
        }
    }
    public static string ConvertNumToString(string text)
    {
        Hashtable lookup = new Hashtable();
        lookup["0"] = "ศูนย์";
        lookup["1"] = "หนึ่ง";
        lookup["2"] = "สอง";
        lookup["3"] = "สาม";
        lookup["4"] = "สี่";
        lookup["5"] = "ห้า";
        lookup["6"] = "หก";
        lookup["7"] = "เจ็ด";
        lookup["8"] = "แปด";
        lookup["9"] = "เก้า";
        lookup["-"] = "-";
        string result = "";
        foreach (char c in text)
        {
            string digit = c.ToString();
            if (lookup.ContainsKey(digit))
            {
                result += lookup[digit];
            }
        }
        return result;
    }
    public static DataTable SelectTopDataRow(DataTable dt, int count)
    {
        DataTable dtn = dt.Clone();
        for (int i = 0; i < count; i++)
        {
            dtn.ImportRow(dt.Rows[i]);
        }
        return dtn;
    }
    public static string ScriptSerializer(object obj)
    {
       System.Web.Script.Serialization.JavaScriptSerializer oSerializer =
         new System.Web.Script.Serialization.JavaScriptSerializer();
        return oSerializer.Serialize(obj);
    }
}
public class verification
{
    public string CreateImage(string path,int height,int width)
    {
        Random r =new Random();
        string salt = CreateSalt(4);
        Bitmap bmp = new Bitmap(width, height, PixelFormat.Format24bppRgb);
        Graphics g = Graphics.FromImage(bmp);
        g.TextRenderingHint = TextRenderingHint.AntiAlias;
        g.Clear(Color.Black);
        g.DrawRectangle(Pens.White, 1, 1, width - 3, height - 3);
        g.DrawRectangle(Pens.Black, 0, 0, width, height);
        System.Drawing.Drawing2D.Matrix mymat = new System.Drawing.Drawing2D.Matrix();
        for (int i = 0; i < salt.Length; i++)
        {
            mymat.Reset();
            mymat.RotateAt(r.Next(-30, 0), new PointF((float)(width * (0.12 * i)),(float)(height * 0.5)));
            g.Transform = mymat;
            g.DrawString(salt[i].ToString(), new Font("Arial", 15, FontStyle.Italic), SystemBrushes.ActiveCaptionText, (float)(width * (0.12 * i)), (float)(height * 0.5));
            g.ResetTransform();
        }
        bmp.Save(path, ImageFormat.Gif);
        g.Dispose();
        bmp.Dispose();
        return salt;
    }
    public string CreateSalt(int size)
    {
        RNGCryptoServiceProvider rng =new RNGCryptoServiceProvider();
        byte[] buff = new byte[size];
        rng.GetBytes(buff);
        return Convert.ToBase64String(buff);
    }
 }
public class TextEditor
{
    public static bool IsMoveFile
    {
        get { return true; }
    }
    public static string userfiles
    {
        get { return string.IsNullOrEmpty(CurrentUser.ID) ? DateTime.Now.ToString("dd-MM-yyyy") : CurrentUser.ID; }
    }
    public static string BaseUrl
    {
        get { return string.Format("{0}{1}/{2}/", Files.FileUrl, Files.FolderAllFiles, userfiles); }
    }
    public static string BaseDir
    {
        get
        {
            if (Files.IsDirectory)
                return string.Format("{0}{1}\\{2}\\", Files.FileDirectory, Files.FolderAllFiles, userfiles);
            else
                return HttpContext.Current.Server.MapPath(string.Format("{0}{1}/{2}/", Files.FileUrl, Files.FolderAllFiles, userfiles));
        }
    }
    public static string getTextFormat(System.Web.UI.Page page, object text, string folder, object id)
    {
        return getTextFormat(page.ResolveUrl(Files.FileUrl), text, folder, id);
    }
    public static string getTextFormat(string resolveUrl, object text, string folder, object id)
    {
        try
        {
            if (!IsMoveFile)
                return text.ToString().Replace("{0}/", resolveUrl);
            else
                return text.ToString().Replace("{0}/", string.Format("{0}{1}/{2}/", resolveUrl, folder, id));
        }
        catch
        {
            return text.ToString();
        }
    }
    public static string setTextFormat(string text, string folder, string id)
    {
        return setTextFormat(text, folder, id, "", true);
    }
    public static string setTextFormat(string text, string folder, string id, string prefix)
    {
        return setTextFormat(text, folder, id, prefix, true);
    }
    public static string setTextFormat(string text, string folder, string id, string prefix, Boolean delfile)
    {
        if (!IsMoveFile)
        {
            text = Regex.Replace(text, Files.FileUrl, "{0}/", RegexOptions.IgnoreCase);// text.Replace(ConfigurationManager.AppSettings["AllFiles"], "{0}/");
        }
        else
        {
            ArrayList al = new ArrayList();
            int i = new Random().Next(1000);
            Regex reTag = new Regex(@"<img\s*[^>]*>|<embed\s*[^>]*>", RegexOptions.IgnoreCase);
            Regex reAttribute = new Regex(string.Format(@"{0}=(?:(['""])(?<{0}>(?:(?!\1).)*)\1|(?<{0}>[^\s>]+))", "src"), RegexOptions.IgnoreCase | RegexOptions.Singleline);
            MatchCollection mc = reTag.Matches(text);
            foreach (Match mTag in mc)
            {
                if (reAttribute.IsMatch(mTag.Groups[0].Value))
                {
                    Match mAttribute = reAttribute.Match(mTag.Groups[0].Value);
                    string path = mAttribute.Groups["src"].Value;

                    string Extension = Path.GetExtension(path);//path.Substring(path.LastIndexOf("."));
                    string filename = folder + prefix + i + Extension; //IsMoveFile ? (folder + i + Extension) : Path.GetFileName(path);//(path.Substring(path.LastIndexOf("/") + 1));
                    al.Add(filename);

                    text = text.Replace(mAttribute.Value, String.Format("src=\"{0}\"", "{0}/" + filename));
                    i++;

                    string npath = Files.GetDirectory(folder, id, filename);
                    //if (Files.IsDirectory)
                    //{
                    //    npath = String.Format("{0}{1}\\{2}\\{3}", Files.FileDirectory, folder, id, filename);
                    //}
                    //else
                    //{
                    //    npath = String.Format("{0}{1}/{2}/{3}", Files.FileUrl, folder, id, filename);
                    //    npath = HttpContext.Current.Server.MapPath(npath);
                    //}
                    if (!Directory.Exists(Path.GetDirectoryName(npath))) Directory.CreateDirectory(Path.GetDirectoryName(npath));
                    string opath = "";
                    if (Files.IsDirectory && Regex.IsMatch(mAttribute.Groups["src"].Value, Files.FileUrl))
                    {
                        opath = Files.FileDirectory + Regex.Replace(mAttribute.Groups["src"].Value, Files.FileUrl, "", RegexOptions.IgnoreCase).Replace("/", "\\");
                    }
                    else
                    {
                        try
                        {
                            opath = HttpContext.Current.Server.MapPath(HttpContext.Current.Server.UrlDecode(mAttribute.Groups["src"].Value));
                        }
                        catch
                        {
                            //opath = mAttribute.Groups["src"].Value;
                            text = text.Replace(String.Format("src=\"{0}\"", "{0}/" + filename), mAttribute.Value);
                            continue;
                        }
                    }
                    opath = HttpContext.Current.Server.UrlDecode(opath);
                    bool IsExist = File.Exists(npath);
                    try
                    {
                        if (opath.ToLower() != npath.ToLower() && IsExist) File.Delete(npath);
                        if (opath.ToLower() != npath.ToLower() || !IsExist) File.Copy(opath, npath);

                        if (delfile && (opath.ToLower() != npath.ToLower()))
                        {
                            File.Delete(opath);

                            opath = Regex.Replace(opath, @"\\([Image|File]*)\\", @"\_thumbs\$1s\", RegexOptions.IgnoreCase);
                            if (File.Exists(opath))
                                File.Delete(opath);
                        }
                    }
                    catch (Exception ex) { }
                }
            }

            string filePath = Files.GetDirectory(folder, id);
            //if (Files.IsDirectory)
            //    filePath = String.Format("{0}{1}\\{2}\\", Files.FileDirectory, folder, id);
            //else
            //    filePath = HttpContext.Current.Server.MapPath(String.Format("{0}{1}/{2}/", Files.FileUrl, folder, id));

            if (Directory.Exists(filePath) && IsMoveFile)
            {
                FileInfo[] fi = new DirectoryInfo(filePath).GetFiles(folder + prefix + "*");
                foreach (FileInfo f in fi)
                {
                    if (!al.Contains(f.Name))
                        f.Delete();
                }
            }
        }

        return text;
    }
}
public class Files
{
    public const string FolderAllFiles = "AllFiles";
    public const string FolderUserFiles = "Files";
    public const string FolderExams = "Exams";
    public const string FolderChapters = "Chapters";
    public const string FolderSubjects = "Subjects";
    public const string FolderQuestions = "Questions";
    public const string FolderChoices = "Choices";
    public const string FolderComment = "Comment";
    public const string FolderTemplate = "Template";

    public static string GetDirectory(params string[] values)
    {
        bool isDirectory = Files.IsDirectory;
        string directory = isDirectory ? Files.FileDirectory : Files.FileUrl;

        for (int i = 0; i < values.Length; i++)
        {
            if (isDirectory)
                directory += (i.Equals(0) ? "" : "\\") + values[i];
            else
                directory += (i.Equals(0) ? "" : "/") + values[i];
        }
        if (!isDirectory)
            directory = HttpContext.Current.Server.MapPath(directory);

        return directory;
    }

    public static bool IsDirectory
    {
        get { return Convert.ToBoolean(ConfigurationManager.AppSettings["IsDir"]); }
    }
    public static string FileDirectory
    {
        get { return ConfigurationManager.AppSettings["FileDir"]; }
    }
    public static string FileUrl
    {
        get { return ConfigurationManager.AppSettings["FileUrl"]; }
    }

    public static void DeleteDirectoryEmpty(string id, string mode)
    {
        string path;
        foreach (string fold in new string[3] { FolderQuestions, FolderComment, FolderChoices })
        {
            if (IsDirectory)
                path = String.Format("{0}{1}{2}\\{3}\\", FileDirectory, fold, mode, id);
            else
                path = HttpContext.Current.Server.MapPath(String.Format("{0}{1}{2}/{3}/", FileUrl, fold, mode, id));

            if (Directory.Exists(path))
            {
                string[] fi = Directory.GetFiles(path);
                if (fi.Length == 0)
                    Directory.Delete(path);
            }
        }
    }

    public static void DeleteQuestionDirectory(string id, string mode)
    {
        foreach (string fold in new string[3] { FolderQuestions, FolderComment, FolderChoices })
            DeleteDirectory(id, fold + mode);
    }

    public static void DeleteDirectory(string id, string folder)
    {
        string path;
        if (IsDirectory)
            path = String.Format("{0}{1}\\{2}\\", FileDirectory, folder, id);
        else
            path = HttpContext.Current.Server.MapPath(String.Format("{0}{1}/{2}/", FileUrl, folder, id));

        if (Directory.Exists(path))
            Directory.Delete(path, true);
    }

    public static bool DeleteDirectory(string targetDirectory)
    {
        bool result = false;

        string[] files = Directory.GetFiles(targetDirectory);
        string[] dirs = Directory.GetDirectories(targetDirectory);

        foreach (string file in files)
        {
            //File.SetAttributes(file, FileAttributes.Normal);
            File.Delete(file);
        }

        foreach (string dir in dirs)
        {
            DeleteDirectory(dir);
        }

        Directory.Delete(targetDirectory);

        return result;
    }

    public static void CopyDirectory(DirectoryInfo source, DirectoryInfo destination)
    {
        if (source.Exists)
        {
            if (!destination.Exists)
                destination.Create();

            FileInfo[] files = source.GetFiles();
            foreach (FileInfo file in files)
            {
                file.CopyTo(Path.Combine(destination.FullName, file.Name), true);
            }

            DirectoryInfo[] dirs = source.GetDirectories();
            foreach (DirectoryInfo dir in dirs)
            {
                string destinationDir = Path.Combine(destination.FullName, dir.Name);
                CopyDirectory(dir, new DirectoryInfo(destinationDir));
            }
        }
    }

}
namespace Msg
{
    public class Message
    {    
        public static  string success="success";
        public static string warning = "warning";
        public static string error = "error";
        public static string info = "info";
        public static void Alert(System.Web.UI.Page myPage, string text,string style)
        {
            string id = Guid.NewGuid().ToString();
            string msg = string .Format ("ClientMsg('{0}','{1}');",text,style );
            myPage.ClientScript.RegisterStartupScript(myPage.GetType(), id, msg, true);
        }
    }
    public class TextAlet
    {
        public static string success = "บันทึกข้อมูลเรียบร้อยแล้ว";
        public static string warning = "warning";
        public static string error = "error";
        public static string info = "info";
    }
}

