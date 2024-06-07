import bb.cascades 1.4

// import folders
import "asset:///JavaScripts/JavaScript_Workouts.js" as JS

// ActionItem for "../Pages/Page_Workouts.qml"
ActionItem {
    title: "Choose a plan"
    ActionBar.placement: ActionBarPlacement.OnBar
    
    onTriggered: {
        JS.function_ClearList_01()
        JS.function_LoadXML_01()
        JS.function_ShowDialog_01()
    }
}
