import bb.cascades 1.4
//********************

// import JavaScript
import "asset:///JavaScripts/JavaScript_Links.js" as JS_Links
//***********************************************************

// ActionItem for "../Pages/Page_Github.qml"
ActionItem {
    title: "Reload"
    imageSource: "asset:///Icons/Icon_Reload.png"
    ActionBar.placement: ActionBarPlacement.InOverflow

    onTriggered: {
        webView.reload()
    }

    shortcuts: [

        Shortcut {
            key: "L"
        }
    ]
}
