import bb.cascades 1.4
//********************

// import JavaScript
import "asset:///JavaScripts/JavaScript_Page_Github.js" as JS
//***********************************************************

// ActionItem for "../Pages/Page_Github.qml"
ActionItem {
    title: "Home"
    imageSource: "asset:///Icons/Icon_Home.png"
    ActionBar.placement: ActionBarPlacement[navigationPane.property_Home_Placement]

    onTriggered: {
        JS.function_ChangeLink_02()
    }

    shortcuts: [

        Shortcut {
            key: "H"
        }
    ]
}
