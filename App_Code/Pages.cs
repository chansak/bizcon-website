using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Pages
/// </summary>
public class WebForm : System.Web.UI.Page
{
    public enum NotifyType { 
        alert=1,
        error=2,
        success=3,
        info=4
    }
    private static string NotifyClassName(int index)
    {
        string className = "";
        switch (index) {
            case 1:
                {
                    className = "alert alert-block";
                    break;
                }
            case 2:
                {
                    className= "alert alert-error";
                    break;
                }
            case 3:
                {
                    className= "alert alert-success";
                    break;
                }
            case 4:
                {
                    className= "alert alert-info";
                    break;
                }
            default:
                {
                    break;
                }
        }
        return className;
    }
    public WebForm() {
        this.Theme = "Default";
    }
    public static string NotifyMessage(string elementId, NotifyType type, string title, string message, string fnc_complete)
    {
        return "$('.btn').attr('disabled','disabled').removeAttr('onclick');$('#" + elementId + "').html(\"<button type='button' class='close' data-dismiss='alert' onclick='" + fnc_complete + "'>&times;</button><h4>" + title + "</h4>" + message + "\").fadeIn().addClass('" + NotifyClassName((int)type) + "').delay(3000).fadeOut(1000,function(){" + fnc_complete + "});";
    }

}