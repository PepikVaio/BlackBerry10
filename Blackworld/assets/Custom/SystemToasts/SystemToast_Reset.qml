import bb.cascades 1.4
import bb.system 1.2
//********************

// SystemToast for "../Sheets/Sheet_Settings.qml"
Container {

    // alias for "SystemToast"
    property alias alias_Id: systemToast
    //**********************************

    attachedObjects: [

        SystemToast {
            id: systemToast
            body: "All items have been reset and save to their default values."
        }
    ]
}
