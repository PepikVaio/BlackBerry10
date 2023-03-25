import bb.cascades 1.4
//********************

// import JavaScript
import "asset:///JavaScripts/JavaScript_Page_Result.js" as JS
//***********************************************************

// ActionItem for "../Pages/Page_Result.qml"
ActionItem {
    enabled: page.property_Enabled_01 // (get value from "../Pages/Page_Result.qml" "onSignal_from_Page")
    title: "Download"
    imageSource: "asset:///Icons/Icon_Download.png"
    ActionBar.placement: ActionBarPlacement.InOverflow

    onTriggered: {
        // call funkction from "../JavaScripts/JavaScript..."
        JS.function_ChangeLink_01()
    }
}
