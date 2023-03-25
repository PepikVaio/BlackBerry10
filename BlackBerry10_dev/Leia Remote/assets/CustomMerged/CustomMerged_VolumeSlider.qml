import bb.cascades 1.4

// import folders
import "../Custom/Containers"
import "../Custom/ImageButtons"
import "../Custom/Sliders"
//*****************************

// Custom_Container_01 for "asset:///Pages/Page_Remote.qml"
Custom_Container_01 {

    layout: StackLayout {
        orientation: LayoutOrientation.TopToBottom
    }

    // Container for "Label"
    Container {

        Label {
            text: "Volume"
        }
    }

    // Container for "Custom_ImageButton_13" && "Custom_Slider_01" && "Custom_ImageButton_14"
    Container {

        layout: GridLayout {
            columnCount: 3
        }

        Custom_ImageButton_13 {
        }

        Custom_Slider_01 {
            id: custom_Slider_01
            verticalAlignment: VerticalAlignment.Center
        }

        Custom_ImageButton_14 {
        }
    }
}