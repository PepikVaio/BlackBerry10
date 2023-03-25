import bb.cascades 1.4
import custom.Timer 1.0

// import JavaScripts
import "asset:///JavaScripts/JavaScript_main.js" as JS
//****************************************************

// Timer for "asset:///main.qml"
Container {

    // alias for "Timer"
    property alias alias_Timer_02: timer
    //**********************************

    Timer {
        id: timer
        interval: 1000

        onTimeout: {
            timer.stop()
            //JS.function_ChangeValue_01()
            //JS.function_ShowNotification_02X()
            
            
            if (tabbedPane.property_KodiConnection == 0 || tabbedPane.property_KodiConnection == 4) {
                tabbedPane.property_KodiConnection = 1;
                JS.function_ShowNotification_02X()
            }
        }
    }
}
