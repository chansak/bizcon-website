using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.ObjectModel;
using System.Text;
public enum UserLoginStatus
{
    UnknowError = 0,
    Succeed = 1,
    WrongPassword = 2,
    InvalidUserName = 3
}
public class User
{
    private string _id;
    private string _username;
    private string _displayName;
    private string _email;
    private string[] _roles;
    private bool _enabled;
    public User()
    {

    }
    public string ID { get { return _id; } set { _id = value; } }
    public string UserName { get { return _username; } set { _username = value; } }
    public string DisplayName { get { return _displayName; } set { _displayName = value; } }
    public string Email { get { return _email; } set { _email = value; } }
    public string[] Roles { get { return _roles; } set { _roles = value; } }
    public bool Enabled { get { return _enabled; } set { _enabled = value; } }
    public User(string username)
    {
        DataView dv = new DataView();
        string criteria = string.Format("WHERE Users.UserName='{0}'",username );
        dv = Program.Connection.Select("*", "Users", criteria);
        if (dv.Count >0 ){
            this._id = dv.Table.Rows[0]["UserId"].ToString();
            this._username = dv.Table.Rows[0]["UserName"].ToString();
            this._displayName = dv.Table.Rows[0]["DisplayName"].ToString();
            this._roles = RoleProvider.GetRolesForUser(this._id);
        }
    }
    public static void Logout()
    {
        Configurations.Client.Clear();
        Configurations.Client["ID"] = "";
        FormsAuthentication.SignOut();
        HttpContext.Current.Session.Abandon();
        HttpContext.Current.Session.Clear();
        HttpContext.Current.Response.Redirect(FormsAuthentication.LoginUrl);
    }
}
public class UserCollection : Collection<User>
{ 
}
public class UserProvider
{
    #region Public Properties
    public static bool RequireEmail
    {
        get
        {
            if (!String.IsNullOrEmpty(ConfigurationManager.AppSettings["RequireEmail"])) return Convert.ToBoolean(ConfigurationManager.AppSettings["RequireEmail"]);
            else return true;
        }
    }
    public static bool UniqueEmail
    {
        get
        {
            if (!String.IsNullOrEmpty(ConfigurationManager.AppSettings["UniqueEmail"])) return Convert.ToBoolean(ConfigurationManager.AppSettings["UniqueEmail"]);
            else return true;
        }
    }
    public static int MinPasswordLength
    {
        get
        {
            if (!String.IsNullOrEmpty(ConfigurationManager.AppSettings["MinPasswordLength"])) return Convert.ToInt32(ConfigurationManager.AppSettings["MinPasswordLength"]);
            else return 5;
        }
    }
    public static int MaxPasswordLength
    {
        get
        {
            if (!String.IsNullOrEmpty(ConfigurationManager.AppSettings["MaxPasswordLength"])) return Convert.ToInt32(ConfigurationManager.AppSettings["MaxPasswordLength"]);
            else return 32;
        }
    }
    public static int MinAnswerLength
    {
        get
        {

            if (!String.IsNullOrEmpty(ConfigurationManager.AppSettings["MinAnswerLength"])) return Convert.ToInt32(ConfigurationManager.AppSettings["MinAnswerLength"]);
            else return 5;
        }
    }
    public static int MaxAnswerLength
    {
        get
        {
            if (!String.IsNullOrEmpty(ConfigurationManager.AppSettings["MaxAnswerLength"])) return Convert.ToInt32(ConfigurationManager.AppSettings["MaxAnswerLength"]);
            else return 30;
        }
    }
    public static int MinUserNameLength
    {
        get
        {
            if (!String.IsNullOrEmpty(ConfigurationManager.AppSettings["MinUserNameLength"])) return Convert.ToInt32(ConfigurationManager.AppSettings["MinUserNameLength"]);
            else return 3;
        }
    }
    public static int MaxUserNameLength
    {
        get
        {
            if (!String.IsNullOrEmpty(ConfigurationManager.AppSettings["MaxUserNameLength"])) return Convert.ToInt32(ConfigurationManager.AppSettings["MaxUserNameLength"]);
            else return 3;
        }
    }
    public static bool EnablePasswordReset
    {
        get
        {
            if (!String.IsNullOrEmpty(ConfigurationManager.AppSettings["EnablePasswordReset"])) return Convert.ToBoolean(ConfigurationManager.AppSettings["EnablePasswordReset"]);
            else return true;
        }
    }
    public static bool EnablePasswordRetrieval
    {
        get
        {
            if (!String.IsNullOrEmpty(ConfigurationManager.AppSettings["EnablePasswordRetrieval"])) return Convert.ToBoolean(ConfigurationManager.AppSettings["EnablePasswordRetrieval"]);
            else return false;
        }
    }
    #endregion
    #region Private Method

    private static string GetPasswordSalt(string username)
    {
        return Star.Security.Cryptography.Text.Encrypt(username.ToLower());
    }
    private static void SaveTicket(string username, string data, bool isPersistent)
    {
        FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, username, DateTime.Now, DateTime.Now.AddMinutes(30), isPersistent, data, FormsAuthentication.FormsCookiePath);
        HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName);
        cookie.Value = FormsAuthentication.Encrypt(ticket);
        cookie.Expires = ticket.Expiration;
        HttpContext.Current.Response.Cookies.Add(cookie);
    }
    #endregion
    #region Public Method
    public static User GetUser(string username)
    {

        DataView dv = Program.Connection.Select("*", "Users", "WHERE U.UserName='" + username + "'");
        if (dv.Count > 0)
        {
            User user = new User();
            return user;
        }
        return null;
    }
    public static string GetEncryptedPassword(string username, string password)
    {
        return Star.Security.Cryptography.Text.Encrypt(password, GetPasswordSalt(username));
    }
    public static string GetTicketData(string key)
    {
        HttpCookie cookie = HttpContext.Current.Request.Cookies[FormsAuthentication.FormsCookieName];
        string value = "";
        if (cookie != null)
        {
            try
            {
                string data = HttpContext.Current.Server.UrlDecode(cookie.Value);
                FormsAuthenticationTicket ticket = FormsAuthentication.Decrypt(data);
                data = ticket.UserData;
                Star.Web.QueryString query = new Star.Web.QueryString();
                System.Collections.Specialized.NameValueCollection items = query.GetQueryStringCollection("?" + data);
                if (items.Count > 0 && items[key] != null) value = items[key];
            }
            catch
            {

            }
        }
        return value;
    }
    public static bool ValidateUser(string username, string password, bool savePassword)
    {
        username = System.Text.RegularExpressions.Regex.Replace(username, "\'", "\'\'", System.Text.RegularExpressions.RegexOptions.Compiled);
        string criteria = string.Format("WHERE UserName='{0}' AND Enable=1", username);
        bool validate = false;
        DataView dv = Program.Connection.Select("*", "Users", criteria);
        if (dv.Count == 0)
        {
            validate = false;
        }
        else if (dv.Table.Rows[0]["Password"].ToString().Trim().Equals(GetEncryptedPassword(username, password).Trim()))
        {
            FormsAuthentication.SetAuthCookie(username, true);
            User user = new User(username);
            if (user == null)
            {
                validate = false;
            }
            string[] roles = RoleProvider.GetRolesForUser(dv[0]["UserId"].ToString());
            string data = String.Format("usn={0}&id={1}&dpName={2}&roles={3}",
                username, dv[0]["UserId"], dv[0]["DisplayName"], String.Join(",", roles));

            if (savePassword) data += "&pwd=" + GetEncryptedPassword(username, password);
            SaveTicket(username, data, true);
            Configurations.Client["sPwd", true] = savePassword ? "1" : "0";

            validate = true;
        }
        return validate;
    }
    public static void CreateUser(string username, string password, string displayname, string role, bool enable)
    {
        try
        {
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    public static void UpdateUser()
    {
        try
        {
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    #endregion

}
public class Role
{
    private string _id;
    private string _name;
    private int _level;
    public Role()
    {

    }
    public string ID { get { return _id; } set { _id = value; } }
    public string Name { get { return _name; } set { _name = value; } }
    public int Level { get { return _level; } set { _level = value; } }
    public Role(string id, string name, int level)
    {
        this._id = id;
        this._name = name;
        this._level = level;
    }
}
public class RoleCollection : Collection<Role>
{
}
public class RoleProvider
{
    public const string CACHE_KEY = "ROLES";
    private static string _anonymous;
    public RoleCollection GetAllRoles()
    {
        DataView dv = GetAllRolesCache();

        RoleCollection roles = new RoleCollection();

        for (int i = 0; i < dv.Count; i++)
        {
            roles.Add(new Role(
                dv[i]["RoleId"].ToString(),
                dv[i]["RoleName"].ToString(),
                Convert.ToInt16(dv[i]["RoleLevel"])
                ));
        }

        return roles;

    }
    public static string Anonymous
    {
        get
        {
            if (String.IsNullOrEmpty(_anonymous))
            {
                Role role = GetRoleByLevel(0);
                if (role != null) _anonymous = role.ID;
            }
            return _anonymous;
        }
    }
    public static void AddNew(string name, string description, int level)
    {
        try
        {
            Program.Connection.AddNew("Roles", "RoleName, Description, RoleLevel", name, description, level);
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    public static void Update(string id, string name, string description, int level)
    {
        try
        {
            Program.Connection.Update("Roles", "WHERE RoleId='" + id + "'", "RoleName, Description, RoleLevel", name, description, level);
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    public static DataView GetAllRolesCache()
    {
        DataView dv = (DataView)HttpContext.Current.Cache[CACHE_KEY];
        if (dv == null)
        {
            dv = Program.Connection.Select("*", "Roles", "ORDER BY RoleLevel, RoleName");
            HttpContext.Current.Cache.Insert(CACHE_KEY, dv, null, DateTime.Now.AddHours(1), System.Web.Caching.Cache.NoSlidingExpiration);
        }
        return dv;
    }
    public static Role GetRoleById(string id)
    {
        DataView dv = new DataView();
        Role role = null;
        dv = GetAllRolesCache();
        DataRow[] rows = dv.Table.Select("RoleId='" + id + "'");
        if (rows.Length > 0)
        {
            role = new Role(rows[0]["RoleID"].ToString(),
                rows[0]["RoleName"].ToString(),
                Convert.ToInt16(rows[0]["RoleLevel"])
);
        }
        return role;
    }
    public static Role GetRoleByName(string rolename)
    {

        Role role = null;
        DataView dv = GetAllRolesCache();
        DataRow[] rows = dv.Table.Select("RoleName='" + rolename + "'");
        if (rows.Length > 0)
        {
            role = new Role(rows[0]["RoleId"].ToString(),
                rows[0]["RoleName"].ToString(),
                Convert.ToInt16(rows[0]["RoleLevel"])
);
        }
        return role;
    }
    public static int GetRoleLevel(string id)
    {
        int level = 0;
        DataView dv = GetAllRolesCache();
        DataRow[] rows = dv.Table.Select("RoleId='" + id + "'");
        if (rows.Length > 0)
        {
            level = Convert.ToInt32(rows[0]["RoleLevel"]);

        }
        return level;
    }
    public static Role GetRoleByLevel(int level)
    {
        Role role = null;
        DataView dv = GetAllRolesCache();
        DataRow[] rows = dv.Table.Select("RoleLevel=" + level + "");
        if (rows.Length > 0)
        {
            role = new Role(rows[0]["RoleID"].ToString(),
                rows[0]["RoleName"].ToString(),
                Convert.ToInt16(rows[0]["RoleLevel"])
);
        }
        return role;
    }
    public static string[] GetRolesForUser()
    {
        if (!String.IsNullOrEmpty(CurrentUser.UserName))
        {
            return CurrentUser.Roles;
        }
        return new string[0];
    }
    public static string[] GetRolesForUser(string userid)
    {

        DataView dv = Program.Connection.Select("UR.RoleId, R.RoleLevel", "UsersInRoles UR INNER JOIN Roles R ON R.RoleID=UR.RoleID", "WHERE UR.UserId='" + userid + "' ORDER BY R.RoleLevel DESC");
        string[] roles = new string[dv.Count];
        for (int i = 0; i < dv.Count; i++)
        {
            roles[i] = dv[i]["RoleId"].ToString();
        }
        return roles;

    }
    public static bool IsUserInRole(string userid, string roleid)
    {
        if (new Connection().Count("RoleID", "UsersInRoles", "WHERE UserId='" + userid + "' AND RoleId='" + roleid + "'") > 0) return true;
        return false;
    }
    public static string[] UsersInRole(string roleid)
    {

        DataView dv = Program.Connection.Select("U.UserName", "UsersInRoles", "WHERE RoleId='" + roleid + "'");
        string[] users = new string[dv.Count];

        if (dv.Count > 0)
        {
            for (int i = 0; i < dv.Count; i++)
            {
                users[i] = dv[i]["UserName"].ToString();
            }
        }

        return users;
    }
    public static bool IsGranted(string username, string[] compareValues)
    {
        User user = UserProvider.GetUser(username);
        if (user == null) return false;
        return IsGranted(user.Roles, compareValues);
    }
    public static bool IsGranted(string[] roles, string[] compareValues)
    {
        Star.Text.Array array = new Star.Text.Array(compareValues);
        return array.Exists(roles);
    }
    public static void Reload()
    {
        HttpContext.Current.Cache.Remove(CACHE_KEY);
    }
}
public class Program
{
    private static Setting _settings;
    public static Connection Connection { get { return new Connection(); } }
    public static Setting Settings { get { if (_settings == null) _settings = new Setting(); return _settings; } }
}
public class CurrentUser
{
    public static string ID { get { return UserProvider.GetTicketData("id"); } }
    public static string UserName { get { return UserProvider.GetTicketData("usn"); } }
    public static string DisplayName { get { return UserProvider.GetTicketData("dpName"); } }
    public static string[] Roles { get { if (String.IsNullOrEmpty(UserName)) return new string[] { RoleProvider.Anonymous }; else return UserProvider.GetTicketData("roles").Split(','); } }

}

