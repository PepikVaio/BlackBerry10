import bb.cascades 1.4

// import folders
import "../Custom/Containers"
import "../Custom/Sliders"
//***************************

// Custom_Container_01 for "../Pages/Page_Remote.qml"
Custom_Container_01 {
    
    layout: StackLayout {
        orientation: LayoutOrientation.TopToBottom
    }
    
    Label {
        text: "Volume"
    }
    
    Custom_Slider_01 {
    }
}