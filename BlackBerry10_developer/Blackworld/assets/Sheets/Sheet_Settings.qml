import bb.cascades 1.4
//********************

// import folder
import "../Custom/Containers"
import "../Custom/DropDowns"
import "../Custom/Headers"
import "../Custom/SystemDialogs"
import "../Custom/SystemToasts"
import "../Custom/SystemProgressToasts"
import "../Custom/Timers"
import "../Custom/ToggleButtons"
//*************************************

// import JavaScript
import "../JavaScripts/JavaScript_Sheet_Settings.js" as JS
//********************************************************

Sheet {
    id: sheet
    peekEnabled: false

    //   _____ _ _   _     ___                     _   _   _              _
    //  |_   _(_) |_| |___| _ ) __ _ _ _   ___ ___| |_| |_(_)_ _  __ _ __| |
    //    | | | |  _| / -_) _ \/ _` | '_| (_-</ -_)  _|  _| | ' \/ _` (_-<_|
    //    |_| |_|\__|_\___|___/\__,_|_|   /__/\___|\__|\__|_|_||_\__, /__(_)
    //                                                           |___/
    //
    property string property_DismissActionItem_Title: "Close"
    property string property_AcceptActionItem_Title: "Default"
    //********************************************************
    property bool property_DismissActionItem_Enabled: true
    property bool property_AcceptActionItem_Enabled: false
    //****************************************************

    //   _____ _                            _   _   _
    //  |_   _| |_  ___ _ __  ___   ___ ___| |_| |_(_)_ _  __ _ ___
    //    | | | ' \/ -_) '  \/ -_) (_-</ -_)  _|  _| | ' \/ _` (_-<
    //    |_| |_||_\___|_|_|_\___| /__/\___|\__|\__|_|_||_\__, /__/
    //                                                    |___/
    //
    property bool property_ToggleButton_AdaptiveTheme_Checked: _settings.getValueFor("ToggleButton_AdaptiveTheme_Checked", false)
    property int property_DropDown_VisualStyle_SelectedValue: _settings.getValueFor("DropDown_VisualStyle_SelectedValue", 0)
    //**********************************************************************************************************************

    //   _____     _              _   _   _
    //  |_   _|_ _| |__   ___ ___| |_| |_(_)_ _  __ _ ___
    //    | |/ _` | '_ \ (_-</ -_)  _|  _| | ' \/ _` (_-<
    //    |_|\__,_|_.__/ /__/\___|\__|\__|_|_||_\__, /__/
    //                                          |___/
    //
    property bool property_ToggleButton_ShowTabsOnActionBar_Checked: _settings.getValueFor("ToggleButton_ShowTabsOnActionBar_Checked", false)
    property int property_DropDown_ActiveTab_SelectedValue: _settings.getValueFor("DropDown_ActiveTab_SelectedValue", 0)
    property int property_DropDown_TabDelegateActivation_SelectedValue: _settings.getValueFor("DropDown_TabDelegateActivation_SelectedValue", 0)
    //*************************************************************************************************************************************

    //   _____       _                     _   _   _              _
    //  |_   _|__ __| |_ ___ _ _   ___ ___| |_| |_(_)_ _  __ _ __| |
    //    | |/ -_|_-<  _/ -_) '_| (_-</ -_)  _|  _| | ' \/ _` (_-<_|
    //    |_|\___/__/\__\___|_|   /__/\___|\__|\__|_|_||_\__, /__(_)
    //                                                   |___/
    //
    property bool property_ToggleButton_ShowBetaOption_Checked: false
    //***************************************************************

    //     _  _   _     ___  _     _             _   _   _
    //    /_\| |_| |_  / _ \| |__ (_)    ___ ___| |_| |_(_)_ _  __ _ ___
    //   / _ \  _|  _|| (_) | '_ \| |_  (_-</ -_)  _|  _| | ' \/ _` (_-<
    //  /_/ \_\__|\__(_)___/|_.__// (_) /__/\___|\__|\__|_|_||_\__, /__/
    //                          |__/                           |___/
    //
    property alias alias_SystemToast_Reset: systemToast_Reset
    //*******************************************************

    Page {
        id: page

        titleBar: TitleBar {
            title: "Settings"

            dismissAction: ActionItem {
                title: sheet.property_DismissActionItem_Title
                enabled: sheet.property_DismissActionItem_Enabled

                onTriggered: {
                    JS.function_SetValue_01()
                    JS.function_SaveValue_01()
                    JS.function_CloseSheet_01()
                }
            }

            acceptAction: ActionItem {
                title: sheet.property_AcceptActionItem_Title
                enabled: sheet.property_AcceptActionItem_Enabled

                onTriggered: {
                    JS.function_ResetValue_01()
                }
            }
        }

        ScrollView {

            // Main Container
            MainContainer_for_Sheets {

                // Container for "Theme settings"
                Container_TB_Margin_3 {

                    Header_ThemeSettings {
                    }

                    ToggleButton_AdaptiveTheme {
                        id: toggleButton_AdaptiveTheme

                        onSignal_ChangeChecked: {
                            JS.function_ChangeImage_01()
                            JS.function_ChangeTitle_01()
                            JS.function_ChangeTitle_02()
                            JS.function_ChangeAccess_01()
                            JS.function_ChangeAccess_02()
                        }
                    }

                    DropDown_VisualStyle {
                        id: dropDown_VisualStyle

                        onSignal_ChangeOptions: {
                            JS.function_ChangeVisualStyle()
                            JS.function_ChangeTitle_01()
                            JS.function_ChangeTitle_02()
                            JS.function_ChangeAccess_01()
                            JS.function_ChangeImage_01()
                        }
                    }

                    //   ___              _   _          _          _ _    _____ _            _ __
                    //  |   \ ___ __ _ __| |_(_)_ ____ _| |_ ___ __| | |  / / __| |_ __ _ _ _| |\ \
                    //  | |) / -_) _` / _|  _| \ V / _` |  _/ -_) _` |_| | |\__ \  _/ _` | '_|  _| |
                    //  |___/\___\__,_\__|\__|_|\_/\__,_|\__\___\__,_(_) | ||___/\__\__,_|_|  \__| |
                    //                                                    \_\                   /_/
                    //

                    DropDown_PrimaryColor {
                        visible: false
                        id: dropDown_PrimaryColor
                    }

                    DropDown_PrimaryBaseColor {
                        visible: false
                        id: dropDown_PrimaryBaseColor
                    }

                    //   ___              _   _          _          _ _    _____         ___
                    //  |   \ ___ __ _ __| |_(_)_ ____ _| |_ ___ __| | |  / / __|_ _  __| \ \
                    //  | |) / -_) _` / _|  _| \ V / _` |  _/ -_) _` |_| | || _|| ' \/ _` || |
                    //  |___/\___\__,_\__|\__|_|\_/\__,_|\__\___\__,_(_) | ||___|_||_\__,_|| |
                    //                                                    \_\             /_/
                    //

                } // End Container for "Theme settings"

                // Container for "Tab settings"
                Container_TB_Margin_3 {

                    Header_TabSettings {
                    }

                    ToggleButton_ShowTabsOnActionBar {
                        id: toggleButton_ShowTabsOnActionBar

                        onSignal_ChangeChecked: {
                            JS.function_ChangeShowTabsOnActionBar()
                            JS.function_ChangeImage_01()
                            JS.function_ChangeTitle_01()
                            JS.function_ChangeTitle_02()
                            JS.function_ChangeAccess_01()
                        }
                    }

                    DropDown_ActiveTab {
                        id: dropDown_ActiveTab

                        onSignal_ChangeOptions: {
                            JS.function_ChangeTitle_01()
                            JS.function_ChangeTitle_02()
                            JS.function_ChangeAccess_01()
                        }
                    }

                    DropDown_TabDelegateActivationPolicy {
                        id: dropDown_TabDelegateActivationPolicy

                        onSignal_ChangeOptions: {
                            JS.function_ChangeDelegateActivationPolicy()
                            JS.function_ChangeTitle_01()
                            JS.function_ChangeTitle_02()
                            JS.function_ChangeAccess_01()
                        }
                    }
                } // end Container for "Tab settings"

                //   ___              _   _          _          _ _    _____ _            _ __
                //  |   \ ___ __ _ __| |_(_)_ ____ _| |_ ___ __| | |  / / __| |_ __ _ _ _| |\ \
                //  | |) / -_) _` / _|  _| \ V / _` |  _/ -_) _` |_| | |\__ \  _/ _` | '_|  _| |
                //  |___/\___\__,_\__|\__|_|\_/\__,_|\__\___\__,_(_) | ||___/\__\__,_|_|  \__| |
                //                                                    \_\                   /_/
                //

                // Container for "Autohide settings"
                Container_TB_Margin_3 {
                    visible: false

                    Header_AutohideSettings {
                    }

                    ToggleButton_AutohideTitleBar {
                        id: toggleButton_AutohideTitleBar
                    }

                    ToggleButton_AutohideActionBar {
                        id: toggleButton_AutohideActionBar
                    }

                    DropDown_ScrollBehavior {
                        id: dropDown_ScrollBehavior
                    }

                    DropDown_TitleBarVisibility {
                        id: dropDown_TitleBarVisibility
                    }

                    DropDown_FollowKeyboardPolicy {
                        id: dropDown_FollowKeyboardPolicy
                    }
                    DropDown_ActionBarVisibility {
                        id: custom_DropDown_07
                    }
                } // end Container for "Autohide settings"

                //   ___              _   _          _          _ _    _____         ___
                //  |   \ ___ __ _ __| |_(_)_ ____ _| |_ ___ __| | |  / / __|_ _  __| \ \
                //  | |) / -_) _` / _|  _| \ V / _` |  _/ -_) _` |_| | || _|| ' \/ _` || |
                //  |___/\___\__,_\__|\__|_|\_/\__,_|\__\___\__,_(_) | ||___|_||_\__,_|| |
                //                                                    \_\             /_/
                //

                // Container for "Tester settings!"
                Container_TB_Margin_3 {

                    Header_TesterSettings {
                    }

                    ToggleButton_ShowBetaOption {
                        id: toggleButton_ShowBetaOption

                        onSignal_ChangeChecked: {
                            JS.function_ShowSystemDialog_01()
                            JS.function_ChangeImage_02()
                            JS.function_ChangeTitle_02()
                            JS.function_ChangeAccess_01()
                        }
                    }
                } // end Container for "Tester settings!"
            } // end main Container
        } // end main ScrollView

        attachedObjects: [

            SystemDialog_Warning_01 {
                id: systemDialog_Warning_01

                onSignal_Finished: {
                    JS.function_SetValue_03()
                }
            },

            SystemDialog_Warning_02 {
                id: systemDialog_Warning_02

                onSignal_Finished: {
                    JS.function_ChangeAccess_03()
                    JS.function_ShowSystemProgressToast_01()
                    JS.function_StartTimer_01()
                }
            },

            SystemProgressToast_Resetting {
                id: systemProgressToast_Reset
            },

            SystemToast_Reset {
                id: systemToast_Reset
            },

            Timer_1000 {
                id: timer_1000_01

                onSignal_Timeout: {
                    JS.function_ShowSystemProgressToast_02()
                    JS.function_SetValue_02()
                }
            }
        ]

        onCreationCompleted: {
            JS.function_ChangeImage_01()
            JS.function_ChangeImage_02()
            JS.function_ChangeActiveTab()
        }
    }
}
