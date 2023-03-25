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
            body: "• This option resets and saves all setting items to their default values."

            onFinished: {
                // send a signal to "../Sheets/Sheet_Settings.qml"
                signal_Finished()
            }
        }
    ]
}
