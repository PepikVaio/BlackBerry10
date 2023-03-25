import bb.cascades 1.4

// import JavaScripts
import "asset:///JavaScripts/JavaScript_Page_Remote.js" as JS
//***********************************************************

// ActionItem for "asset:///Pages/Page_Remote.qml"
ActionItem {
    title: qsTr("Context") + Retranslate.onLanguageChanged
    ActionBar.placement: ActionBarPlacement.OnBar
    imageSource: "asset:///Images/Image_Context.png"

    onTriggered: {

        // var for JS.function_SendRequest()
        var command = "POST"
        var method = "Input.ContextMenu"
        var params = '{}';
        var id = "1";
        //******************************

        //custom_Timer_01.alias_Timer_01.start();
        JS.function_SendRequest(tabbedPane.property_KodiIpAdress, tabbedPane.property_KodiPort, command, method, params, id)
    }
}
