import bb.cascades 1.4
//********************

// MainContainer for "../Pages/Page_BlackWorld.qml"
// MainContainer for "../Pages/Page_Result.qml"
Container {

    // property for indentation
    property real property_Indentation: 1.5
    //*************************************

    topPadding: ui.sdu(property_Indentation)
    bottomPadding: ui.sdu(property_Indentation - 1)
    leftPadding: ui.sdu(property_Indentation)
    rightPadding: ui.sdu(property_Indentation)
}
