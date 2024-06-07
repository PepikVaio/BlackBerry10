import bb.cascades 1.4

// import folders
import "../Custom/ActionItems"
import "../Custom/Containers"
import "../Custom/ImageButtons"
import "../Custom/Sliders"
import "../CustomMerged"
//*****************************

// import JavaScripts
import "../JavaScripts/JavaScript_Page_Remote.js" as JS
//*****************************************************

// Page for "../main.qml"
Page {
    id: page

    // property for "CustomMerged_ImageButtons_01.qml"
    // property for "CustomMerged_ImageButtons_02.qml"
    property int property_ButtonSize: ui.sdu(10)
    //******************************************

    titleBar: TitleBar {
        title: "Leia remote for Kodi"
    }

    // main "Container"
    Custom_MainContainer {
        background: imagePaintDefinition.imagePaint

        layout: StackLayout {
            orientation: LayoutOrientation.TopToBottom
        }

        // Container for "Now Playing"
        CustomMerged_NowPlaying {

            layoutProperties: StackLayoutProperties {
                spaceQuota: -1
            }
        }

        // Container for "Control"
        Container {

            layoutProperties: StackLayoutProperties {
                spaceQuota: 1
            }

            layout: StackLayout {
                // menit
                //orientation: LayoutOrientation.LeftToRight
                orientation: LayoutOrientation.TopToBottom
            }

            // Container for "CustomMerged_FceButtons" && "CustomMerged_VolumeSlider"
            Container {
                verticalAlignment: VerticalAlignment.Center

                layout: StackLayout {
                    id: stackLayout_01
                    orientation: LayoutOrientation.LeftToRight
                }

                layoutProperties: StackLayoutProperties {
                    spaceQuota: -1
                }

                // Container for "CustomMerged_FceButtons" && "CustomMerged_VolumeSlider"
                Container {
                    verticalAlignment: VerticalAlignment.Center

                    layout: StackLayout {
                        //menit
                        //orientation: LayoutOrientation.TopToBottom
                        orientation: LayoutOrientation.BottomToTop
                    }

                    CustomMerged_FceButtons {
                    }

                    CustomMerged_VolumeSlider {
                    }
                }
            }

            // Container for "Custom_ImageButton_12"
            Custom_ImageButton_12 {

                horizontalAlignment: HorizontalAlignment.Center
                preferredWidth: layoutUpdateHandler.layoutFrame.height
                minWidth: layoutUpdateHandler.layoutFrame.height

                layoutProperties: StackLayoutProperties {
                    spaceQuota: 1
                }

                attachedObjects: [
                    LayoutUpdateHandler {
                        id: layoutUpdateHandler
                    }
                ]
            }
        }

        attachedObjects: [

            ImagePaintDefinition {
                id: imagePaintDefinition
                imageSource: "asset:///Images/Image_Background_(dark).png"
            }
        ]
    }

    actions: [

        Custom_ActionItem_01 {
        },

        Custom_ActionItem_02 {
        },

        Custom_ActionItem_03 {
        },

        Custom_ActionItem_04 {
        },

        Custom_ActionItem_05 {
        }
    ]
}
