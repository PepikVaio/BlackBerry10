import bb.cascades 1.4

// import folders
import "asset:///JavaScripts/JavaScript_Workouts.js" as JS

// ActionItem for "../Pages/Page_Workouts.qml"
ActionItem {
    title: "Chose a week"
    ActionBar.placement: ActionBarPlacement.Signature

    onTriggered: {
        JS.function_ClearList_02()
        JS.function_LoadXML_02()
        JS.function_ShowDialog_02()
    }
}
