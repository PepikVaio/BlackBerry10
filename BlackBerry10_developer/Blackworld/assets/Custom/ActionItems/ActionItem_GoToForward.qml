import bb.cascades 1.4
//********************

// ActionItem for "../Pages/Page_Github.qml"
ActionItem {
    title: "Forward"
    imageSource: "asset:///Icons/Icon_GoToForward.png"
    ActionBar.placement: ActionBarPlacement.InOverflow

    onTriggered: {
        webView.goForward()
    }

    shortcuts: [

        SystemShortcut {
            type: SystemShortcuts.NextSection
        }
    ]
}
