import bb.cascades 1.4

// import folders
import "../Custom/ActionItems"
import "../Custom/Containers"
import "../Custom/ImageButtons"
import "../Custom/Sliders"
import "../Custom/SystemToasts"
import "../Custom/Timers"
import "../CustomMerged"
//******************************
import "../Custom/TitleBars"

// import JavaScripts
import "../JavaScripts/JavaScript_Page_Remote.js" as JS
//*****************************************************

// Page for "asset:///main.qml"
Page {
    id: page
    actionBarFollowKeyboardPolicy: ActionBarFollowKeyboardPolicy.Never

    // property for "CustomMerged_ImageButtons_01.qml"
    // property for "CustomMerged_ImageButtons_02.qml"
    property int property_ButtonSize: ui.sdu(10)
    //******************************************

    // property for "CustomMerged_NowPlaying"
    // (get data from "asset:///JavaScript_Page_Remote.js")
    property string property_OriginalTitle: ""
    property string property_Runtime: ""
    property url property_Thumbnail
    property string property_Title: "Playback is stoped"
    //*****************************************************

    // signal from "asset:///JavaScripts/JavaScript_main.qml"
    signal signal_Page_Remote_01()
    //****************************

    onSignal_Page_Remote_01: {
        // var for JS.function_GetActivePlayers()
        var command = "POST";
        var method = "Player.GetActivePlayers";
        var params = '{}';
        var id = "1"
        //*************************************

        JS.function_GetActivePlayers(tabbedPane.property_KodiIpAdress, tabbedPane.property_KodiPort, command, method, params, id)
    }

    titleBar: Custom_TitleBar_01 {
    }

    // main "Container"
    Custom_MainContainer {
        background: imagePaintDefinition.imagePaint

        layout: StackLayout {
            orientation: LayoutOrientation.TopToBottom
        }

        TextArea {
            visible: false
            id: text
        }

        // Container for "Now Playing"
        CustomMerged_NowPlaying {
            id: customMerged_NowPlaying

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
                id: stackLayout_01
                orientation: LayoutOrientation.TopToBottom // (get data from "onCreationCompleted")
            }

            // Container for "CustomMerged_FceButtons" && "CustomMerged_VolumeSlider"
            Container {
                verticalAlignment: VerticalAlignment.Center

                layout: StackLayout {
                    orientation: LayoutOrientation.LeftToRight
                }

                layoutProperties: StackLayoutProperties {
                    spaceQuota: -1
                }

                // Container for "CustomMerged_FceButtons" && "CustomMerged_VolumeSlider"
                Container {
                    verticalAlignment: VerticalAlignment.Center

                    layout: StackLayout {
                        id: stackLayout_02
                        orientation: LayoutOrientation.BottomToTop; // (get data from "onCreationCompleted")
                    }

                    CustomMerged_FceButtons {
                    }

                    CustomMerged_VolumeSlider {
                    }
                }
            }

            Custom_ImageButton_12 {

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

    attachedObjects: [

        Custom_SystemToast_02 {
            id: custom_SystemToast_02
        },

        Custom_Timer_01 {
            id: custom_Timer_01
        },

        Custom_TitleBar_01 {
            id: custom_TitleBar_01
        },

        Custom_TitleBar_02 {
            id: custom_TitleBar_02
        }
    ]

    onCreationCompleted: {
        JS.function_ChangeLayout_01()
    }
}
