import bb.cascades 1.4
//********************

// Container for "../Custom/ToggleButtons/ToggleButton_AdaptiveTheme.qml"
// Container for "../Custom/ToggleButtons/ToggleButton_AutohideActionBar.qml"
// Container for "../Custom/ToggleButtons/ToggleButton_AutohideTitleBar.qml"
// Container for "../Custom/ToggleButtons/ToggleButton_ShowBetaOption.qml"
// Container for "../Custom/ToggleButtons/ToggleButton_ShowTabsOnActionBar.qml"
Container {

    // property for indentation
    property real property_Indentation: 1
    //***********************************

    topMargin: ui.sddu(property_Indentation)
    bottomMargin: ui.sddu(property_Indentation)

    topPadding: ui.sddu(property_Indentation)
    bottomPadding: ui.sddu(property_Indentation + 1)
    leftPadding: ui.sdu(property_Indentation)
    rightPadding: ui.sddu(property_Indentation)
}
