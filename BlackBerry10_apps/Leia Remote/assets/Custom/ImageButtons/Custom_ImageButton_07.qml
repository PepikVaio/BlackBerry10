import bb.cascades 1.4

// import JavaScripts
import "asset:///JavaScripts/JavaScript_Page_Remote.js" as JS
//***********************************************************

// ImageButton for "asset:///CustomMerged/CustomMerged_ImageButtons_02.qml"
Container {
    
    ImageButton {
        preferredHeight: customMerged_NowPlaying.property_ButtonSize
        preferredWidth: customMerged_NowPlaying.property_ButtonSize
        defaultImageSource: "asset:///Images/Image_ImageButton_07.png"
        pressedImageSource: "asset:///Images/Image_Button_(down).png"

        onClicked: {
            // var for JS.function_SendRequest()
            var command = "POST"
            var method = "Input.info"
            var params = '{}';
            var id = "1";

            //custom_Timer_01.alias_Timer_01.start();
            JS.function_SendRequest(tabbedPane.property_KodiIpAdress, tabbedPane.property_KodiPort, command, method, params, id)
        }
    }
}
