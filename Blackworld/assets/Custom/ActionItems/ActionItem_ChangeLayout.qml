import bb.cascades 1.4
//********************

// import JavaScript
import "../../JavaScripts/JavaScript_Page_BlackWorld.js" as JS
//************************************************************

// ActionItem for "../Pages/BlackWorld.qml"
ActionItem {
    title: navigationPane.property_ActionItem_ChangeLayout_Title
    imageSource: navigationPane.property_ActionItem_ChangeLayout_ImageSource
    ActionBar.placement: ActionBarPlacement.OnBar

    onTriggered: {
        // call function from "../JavaScripts/JavaScript_Page_BlackWorld.js"
        JS.function_ChangeVisible_01()
        JS.function_ChangeLayout_01()
        JS.function_ChangeTitle_01()
        JS.function_ChangeImage_01()
        JS.function_RequestFocus_01()
    }
}
