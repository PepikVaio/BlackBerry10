import bb.cascades 1.4
import bb.system 1.2

// import JavaScripts
import "../../JavaScripts/JavaScript_main.js" as JS
//*************************************************

// SystemToast for "asset:///main.qml"
Container {

    // alias for "SystemToast"
    property alias alias_SystemToast_02: systemToast
    //**********************************************

    attachedObjects: [

        SystemToast {
            id: systemToast
            body: "You are not connected to Kodi"
        }
    ]
}
