import bb.cascades 1.4
//********************

// "mainContainer" for "../Pages/Page_BlackWorld.qml"
// "mainContainer" for "../Pages/Page_Result.qml"
Container {

    // property for margin
    property real property_Margin: 1.5
    //********************************

    topPadding: ui.sdu(property_Margin)
    bottomPadding: ui.sdu(property_Margin - 1)
    leftPadding: ui.sdu(property_Margin)
    rightPadding: ui.sdu(property_Margin)
}
