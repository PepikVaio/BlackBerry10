import bb.cascades 1.4

// import JavaScripts
import "asset:///JavaScripts/JavaScript_Page_Remote.js" as JS
//***********************************************************

// ImageButton for "asset:///CustomMerged/CustomMerged_VolumeSlider.qml"
Container {

    ImageButton {
        defaultImageSource: "asset:///Images/Image_Volume_(up).png"

        onClicked: {
            
            var sliderValue = custom_Slider_01.alias_Sliders.value + 5
            custom_Slider_01.alias_Sliders.value = sliderValue

            var command = "POST"
            var method = "Application.SetVolume"
            var params = '{"volume":' + sliderValue + '}';
            var id = "1";
            
            JS.function_SendRequest(tabbedPane.property_KodiIpAdress, tabbedPane.property_KodiPort, command, method, params, id)
        }
    }
}
