import bb.cascades 1.4
//********************

// ActionItem for "../Pages/Page_Github.qml"
ActionItem {
    title: "Backward"
    imageSource: "asset:///Icons/Icon_GoToBackward.png"
    ActionBar.placement: ActionBarPlacement.InOverflow

    onTriggered: {
        webView.goBack()
    }

    shortcuts: [

        SystemShortcut {
            type: SystemShortcuts.PreviousSection
        }
    ]
}
