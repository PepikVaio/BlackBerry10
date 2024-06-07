import bb.cascades 1.4

// import folders
import "../Custom/Containers"
import "../Custom/ImageButtons"
//*****************************

// Custom_Container_01 for "asset:///Pages/Page_Remote.qml"
Custom_Container_01 {

    layout: StackLayout {
        orientation: LayoutOrientation.TopToBottom
    }

    // Container for "Label"
    Container {

        Label {
            text: "Fce buttons"
        }
    }

    // Container for "CustomMerged_ImageButtons_02"
    Container {

        CustomMerged_ImageButtons_02 {
        }
    }
}
