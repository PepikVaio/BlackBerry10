import bb.cascades 1.4
//********************

// import JavaScript
import "../../JavaScripts/JavaScript_Page_BlackWorld.js" as JS
//************************************************************

// ActionItem for "../Pages/BlackWorld.qml"
ActionItem {
    id: actionItem
    title: navigationPane.property_ActionItem_Sort_Title
    imageSource: navigationPane.property_ActionItem_Sort_ImageSource
    ActionBar.placement: ActionBarPlacement.OnBar

    onTriggered: {
        // call function from "../JavaScripts/JavaScript_Page_BlackWorld.js"
        JS.function_ChangeVisible_02()
        JS.function_ChangeVisibility_01()
        JS.function_ChangeTitle_02()
        JS.function_ChangeImage_02()
        JS.function_RequestFocus_01()
    }
}
