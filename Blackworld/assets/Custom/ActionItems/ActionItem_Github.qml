import bb.cascades 1.4
//********************


import "asset:///JavaScripts/JavaScript_Page_Github.js" as JS

//*************************************************************

// ActionItem for "../Pages/Page_Result.qml"
ActionItem {
    enabled: page.property_Enabled_02 // (get value from "../Pages/Page_Result.qml" "onSignal_from_Page")
    title: "Github"
    imageSource: "asset:///Icons/Icon_Github.png"
    ActionBar.placement: ActionBarPlacement.InOverflow

    onTriggered: {
        // call funkction from "../JavaScripts/JavaScript..."
        JS.function_CreatePage_02()
    }
}
