import bb.cascades 1.4
//********************

// MainContainer for "../Sheets/Sheet_Settings.qml"
Container {

    // property for indentation
    property real property_Indentation: 1.5
    //*************************************

    topPadding: ui.sdu(property_Indentation + 1)
    bottomPadding: ui.sdu(property_Indentation)
    leftPadding: ui.sdu(property_Indentation)
    rightPadding: ui.sdu(property_Indentation)
}
