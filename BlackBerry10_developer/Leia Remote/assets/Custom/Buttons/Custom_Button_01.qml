import bb.cascades 1.4

// import JavaScripts
import "asset:///JavaScripts/JavaScript_Page_Remote.js" as JS
//***********************************************************

// Button for "asset:///Custom/TitleBars/Cistom_TitleBars_02"
Container {

    Button {
        text: qsTr("Cancel") + Retranslate.onLanguageChanged
        color: Color.create("# 12B2E7")
        preferredWidth: ui.sdu(15)
        
        onClicked: {
            page.setTitleBar(custom_TitleBar_01)
            
            // var for JS.function_SendRequest()
            var command = "POST"
            var method = "Input.Back"
            var params = '{}';
            var id = "1";
            //***********************
            
            //custom_Timer_01.alias_Timer_01.start();
            JS.function_SendRequest(tabbedPane.property_KodiIpAdress, tabbedPane.property_KodiPort, command, method, params, id)
        }
    }
}
