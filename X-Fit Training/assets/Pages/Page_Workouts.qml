import bb.cascades 1.4
import bb.system 1.2

// import folders
import "../Custom/ActionItems"
import "../Custom/Containers"
import "../Custom/ListViews"
import "../JavaScripts/JavaScript_Workouts.js" as JS
import "../Sheets"
//**************************************************

Page {
    id: page

    // property for "ListView"
    property string property_Language: tabbedPane.property_Language
    property string property_SelectedPlan
    //*************************************************************

    onProperty_SelectedPlanChanged: {
        JS.function_SetValue_04()
        JS.function_ChangeTitle_01()
    }
    //*******************************

    // title: (get data from "onCreationCompleted")
    // title: (get data from "onFinished")
    // title: (get data from "onProperty_SelectedPlanChanged")
    // title: (get data from "../JavaScripts/JavaScripts_Workouts.qml")
    titleBar: TitleBar {
        id: titleBar
    }

    Custom_MainContainer {

        layout: DockLayout {
        }

        // visible: (get data from "onCreationCompleted")
        // visible: (get data from "onFinished")
        // visible: (get data from "../JavaScripts/JavaScripts_Workouts.qml")
        Container {
            id: container_01
            verticalAlignment: VerticalAlignment.Center
            horizontalAlignment: HorizontalAlignment.Center

            Label {
                horizontalAlignment: HorizontalAlignment.Center
                text: qsTr("Currently no training plan defined.") + Retranslate.onLanguageChanged
                multiline: true
            }

            Label {
                horizontalAlignment: HorizontalAlignment.Center
                text: qsTr("Tap the \"Choose a plan button\" to added a new training plan.") + Retranslate.onLanguageChanged
                multiline: true
            }
        }

        Container {

            Custom_ListView_01 {
                // alias for "ListItemComponent"
                property alias property_Language: page.property_Language
                property alias property_SelectedPlan: page.property_SelectedPlan
                //********************************************************************
            }
        }
    }

    actions: [

        // zatim neni funkcni
        Custom_ActionItem_01 {
        },

        // enabled: (get data from "onCreationCompleted")
        // enabled: (get data from "onFinished")
        // enabled: (get data from "../JavaScripts/JavaScripts_Workouts.qml")
        Custom_ActionItem_02 {
            id: actionItem_02
        },

        Custom_ActionItem_03 {
        }
    ]

    attachedObjects: [

        SystemListDialog {
            id: systemListDialog_01
            title: qsTr("Training plan") + Retranslate.onLanguageChanged
            body: qsTr("Please select a training plan.") + Retranslate.onLanguageChanged

            onFinished: {
                if (result == SystemUiResult.ConfirmButtonSelection) {
                    JS.function_SetValue_01()
                    JS.function_ClearList_01()
                    JS.function_LoadXML_02()
                    JS.function_ShowDialog_02()
                }
            }
        },

        SystemListDialog {
            id: systemListDialog_02
            title: qsTr("Training week") + Retranslate.onLanguageChanged
            body: qsTr("Please select a weekly plan.") + Retranslate.onLanguageChanged

            onFinished: {
                if (result == SystemUiResult.ConfirmButtonSelection) {
                    JS.function_SetValue_02()
                    JS.function_SetValue_03()
                    JS.function_SaveValue_01()
                    JS.function_ChangeEnabled_01();
                    JS.function_ChangeTitle_01()
                    JS.function_ChangeVisible_01();
                }
            }
        },

        ComponentDefinition {
            id: componentDefinition_01
            source: "asset:///Pages/Page_Exercises.qml"
        },

        ComponentDefinition {
            id: componentDefinition_02
            source: "asset:///Pages/Page_Exercis.qml"
        },

        Sheets_OtherWeeks {
            id: sheets_OtherWeeks
        }
    ]

    onCreationCompleted: {
        JS.function_ChangeEnabled_01()
        JS.function_ChangeTitle_01()
        JS.function_ChangeVisible_01()
    }
}
