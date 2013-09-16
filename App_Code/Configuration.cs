using System;
using System.Configuration;
using System.Web;
using System.Web.Configuration;
using System.Globalization;
using System.Data;
using System.Collections;


public sealed class Configurations
{
    private static ClientSettings _client;

    public Configurations()
    {
    }
    public static void Initialize()
    {
        _client = new ClientSettings();

    }
    public void Reload()
    {
        _client = new ClientSettings();
    }
    public static ClientSettings Client { get { if (_client == null) _client = new ClientSettings(); return _client; } }
}
public sealed class ClientSettings
{
    private string _cookiePrefix;
    public ClientSettings()
    {
        _cookiePrefix = "";// ConfigurationManager.AppSettings["cookiePrefix"];
    }
    public string CookiePrefix { get { return _cookiePrefix; } set { _cookiePrefix = value; } }
    /// <summary>
    ///  get or set the value of settings.
    /// </summary>
    /// <param name="key">The key of the settings collection.</param>
    /// <returns>The value of the settings.</returns>

    public string this[string key]
    {
        get
        {
            return GetValue(key);
        }
        set
        {
            SetValue(key, value);
        }
    }
    /// <summary>
    ///  Get value of settings.
    /// </summary>
    /// <param name="key">The key of the settings collection.</param>
    /// <param name="encrypted">If this value was protected by encryption the encrypted param must be true. otherwise false.</param>
    /// <returns>The value of the settings.</returns>
    public string this[string key, bool encrypted]
    {
        get
        {
            return GetValue(key, encrypted);
        }
        set
        {
            SetValue(key, value, encrypted);
        }
    }

    private string GetValue(string key)
    {
        HttpCookie cookie = HttpContext.Current.Request.Cookies[this._cookiePrefix + key];
        if (cookie != null)
        {
            return cookie.Value;
        }
        else
        {
            SetValue(key, "");
        }
        return String.Empty;
    }
    private string GetValue(string key, bool decrypt)
    {
        HttpCookie cookie = HttpContext.Current.Request.Cookies[this._cookiePrefix + key];
        
        if (cookie != null)
        {
            if (decrypt) cookie = Star.Security.Cryptography.Cookie.Decrypt(cookie);

            return cookie.Value;
        }
        else
        {
            SetValue(key, "", decrypt);
        }
        return String.Empty;
    }
    private void SetValue(string key, object value)
    {
        HttpCookie cookie = new HttpCookie(this._cookiePrefix + key);
        cookie.Value = value.ToString();
        cookie.Secure = false;
        cookie.Expires = DateTime.MaxValue;
        cookie.Path = "/";
        if (HttpContext.Current.Request.Cookies[key] == null)
        {
            HttpContext.Current.Response.Cookies.Add(cookie);
        }
        else
        {
            HttpContext.Current.Response.SetCookie(cookie);
        }
    }
    private void SetValue(string key, object value, bool encrypt)
    {
        HttpCookie cookie = new HttpCookie(this._cookiePrefix + key);
        cookie.Value = value.ToString();
        cookie.Secure = false;
        cookie.Expires = DateTime.MaxValue;
        cookie.Path = "/";
        if (encrypt) cookie = Star.Security.Cryptography.Cookie.Encrypt(cookie);
        if (HttpContext.Current.Request.Cookies[key] == null)
        {
            HttpContext.Current.Response.Cookies.Add(cookie);
        }
        else
        {
            HttpContext.Current.Response.SetCookie(cookie);
        }
    }
    /// <summary>
    /// Clear all settings from the settingscollection.
    /// </summary>
    public void Clear()
    {
        HttpContext.Current.Response.Cookies.Clear();
    }
    /// <summary>
    /// Remove specified settings from the settingscollection.
    /// </summary>
    /// <param name="key">The specified key of the settings.</param>
    public void Remove(string key)
    {
        HttpContext.Current.Response.Cookies.Remove(key);
    }
}
public class Setting
{
    //private Theme _theme;
    private Hashtable _items;
    public Setting()
    {
        this._items = new Hashtable();
    }
    public string this[string key]
    {
        get
        {
            return GetValue(key);
        }
        set
        {
            SetValue(key, value);
        }
    }
    public string this[string key, bool encypted]
    {
        get
        {
            return GetValue(key, true);
        }
        set
        {
            SetValue(key, value, true);
        }
    }
    public void LoadConfig()
    {

    }
    private string GetValue(string key)
    {
        return GetValue(key, false);
    }
    private string GetValue(string key, bool decrypted)
    {
        if (this._items[key] != null)
        {
            string value = this._items[key].ToString();
            if (decrypted) value = Star.Security.Cryptography.Text.Decrypt(value);
            return value;
        }
        else return "";
    }
    private void SetValue(string key, string value)
    {
        SetValue(key, value, false);
    }
    private void SetValue(string key, string value, bool encrypted)
    {
        if (encrypted) value = Star.Security.Cryptography.Text.Encrypt(value);
        this._items.Add(key, value);
    }
}