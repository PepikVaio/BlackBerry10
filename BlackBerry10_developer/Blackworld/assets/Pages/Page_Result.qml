import bb.cascades 1.4
import bb.system 1.2 // for "SystemToast" and "SystemDialog"
import custom.WebImageView 1.0
//**********************************************************

// import folder
import "../Custom/ActionItems"
import "../Custom/ActivityIndicators"
import "../Custom/Containers"
import "../Custom/Headers"
import "../Custom/ListViews"
import "../Custom/TextAreas"
import "../Custom/Timers"
import "../Sheets"

// import folder
import "../Custom/Containers"
//**************************************

//***********************************

// import JavaScript
import "../JavaScripts/JavaScript_Page_Result.js" as JS
//*****************************************************

Page {
    id: page

    // property for ...
    property bool property_ToggleButton_ShowBetaOption_Checked: navigationPane.property_ToggleButton_ShowBetaOption_Checked
    //*********************************************************************************************************************

    onProperty_ToggleButton_ShowBetaOption_CheckedChanged: {
        JS.function_ChangeAccess_04()
    }

    // property for "TitleBar" && "Headers" && "TextAreas"
    property string property_LoadingText: "Loading..."
    property string property_EmptyText: "                                                                                                    "
    //****************************************************************************************************************************************

    // property for "TitleBar" && "customActionItem_Download"
    property bool property_Enabled_01: false
    //*****************************************************

    // property for "container_03"
    property alias alias_Height: container_03.preferredHeight
    //*******************************************************

    // property for "container_04"
    property string property_Widht
    property string property_Height
    //*****************************

    // main values for "WebImageView"
    property bool property_LoadingFinished_01: false
    property bool property_LoadingFinished_02: false
    //**********************************************

    // property for "actions"
    property bool property_Enabled_02: false
    property string property_Title
    property string property_UrlPath
    //**************************************

    // property for "webView"
    property url property_DownloadPath
    property url property_GithubPath
    //********************************

    // property for "systemToast_for_Exit_01"
    property bool property_Exit_01: _settings.getValueFor("property_Exit_01", true)
    property bool property_Exit_02: _settings.getValueFor("property_Exit_02", true)
    //************************************************************************

    // signal for "../JavaScripts/JavaScript_Requests.js"
    signal signal_from_Page()

    onSignal_from_Page: {
        JS.function_ChangeAccess_01()
        JS.function_ChangeAccess_011()
        JS.function_ChangeAccess_04() // !!! enabled Github
    }

    titleBar: TitleBar {
        id: titleBar
        title: page.property_LoadingText + page.property_EmptyText // (get data from "asset://JavaScripts/JavaScript_Page_Result.js")
        visibility: ChromeVisibility[navigationPane.property_TitleBar_Visibility]
        scrollBehavior: TitleBarScrollBehavior[navigationPane.property_TitleBar_ScrollBehavior]

        acceptAction: ActionItem {
            id: acceptActionItem
            title: page.property_LoadingText
            enabled: page.property_Enabled_01 // (get value from "onSignal_from_Page")

            onTriggered: {
                // call funkction from "asset://JavaScripts/JavaScript_Page_Result.js"
                JS.function_ChangeLink_01()
            }
        }
        selectedIndex: -1
    }

    ScrollView {
        id: scrollView

        // main "Container"
        MainContainer_for_Pages {
            id: mainContainer_for_Pages

            // Container for "WebImageViewHeaders" and "Headers"
            Container_B_Margin_1_5 {

                layout: StackLayout {
                    orientation: LayoutOrientation.LeftToRight
                }

                // container for "WebImageView"
                Container_LR_Margin_1_and_V_Alignment_Center {
                    preferredWidth: ui.sdu(23)
                    preferredHeight: ui.sdu(23)

                    layout: DockLayout {
                    }

                    ActivityIndicator_Running {
                        id: activityIndicator_Rnning
                    }

                    WebImageView {
                        id: webImageView
                        verticalAlignment: VerticalAlignment.Center
                        horizontalAlignment: HorizontalAlignment.Center
                        // url: (get value from "../JavaScripts/JavaScript_Requests.js")

                        onLoadingFinished: {
                            // call funkction from "../JavaScripts/JavaScript..."
                            JS.function_StartTimer_01()
                            JS.function_SetValue_01()
                        }
                    }

                    gestureHandlers: TapHandler {

                        onTapped: {
                            // call funkction from "../JavaScripts/JavaScript..."
                            JS.function_ChangeColor_01()
                            JS.function_OpenDialog_01()
                            JS.function_ChangeOpacity_01()
                            JS.function_ChangeVisibility_01()
                        }
                    }
                }

                // container for "Headers"
                Container_LR_Margin_1_and_V_Alignment_Center {

                    CustomHeader_01 {
                        id: customHeader_01
                    }
                    CustomHeader_02 {
                        id: customHeader_02
                    }
                    CustomHeader_03 {
                        id: customHeader_03
                    }
                    CustomHeader_04 {
                        id: customHeader_04
                    }
                }
            } // End Container for "Headers" and "WebImageView"

            // Container for "SegmentedControl"
            Container_B_Margin_1_5 {
                horizontalAlignment: HorizontalAlignment.Center

                SegmentedControl {
                    id: segmentedControl

                    options: [

                        Option {
                            value: 1
                            text: "Info"
                        },
                        Option {
                            value: 2
                            text: "Review"
                        }
                    ]

                    onSelectedValueChanged: {
                        // call funkction from "../JavaScripts/JavaScript..."
                        JS.function_ChangeVisible_01()
                    }
                }
            } // End Container for "SegmentedControl"

            // Container for "Info"
            Container {
                id: container_01
                visible: true
                
                Container {
                    id: container_03
                    bottomMargin: ui.sdu(1.5)
                    preferredHeight: ui.sdu(30)
                    
                    CustomListView_Info {
                        id: customListView_Info

                        // alias for "WebImageView"
                        property alias alias_Height: page.alias_Height
                        //********************************************

                        // alias for "Container"
                        property alias property_LoadingFinished_02: page.property_LoadingFinished_02
                        //**************************************************************************

                        onTouch: {
                            // call funkction from "../JavaScripts/JavaScript..."
                            if (event.isDown()) {
                                JS.function_SetValue_02()
                            } else {
                                JS.function_SetValue_03()
                            }

                        }

                        onTriggered: {
                            // call funkction from "../JavaScripts/JavaScript..."
                            JS.function_OpenSheet_01()
                        }
                    }
                }

                Container {

                    Container {
                        minHeight: ui.sdu(20)

                        Header {
                            title: "Info"
                        }

                        CustomTextArea_01 {
                            id: customTextArea_01_01
                        }
                    }

                    Container {

                        Header {
                            title: "Features"
                        }

                        CustomTextArea_01 {
                            id: customTextArea_01_02
                        }
                    }

                }
            } // End Container for "Info"

            // Container for "Review"
            Container {
                id: container_02
                visible: false

                CustomListView_Review {
                    id: customListView_Review
                }

            } // End Container for "Review"
        } // End main "Container"
    }

    actions: [

        ActionItem_ScrollToTopWeb {
        },
        
        ActionItem_ScrollToBottomWeb {
        },
        
        ActionItem_Share {
        },

        ActionItem_LeaveRating {
        },

        ActionItem_Download {
        },

        ActionItem_Github {
            id: customActionItem_Github
        },

        ActionItem_SearchMore {
            id: customActionItem_SearchMore
        }
    ]

    attachedObjects: [

        // ComponentDefinition for "../Pages/Page_Github.qml"
        ComponentDefinition {
            id: componentDefinition_for_Page_Github
            source: "../Pages/Page_Github.qml"
        },

        // WebView for "ActionItem_Download"
        WebView {
            id: webView
        },

        CustomTimer_for_CustomActivityIndicator {
            id: customTimer_for_ActivityIndicator_Running
        },

        Dialog {
            id: dialog_for_Icon

            Container {
                id: container_04

                preferredHeight: page.property_Height
                preferredWidth: page.property_Widht

                //                preferredHeight: layoutUpdateHandler.layoutFrame.height
                //                preferredWidth: layoutUpdateHandler.layoutFrame.width

                layout: DockLayout {
                }

                WebImageView {
                    preferredHeight: page.property_Height / 2.5
                    preferredWidth: page.property_Widht / 2.5
                    //preferredHeight: layoutUpdateHandler.layoutFrame.height / 2.5
                    //preferredWidth: layoutUpdateHandler.layoutFrame.width / 2.5
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center

                    url: webImageView.url
                }

                gestureHandlers: TapHandler {

                    onTapped: {
                        // call funkction from "../JavaScripts/JavaScript..."
                        JS.function_CloseDialog_01()
                    }
                }
            }

            onClosed: {
                JS.function_SetValue_04()
            }
        },

        SystemToast {
            id: systemToast_for_Exit_01
            body: "Press the screen for exit"
            button.label: "OK"
            position: SystemUiPosition.BottomCenter

            onFinished: {
                // call funkction from "../JavaScripts/JavaScript..."
                JS.function_SaveValue_01()
            }
        },

        // SystemToast for "ActionItem_Github"
        SystemToast {
            id: systemToast_for_GitHub
            body: "For exit this screen slide to right please."
            button.label: "OK"
            position: SystemUiPosition.BottomCenter

            onFinished: {
                // call funkction from "../JavaScripts/JavaScript..."
                JS.function_SaveValue_02()
            }
        },

        Sheet_Images {
            id: sheet_Images

            onOpened: {
                // call funkction from "../JavaScripts/JavaScript..."
                JS.function_ShowSystemToast_01()
                JS.function_ChangeAccess_03()
            }

            onClosed: {
                // call funkction from "../JavaScripts/JavaScript..."
                JS.function_CancelSystemToast_01()
            }
        }
    ]

    onCreationCompleted: {
        // call funkction from "asset://JavaScripts/JavaScript_Page_Result.js"
        JS.function_GetInfo()
        JS.function_ChangeDeviceScreen_01()
    }
}
