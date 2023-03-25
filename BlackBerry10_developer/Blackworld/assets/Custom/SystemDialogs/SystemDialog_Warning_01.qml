import bb.cascades 1.4
import bb.system 1.2
//********************

// SystemDialog for "../Sheets/Sheet_Settings.qml"
Container {

    // alias for "SystemToast"
    property alias alias_Id: systemDialog
    //***********************************

    //signal for "../Sheets/Sheet_Settings.qml"
    signal signal_Finished()
    //*****************************************

    attachedObjects: [

        SystemDialog {
            id: systemDialog
            title: "Warning"
            body: "• This setting cannot be saved. It will be reset when the app is closed. \n • Applications may become unstable. \n • Do you accept this risk?"

            onFinished: {
                // send a signal to "../Sheets/Sheet_Settings.qml"
                signal_Finished()
            }
        }
    ]
}
