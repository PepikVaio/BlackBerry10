import bb.cascades 1.4
import custom.Timer 1.0
//*********************

// Timer for "../Sheets/Sheet_Settings.qml"
Container {

    // alias for "Timer"
    property alias alias_Id: timer
    //****************************

    //signal for "../Sheets/Sheet_Settings.qml"
    signal signal_Timeout()
    //*****************************************

    Timer {
        id: timer
        interval: 1000

        onTimeout: {
            // send a signal to "../Sheets/Sheet_Settings.qml"
            signal_Timeout()
        }
    }
}