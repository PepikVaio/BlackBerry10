import bb.cascades 1.4
//********************

// ActionItem for "../Pages/Page_Result.qml"
// ActionItem for "../Pages/Page_Github.qml"
ActionItem {
    title: "Scroll to top"
    imageSource: "asset:///Icons/Icon_ScrollToTop.png"
    ActionBar.placement: ActionBarPlacement.InOverflow

    onTriggered: {
        scrollView.scrollToPoint(0, 0)
    }
}
