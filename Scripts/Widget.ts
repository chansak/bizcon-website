class Widget{
    _widgetID: string;
    _widgetName: string;
    constructor(id: string, name: string) {
        this._widgetID = id;
        this._widgetName = name;
    }
    CreateWidget() {
        alert("Create widget.");
    }
}