import bb.cascades 1.4
import bb.system 1.2

// SystemToast for "asset:///main.qml"
Container {

    // alias for "SystemToast"
    property alias alias_SystemToast_01: systemToast
    //**********************************************

    attachedObjects: [
        
        SystemToast {
            id: systemToast
            body: qsTr("You are connected to " + tabbedPane.property_KodiName + "") + Retranslate.onLanguageChanged // (get data from "asset:///main.qml")
        }
    ]
}
