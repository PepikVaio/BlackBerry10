import bb.cascades 1.4

// import JavaScripts
import "asset:///JavaScripts/JavaScript_Page_Remote.js" as JS
//***********************************************************

// Slider for "asset:///CustomMerged/CustomMerged_VolumeSlider.qml"
Container {

    property alias alias_Sliders: slider

    Slider {
        id: slider
        fromValue: 0
        toValue: 100
        value: 100

        onImmediateValueChanged: {
            
            if (value !== 100) {
                var sliderValue = immediateValue.toFixed(0)
                custom_Slider_01.alias_Sliders.value = sliderValue
                
                var command = "POST"
                var method = "Application.SetVolume"
                var params = '{"volume":' + sliderValue + '}';
                var id = "1";
                
                JS.function_SendRequest(tabbedPane.property_KodiIpAdress, tabbedPane.property_KodiPort, command, method, params, id)
            } 
        }

    }
}
