import bb.cascades 1.4

// import folders
import "../Custom/Containers"
import "../Custom/Headers"
import "../Custom/ImageButtons"
import "../Custom/StandardListItems"
import "../Custom/WebImagesView"
//**********************************

// import JavaScripts
import "asset:///JavaScripts/CustomMerged_NowPlaying.js" as JS
//************************************************************

// Container for "asset:///Pages/Page_Remote.qml"
Custom_Container_01 {

    property int property_PreferredHeight: ui.sdu(25)
    property int property_Margin: ui.sdu(1)
    property real property_ButtonSize: ui.sdu(14) // (get value from "onLayoutFrameChanged")

    layout: StackLayout {
        orientation: LayoutOrientation.TopToBottom
    }

    // Container for "Header"
    Container {

        Custom_Header_01 {
        }
    }

    // Container for "Custom_WebImageView_01" && "Custom_StandardListItem_01" && "CustomMerged_ImageButtons_01"
    Container {

        layout: StackLayout {
            orientation: LayoutOrientation.LeftToRight
        }

        Custom_WebImageView_01 {

            layoutProperties: StackLayoutProperties {
                spaceQuota: -1
            }
        }

        // Container for "Custom_StandardListItem_01" && "CustomMerged_ImageButtons_01"
        Container {
            id: container
            verticalAlignment: VerticalAlignment.Center
            leftMargin: property_Margin

            layout: StackLayout {
                orientation: LayoutOrientation.TopToBottom
            }

            layoutProperties: StackLayoutProperties {
                id: stackLayoutProperties_01
                spaceQuota: 1
            }

            Custom_StandardListItem_01 {
            }

            CustomMerged_ImageButtons_01 {
                id: customMerged_ImageButtons_01
            }

            attachedObjects: [

                LayoutUpdateHandler {
                    id: layoutUpdateHandler

                    onLayoutFrameChanged: {
                        JS.function_ChangeButtonSize_01()
                    }
                }
            ]
        }
    }

    // Container for "Divider"
    Container {

        Divider {
        }
    }
}
