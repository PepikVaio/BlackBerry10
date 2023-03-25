import bb.cascades 1.4
//********************

// ActionItem for "../Pages/Page_BlackWorld.qml"
ActionItem {
    title: "Scroll to top"
    imageSource: "asset:///Icons/Icon_ScrollToTop.png"
    ActionBar.placement: ActionBarPlacement.InOverflow

    onTriggered: {
        listView_for_Pages.scrollToPosition(ScrollPosition.Beginning, ScrollAnimation.Default);
    }
}
