import bb.cascades 1.4
import bb.system 1.2
//********************

// SystemProgressToast for "../Sheets/Sheet_Settings.qml"
Container {

    // alias for "SystemProgressToast"
    property alias alias_Id: systemProgressToast
    //******************************************

    attachedObjects: [

        SystemProgressToast {
            id: systemProgressToast
            body: "Resetting the settings..."
        }
    ]
}
