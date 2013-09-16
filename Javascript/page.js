var page = {
    init: function () {
        this.mode = {
            "View" :0,
            "AddNew" : 1,
            "Edit" : 2,
            "Delete" : 3
        }

    },
    Clear: function (key, value) {
        var key = $get(key);
        var value = $get(value);
        if (key) key.value = "";
        if (value) {
            if (value.type == 'text') value.value = "";
            else value.innerHTML = "";
        }
    },
    appendQuery: function (query) {
        var url = document.URL;
        if (url.lastIndexOf("#") == url.length - 1) url = url.substring(0, url.length - 1);
        if (url.indexOf("?") > -1) {
            var val = getValue(query);
            var key = getKey(query);

            if (Request(key)) url = url.replace(key + "=" + Request(key), key + "=" + val);
            else
                url += "&" + query;
        } else {
            url += "?" + query;
        }
        return url;

    },
    getUrl: function (url) {
        location.href = url;
    },
    add: function (pages, queryString) {
        var url = page.appendQuery("mode=" + this.mode.AddNew + (queryString != undefined ? queryString : ""));
        url = url.substring(url.indexOf("?"))
        if (pages != undefined) {
            location.href = String.format("../Pages/{0}.aspx{1}", pages, url);
        } else
            location.href = String.format("{0}", url);
    },
    edit: function (id, pages) {
        location.href = String.format("?mode=" + this.mode.Edit + "&id=" + id);
    },
    query: function (queryString) {
        var url = document.URL;
        if (url.indexOf("?") > 0)
            url = url.substring(0, url.indexOf("?"));
        location.href = String.format("{0}?{1}", url, queryString);
    },
    goBack: function (pages, queryString) {
        location.href = String.format("?mode=" + this.mode.View);
    },
    getValidURL: function(url) {
        return url.replace(/[^\w@-]/g, "");
    },
    getUrl: function (url) {
        this.saveReferer();
        location.href = url;
    },
    saveReferer: function() {
        setCookie("refURL", document.URL);
    },
    gotoReferer: function () {
        var url = getCookie("refURL");
        if (!url) url = "../Pages/";
        location.replace(url);
    }
};
page.init();
