import bb.cascades 1.4
//********************

// import folder
import "../Custom/ActionItems"
import "../Custom/Containers"
import "../Custom/MenuDefinitions"
import "../Custom/SystemToasts"
//***********************************

import "../Custom/ListViews"


// import JavaScript
import "../JavaScripts/JavaScript_Page_BlackWorld.js" as JS
//*********************************************************

NavigationPane {
    id: navigationPane
    peekEnabled: true // (get data from "../Pages/Page_Result.qml")

    // funkction for "../Tabs/Tab_01.qml"
    function function_Command_01() {
        JS.function_LoadOption_02()
    }
    //***********************************

    //   _____ _ _   _     ___                     _   _   _              _
    //  |_   _(_) |_| |___| _ ) __ _ _ _   ___ ___| |_| |_(_)_ _  __ _ __| |
    //    | | | |  _| / -_) _ \/ _` | '_| (_-</ -_)  _|  _| | ' \/ _` (_-<_|
    //    |_| |_|\__|_\___|___/\__,_|_|   /__/\___|\__|\__|_|_||_\__, /__(_)
    //                                                           |___/
    //
    // (get data from "../JavaScripts/JavaScript_Page_BlackWorld.js")
    property string property_TitleBar_Visibility: "Visible" // (use data "Hidden", "Overlay", "Visible")
    property string property_TitleBar_ScrollBehavior: "Sticky" // (use data "NonSticky", "Sticky")
    // (get data from "../Sheets/Sheet_Settings.qml")
    property bool property_ToggleButton_ShowBetaOption_Checked: sheet_Settings.property_ToggleButton_ShowBetaOption_Checked // (use data "false", "true") 
    //***************************************************************************************************************************************************

    //   __  __                        _   _   _              
    //  |  \/  |___ _ _ _  _   ___ ___| |_| |_(_)_ _  __ _ ___
    //  | |\/| / -_) ' \ || | (_-</ -_)  _|  _| | ' \/ _` (_-<
    //  |_|  |_\___|_||_\_,_| /__/\___|\__|\__|_|_||_\__, /__/
    //                                               |___/    
    //  
    // (get data from "../JavaScripts/JavaScript_Page_BlackWorld.js")
    property bool property_Menu_for_SortSettings_Visible: false // (use data "false", "true")
    //***************************************************************************************

    //   _    _    _ __   ___                      _   _   _
    //  | |  (_)__| |\ \ / (_)_____ __ __  ___ ___| |_| |_(_)_ _  __ _ ___
    //  | |__| (_-<  _\ V /| / -_) V  V / (_-</ -_)  _|  _| | ' \/ _` (_-<
    //  |____|_/__/\__|\_/ |_\___|\_/\_/  /__/\___|\__|\__|_|_||_\__, /__/
    //                                                           |___/
    //
    property real   property_Indentation_01            // (get data from "JS.function_CheckModelName_01()")
    property real   property_Indentation_02            // (get data from "JS.function_CheckModelName_01()")
    property string property_OptionDescription         // (get data from "JS.function_ChangeContent_01()")
    property string property_ResultUrl                 // (get data from "ListView_for_Pages - onTriggered")
    property url    property_JsonUrl                   // (get data from "JS.function_ChangeContent_01()")
    //******************************************************************************************************
    // (get data from "../JavaScripts/JavaScript_Page_BlackWorld.js")
    property bool property_Container_Visible_01: true  // (use data "false", "true")
    property bool property_Container_Visible_02: false // (use data "false", "true")
    //******************************************************************************
    // (get data from "../JavaScripts/JavaScript_Page_BlackWorld.js")
    property variant property_ListView_for_Pages_Layout: listView_for_Pages.property_StackListLayout // (use data "listView_for_Pages.property_StackLayout", "listView_for_Pages.property_GridListLayout") 
    //****************************************************************************************************************************************************************************************************

    //    ___         _           _             _   _   _
    //   / __|___ _ _| |_ ___ _ _| |_   ___ ___| |_| |_(_)_ _  __ _ ___
    //  | (__/ _ \ ' \  _/ -_) ' \  _| (_-</ -_)  _|  _| | ' \/ _` (_-<
    //   \___\___/_||_\__\___|_||_\__| /__/\___|\__|\__|_|_||_\__, /__/
    //                                                        |___/
    //
    // (get data from "../Tabs/Tab_01qml")
    // (get data from "../Tabs/Tab_02qml")
    // (get data from "../Tabs/Tab_03qml")
    // (get data from "../Tabs/Tab_04qml")
    property variant property_ActiveTab: "News" // (use data "News", "Apps", "Games", "My world")
    //*******************************************************************************************


    // (get data from "JS.function_SetValue_02()")
    property string property_Grouping        // (use data "ByFirstChar", "ByFullValue", "None")
    property bool   property_SortedAscending // (use data "false", "true")
    property string property_SortingKeys     // (use data "completed", "date", "description", "title")
    //************************************************************************************************

    //     _      _   _          ___                     _   _   _
    //    /_\  __| |_(_)___ _ _ | _ ) __ _ _ _   ___ ___| |_| |_(_)_ _  __ _ ___
    //   / _ \/ _|  _| / _ \ ' \| _ \/ _` | '_| (_-</ -_)  _|  _| | ' \/ _` (_-<
    //  /_/ \_\__|\__|_\___/_||_|___/\__,_|_|   /__/\___|\__|\__|_|_||_\__, /__/
    //                                                                 |___/
    //
    property string property_ActionItem_ChangeLayout_Title: "Grid view"
    property string property_ActionItem_ChangeLayout_ImageSource: "asset:///Icons/Icon_GridView.png"
    //**********************************************************************************************
    property string property_ActionItem_Sort_Title: "Show sort"
    property string property_ActionItem_Sort_ImageSource: "asset:///Icons/Icon_Sort_(show).png"
    //*****************************************************************************************

    //   _____     _              _   _   _
    //  |_   _|_ _| |__   ___ ___| |_| |_(_)_ _  __ _ ___
    //    | |/ _` | '_ \ (_-</ -_)  _|  _| | ' \/ _` (_-<
    //    |_|\__,_|_.__/ /__/\___|\__|\__|_|_||_\__, /__/
    //                                          |___/
    //
    property bool property_SidebarState_Hidden: tabbedPane.property_SidebarState_Hidden
    //*********************************************************************************

    onProperty_SidebarState_HiddenChanged: {
        JS.function_RequestFocus_01()
    }
    //**************************************

    Page {
        id: page

        // budu dodelavat pro nastaveni
        //actionBarAutoHideBehavior: ActionBarAutoHideBehavior.HideOnScroll
        //actionBarVisibility: ChromeVisibility.Overlay

        titleBar: TitleBar {
            id: titleBar
            kind: TitleBarKind.Segmented
            visibility: ChromeVisibility[navigationPane.property_TitleBar_Visibility]
            scrollBehavior: TitleBarScrollBehavior[navigationPane.property_TitleBar_ScrollBehavior]
            // options: (get data from "JS.function_LoadOption_01()")

            onSelectedValueChanged: {
                JS.function_ChangeContent_01()
                JS.function_RequestFocus_01()
            }
        }

        // main Container
        MainContainer_for_Pages {

            // Hidden menu
            Menu_for_SortSettings {
                id: menu_for_FilterSettings
                visible: navigationPane.property_Menu_for_SortSettings_Visible
            }

            ListView_for_Pages {
                id: listView_for_Pages

                onTouch: {
                    JS.function_RequestFocus_01()
                }

                onTriggered: {
                    navigationPane.property_ResultUrl = listView_for_Pages.property_GroupDataModel.data(indexPath).url;
                    
                    JS.function_CreatePage_01()
                }
            }
        }

        actions: [

            ActionItem_ScrollToTopList {
            },
            
            ActionItem_ScrollToBottomList {
            },

            ActionItem_ChangeLayout {
            },

            ActionItem_Sort {
            }
        ]

        attachedObjects: [

            ComponentDefinition {
                id: componentDefinition_for_Options

                Option {
                }
            },

            ComponentDefinition {
                id: componentDefinition_for_Page_Result
                source: "../Pages/Page_Result.qml"
            },

            Option {
                id: option_Beta
            },
            Option {
                id: option_News
            },
            Option {
                id: option_Upcoming
            },

            SystemToast_Beta {
                id: systemToast_Beta
            }
        ]

        onActionMenuVisualStateChanged: {
            JS.function_ChangeActionMenuVisualState()
        }

        onCreationCompleted: {
            JS.function_CheckModelName_01()
            JS.function_LoadOption_01()
            JS.function_SetValue_02()
            JS.function_RequestFocus_01()
        }
    }

    onPopTransitionEnded: {
        JS.function_RequestFocus_01()
    }
}
