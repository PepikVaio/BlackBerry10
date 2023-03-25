import bb.cascades 1.4

// import JavaScripts
import "asset:///JavaScripts/JavaScript_Page_Remote.js" as JS
//***********************************************************

// TextField for "asset:///Custom/TitleBars/CustomTitleBar_02"
Container {

    property alias alias_TextField: textField

    TextField {
        id: textField
        input.submitKey: SubmitKey.Send

        onTextChanging: {
            // var for JS.function_SendRequest()
            var command = "POST"
            var method = "Input.SendText"
            var params = '{"text":"' + textField.text + '","done":false}';
            var id = "0";
            //*******************************************************************

            //custom_Timer_01.alias_Timer_01.start();
            JS.function_SendRequest(tabbedPane.property_KodiIpAdress, tabbedPane.property_KodiPort, command, method, params, id)
        }

        input.onSubmitted: {
            page.setTitleBar(custom_TitleBar_01)

            // var for JS.function_SendRequest()
            var command = "POST"
            var method = "Input.SendText"
            var params = '{"text":"' + textField.text + '","done":true}';
            var id = "0";
            //***********************************************************

            //custom_Timer_01.alias_Timer_01.start();
            JS.function_SendRequest(tabbedPane.property_KodiIpAdress, tabbedPane.property_KodiPort, command, method, params, id)
        }
    }
}