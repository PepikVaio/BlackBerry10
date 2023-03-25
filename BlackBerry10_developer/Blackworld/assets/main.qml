import bb.cascades 1.4
//********************

// import folder
import "Custom/MenuDefinitions"
import "Sheets"
import "Tabs"
//*****************************

// import JavaScript
import "JavaScripts/JavaScript_main.js" as JS_Main
import "JavaScripts/JavaScript_Sheet_Settings.js" as JS
//*****************************************************

TabbedPane {
    id: tabbedPane

    //    ___         _           _             _   _   _
    //   / __|___ _ _| |_ ___ _ _| |_   ___ ___| |_| |_(_)_ _  __ _ ___
    //  | (__/ _ \ ' \  _/ -_) ' \  _| (_-</ -_)  _|  _| | ' \/ _` (_-<
    //   \___\___/_||_\__\___|_||_\__| /__/\___|\__|\__|_|_||_\__, /__/
    //                                                        |___/
    //
    // property for "../JavaScripts/JavaScript_Sheet_Settings.js"
    // property for "../Tabs/Tab_01.qml"
    // property for "../Tabs/Tab_02.qml"
    // property for "../Tabs/Tab_03.qml"
    // property for "../Tabs/Tab_04.qml"
    property string property_TabDelegateActivationPolicy // (get data from "../JavaScripts/JavaScript_Sheet_Settings.js")
    //*******************************************************************************************************************

    //     _      _   _          ___                     _   _   _
    //    /_\  __| |_(_)___ _ _ | _ ) __ _ _ _   ___ ___| |_| |_(_)_ _  __ _ ___
    //   / _ \/ _|  _| / _ \ ' \| _ \/ _` | '_| (_-</ -_)  _|  _| | ' \/ _` (_-<
    //  /_/ \_\__|\__|_\___/_||_|___/\__,_|_|   /__/\___|\__|\__|_|_||_\__, /__/
    //                                                                 |___/
    //
    showTabsOnActionBar: false // (get data from "../JavaScripts/JavaScript_Sheet_Settings.js")
    //*****************************************************************************************

    //   _____     _              _   _   _
    //  |_   _|_ _| |__   ___ ___| |_| |_(_)_ _  __ _ ___
    //    | |/ _` | '_ \ (_-</ -_)  _|  _| | ' \/ _` (_-<
    //    |_|\__,_|_.__/ /__/\___|\__|\__|_|_||_\__, /__/
    //                                          |___/
    //
    //activeTab: (get data from "../JavaScripts/JavaScript_Sheet_Settings.js")
    property bool property_SidebarState_Hidden: true // (get data from "onSidebarStateChanged")
    //*****************************************************************************************

    Menu.definition: [

        Custom_MenuDefinition {
        }
    ]

    tabs: [

        Tab_01 {
            id: tab_01
        },

        Tab_02 {
            id: tab_02
        },

        Tab_03 {
            id: tab_03
        },

        //   ___              _   _          _          _ _    _____ _            _ __
        //  |   \ ___ __ _ __| |_(_)_ ____ _| |_ ___ __| | |  / / __| |_ __ _ _ _| |\ \
        //  | |) / -_) _` / _|  _| \ V / _` |  _/ -_) _` |_| | |\__ \  _/ _` | '_|  _| |
        //  |___/\___\__,_\__|\__|_|\_/\__,_|\__\___\__,_(_) | ||___/\__\__,_|_|  \__| |
        //                                                    \_\                   /_/
        //

        Tab_04 {
            id: tab_04
            enabled: false
        }

        //   ___              _   _          _          _ _    _____         ___
        //  |   \ ___ __ _ __| |_(_)_ ____ _| |_ ___ __| | |  / / __|_ _  __| \ \
        //  | |) / -_) _` / _|  _| \ V / _` |  _/ -_) _` |_| | || _|| ' \/ _` || |
        //  |___/\___\__,_\__|\__|_|\_/\__,_|\__\___\__,_(_) | ||___|_||_\__,_|| |
        //                                                    \_\             /_/
        //

    ]

    attachedObjects: [

        Sheet_Settings {
            id: sheet_Settings

            onClosed: {
                // call funkction from "../JavaScripts/JavaScript_Sheet_Settings.js"
                JS.function_CancelSystemToast_01()
                JS.function_ChangeAccess_05()
                JS.function_ChangeTitle_03()
            }
        }
    ]

    onSidebarStateChanged: {
        JS_Main.function_ChangeSidebarState()
    }
}
