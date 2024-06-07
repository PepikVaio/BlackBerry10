import bb.cascades 1.4

// import JavaScripts
import "asset:///JavaScripts/JavaScript_Page.js" as JS
//****************************************************

// ActionItem for "../Pages/Page.qml"
ActionItem {
    // title: (get data from "asset://Custom/Sliders/Custom_Slider_01.qml")
    imageSource: "asset:///Icons/icon_add.png"
    ActionBar.placement: ActionBarPlacement.Signature

    onTriggered: {
        JS.function_ChangeBody_01()
        JS.function_Loop_01()
        JS.function_Show_01()
    }
}
