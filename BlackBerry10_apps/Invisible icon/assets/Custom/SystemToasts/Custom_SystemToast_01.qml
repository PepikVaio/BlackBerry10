import bb.cascades 1.4
import bb.system 1.2

// SystemToast for "asset://Pages/Page.qml"
Container {

    // alias for "SystemToast"
    property alias alias_Id: systemToast
    //**********************************

    attachedObjects: [

        SystemToast {
            id: systemToast
            // body: (get data from "asset://Custom/ActionItems/Custom_ActionItem_01.qml") 
        }
    ]
}
