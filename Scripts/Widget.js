var Widget = (function () {
    function Widget(id, name) {
        this._widgetID = id;
        this._widgetName = name;
    }
    Widget.prototype.CreateWidget = function () {
        alert("Create widget.");
    };
    return Widget;
})();
