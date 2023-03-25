import bb.cascades 1.4
import bb.system 1.2
//********************

// SystemToast for "../Pages/Page.qml"
Container {

    // alias for "SystemToast"
    property alias alias_Id: systemToast
    //**********************************

    attachedObjects: [

        SystemToast {
            id: systemToast
            body: "This screen is for experienced user."
        }
    ]
}
