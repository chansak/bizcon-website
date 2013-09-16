using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
/// <summary>
/// Represents the current Database Connection
/// </summary>
public class Connection : Star.Data.Common
{
    public Connection()
        : base()
    {
        this.Provider = ConfigurationManager.ConnectionStrings["Connection"].ProviderName;
        this.Owner = ConfigurationManager.AppSettings["DBOwner"];
        this.UserName = ConfigurationManager.AppSettings["DBUsername"];
        if (Convert.ToBoolean(ConfigurationManager.AppSettings["PasswordEncrypt"]))
        {
            this.Password = Star.Security.Cryptography.Text.Decrypt(ConfigurationManager.AppSettings["DBPassword"], ConfigurationManager.AppSettings["DBUsername"]);
        }
        else
        {
            this.Password = ConfigurationManager.AppSettings["DBPassword"];
        }
        this.ConnectionString = String.Format(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString, this.UserName, this.Password);
    }
    public Connection(string connectionName)
        : base()
    {
        this.Provider = ConfigurationManager.ConnectionStrings[connectionName].ProviderName;
        this.Owner = ConfigurationManager.AppSettings["DBOwner"];
        this.UserName = ConfigurationManager.AppSettings["DBUsername"];
        if (Convert.ToBoolean(ConfigurationManager.AppSettings["PasswordEncrypt"]))
        {
            this.Password = Star.Security.Cryptography.Text.Decrypt(ConfigurationManager.AppSettings["DBPassword"], ConfigurationManager.AppSettings["DBUsername"]);
        }
        else
        {
            this.Password = ConfigurationManager.AppSettings["DBPassword"];
        }
        this.ConnectionString = String.Format(ConfigurationManager.ConnectionStrings[connectionName].ConnectionString, this.UserName, this.Password);
    }
    public Connection(string connectionstring, string provider)
        : base(connectionstring, provider)
    {

    }
    public Connection(string connectionstring, DataProvider provider)
    {
        this.Provider = "System.Data." + provider.ToString();
        this.ConnectionString = connectionstring;
    }
}
//public enum DataProvider
//{
//    OleDb = 0,
//    SqlClient = 1,
//    OracleClient = 2
//}
