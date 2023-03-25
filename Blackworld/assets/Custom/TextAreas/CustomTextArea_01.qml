import bb.cascades 1.4

// TextArea for "asset://Pages/Page_Result.qml"
TextArea {
    editable: false
    text: page.property_LoadingText // (get value from "asset://JavaScripts/JavaScript_Page_Result.js")
    touchPropagationMode: TouchPropagationMode.None
}
