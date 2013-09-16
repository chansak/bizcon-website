using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Data;

public class CoreLib {
    public const string PRODUCT_KEY = "PRODUCT_KEY";
    public static DataView getProductsList()
    {
        DataView dv = (DataView)HttpContext.Current.Cache[PRODUCT_KEY];
        if (dv == null)
        {
            dv = Program.Connection.Select("P.*", "Products P INNER JOIN Brands B ON P.BrandId=B.BrandId", "Order by IndexNumber");
            HttpContext.Current.Cache.Insert(PRODUCT_KEY, dv, null, DateTime.Now.AddHours(1), System.Web.Caching.Cache.NoSlidingExpiration);
        }
        return dv;
    }
    public static DataView getProductByID(string id)
    {
        return Program.Connection.Select("P.*", "Products P INNER JOIN Brands B ON P.BrandId=B.BrandId", string.Format("WHERE P.ProductId='{0}' Order by IndexNumber", id));
    }
}
public class InternalSystem
{
    public InternalSystem(object id, object systemname, object url, object enable)
    {
        ID = Convert.ToInt16(id);
        SystemName = systemname.ToString();
        NavigateUrl = url.ToString();
        Enable = Convert.ToBoolean(enable);
    }
    public int ID { get; set; }
    public string SystemName { get; set; }
    public string NavigateUrl { get; set; }
    public bool Enable { get; set; }
    public string[] Roles { get; set; }
}
public class InternalSystemCollection : Collection<InternalSystem> { }
public class InternalSystemProvider
{
    public const string SYSTEM_CACHEKEY = "SYSTEM";
    public static DataView SystemList()
    {
        DataView dv = (DataView)HttpContext.Current.Cache.Get(SYSTEM_CACHEKEY);
        if (dv == null)
        {
            dv = Program.Connection.Select("*", "InternalSytem", "WHERE Enable=1");
            HttpContext.Current.Cache.Insert(SYSTEM_CACHEKEY, dv, null, DateTime.Now.AddHours(1), System.Web.Caching.Cache.NoSlidingExpiration);
        }
        return dv;
    }
    public static InternalSystemCollection SystemCollection()
    {
        DataView dv = (DataView)HttpContext.Current.Cache.Get(SYSTEM_CACHEKEY);
        InternalSystemCollection internalSystem = new InternalSystemCollection();
        if (dv == null)
            dv = Program.Connection.Select("*", "InternalSystem", "WHERE Enable=1");
        foreach (DataRow row in dv.Table.Rows)
        {
            internalSystem.Add(new InternalSystem(row["ID"], row["SystemName"], row["NavigateUrl"], row["Enable"]));
        }
        HttpContext.Current.Cache.Insert(SYSTEM_CACHEKEY, dv, null, DateTime.Now.AddHours(1), System.Web.Caching.Cache.NoSlidingExpiration);

        return internalSystem;
    }
}

public class Customer {
    public string CustomerID { get; set; }
    public int CustomerGroup { get; set; }
    public int CustomerType { get; set; }
    public string Name { get; set; }
    public string Address { get; set; }
    public string Tel { get; set; }
    public string Fax { get; set; }
    public string AttnName { get; set; }
}
public class CustomerCollection : Collection<Customer> { }
public class CustomerProvider {
    public const string SYSTEM_CACHEKEY = "CUST";
    public static DataView CustomerList() {
        //DataView dv = (DataView)HttpContext.Current.Cache.Get(SYSTEM_CACHEKEY);
        //if (dv == null)
        //{
        //    dv = Program.Connection.Select("*", "Customer", "");
        //    HttpContext.Current.Cache.Insert(SYSTEM_CACHEKEY, dv, null, DateTime.Now.AddHours(1), System.Web.Caching.Cache.NoSlidingExpiration);
        //}
        DataView dv = Program.Connection.Select("*", "Customer", "");
        return dv;
    }
    public static int CreateCustomer(Customer c) {
        return 0;
    }
}