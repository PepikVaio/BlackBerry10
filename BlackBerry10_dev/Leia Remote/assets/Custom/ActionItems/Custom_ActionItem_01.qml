import bb.cascades 1.4

// import JavaScripts
import "asset:///JavaScripts/JavaScript_main.js" as JS2
import "asset:///JavaScripts/JavaScript_Page_Remote.js" as JS
//***********************************************************

// ActionItem for "asset:///Pages/Page_Remote.qml"
ActionItem {
    title: qsTr("Back") + Retranslate.onLanguageChanged
    ActionBar.placement: ActionBarPlacement.OnBar
    imageSource: "asset:///Images/Image_Back.png"

    onTriggered: {
        // var for JS.function_SendRequest()
        var command = "POST"
        var method = "Input.Back"
        var params = '{}';
        var id = "1";
        //***********************

        JS.function_CheckKodiConnection(tabbedPane.property_KodiIpAdress, tabbedPane.property_KodiPort, command, method, params, id)


        //JS.function_SendRequest(tabbedPane.property_KodiIpAdress, tabbedPane.property_KodiPort, command, method, params, id)

        //        if (tabbedPane.property_KodiConnection == true) {
        //            JS.function_SendRequest(tabbedPane.property_KodiIpAdress, tabbedPane.property_KodiPort, command, method, params, id)
        //        } else {
        //            JS2.function_ShowNotification_01()
        //        }
    }
}
