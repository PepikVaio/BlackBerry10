import bb.cascades 1.4
import custom.Timer 1.0

// import JavaScripts
import "asset:///JavaScripts/JavaScript_main.js" as JS
//****************************************************

// Timer for "asset:///main.qml"
Container {

    // alias for "Timer"
    property alias alias_Timer_01: timer
    //**********************************

    Timer {
        id: timer
        interval: 1000

        onTimeout: {
            // var for "function_ConnectionTest"
            var command = "GET";
            var method = "JSONRPC.Ping";
            var params = '{}';
            var id = "1";
            //**************************

            custom_Timer_02.alias_Timer_02.start();
            JS.function_ConnectionTest(tabbedPane.property_KodiIpAdress, tabbedPane.property_KodiPort, command, method, params, id)
        }
    }
}
