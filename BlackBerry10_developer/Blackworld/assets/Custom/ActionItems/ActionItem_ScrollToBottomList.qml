import bb.cascades 1.4
//********************

// ActionItem for "../Pages/Page_BlackWorld.qml"
ActionItem {
    title: "Scroll to bottom"
    imageSource: "asset:///Icons/Icon_ScrollToBottom.png"
    ActionBar.placement: ActionBarPlacement.InOverflow
    
    onTriggered: {
        listView_for_Pages.scrollToPosition(ScrollPosition.End, ScrollAnimation.Default);
    }
}
