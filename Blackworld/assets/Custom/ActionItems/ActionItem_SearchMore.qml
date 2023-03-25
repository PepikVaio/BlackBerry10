import bb.cascades 1.4
//********************

// ActionItem for "../Pages/Page_Result.qml"
ActionItem {
    enabled: page.property_Enabled_02 // (get value from "../Pages/Page_Result.qml" "onSignal_from_Page")
    title: "More from: " + page.property_LoadingText // get value from "../JavaScripts/JavaScript_Requests.js"
    imageSource: "asset:///Icons/Icon_SearchMore.png"
    ActionBar.placement: ActionBarPlacement.InOverflow

    onTriggered: {
        // dodelat
        // otevrit list s aplikacemi pouze jednoho vyvojare
    }
}
