import bb.cascades 1.4

// import folders
import "../Custom/Containers"
import "../Custom/Headers"
import "../JavaScripts/JavaScript_AddMovements.js" as JS
//******************************************************

Page {
    id: page

    // property for "Today is:"
    property real property_CurrentDate
    property real property_CurrentYear
    property string property_CurrentDay
    property string property_CurrentMonth
    //***********************************

    // property for "Movement:"
    property real property_MaxRepetitions: 10
    property real property_MaxSeries: 3
    property real property_MaxWeight: 110
    property real property_MinWeight: 20
    property real property_TitleRepetitions: 1
    property real property_TitleSeries: 1
    property variant property_Null
    //****************************************

    // property for "function_SetDate" (onCreationCompleted, onValueChanged)
    property string property_DayId
    property string property_MonthId
    //**********************************************************************

    onProperty_CurrentDayChanged: {
        JS.function_Convert_01()
    }
    onProperty_CurrentMonthChanged: {
        JS.function_Convert_02()
    }
    onProperty_DayIdChanged: {
        JS.function_Convert_03()
    }
    onProperty_MonthIdChanged: {
        JS.function_Convert_04()
    }

    titleBar: TitleBar {
        title: qsTr("Add new record") + Retranslate.onLanguageChanged

        dismissAction: ActionItem {
            title: qsTr("Close") + Retranslate.onLocaleChanged

            onTriggered: {
                sheet.close()
            }
        }

        acceptAction: ActionItem {
            title: qsTr("Save") + Retranslate.onLanguageChanged

            onTriggered: {
                JS.function_Add_SaveData(dropDown_01.selectedOption.text, dropDown_04.selectedOption.text, dropDown_02.selectedOption.text + " x " + dropDown_03.selectedOption.text, property_MonthId + " - " + dateTimePicker.value.getFullYear(), textField.text, textArea.text)
                sheet.close()
            }
        }
    }

    ScrollView {
        id: scrollView

        Custom_MainContainer {

            Container {

                Header {
                    title: qsTr("Today is:") + Retranslate.onLanguageChanged
                    subtitle: page.property_CurrentDay + ", " + page.property_CurrentDate + "." + page.property_CurrentMonth + " " + page.property_CurrentYear
                }

                DateTimePicker {
                    id: dateTimePicker
                    title: qsTr("Date") + Retranslate.onLanguageChanged
                    mode: DateTimePickerMode.Date

                    onValueChanged: {
                        JS.function_SetDate()
                    }
                }
            }

            Container {

                Custom_Header_01 {
                    title: qsTr("Movement:") + Retranslate.onLanguageChanged
                }

                Container {

                    layout: StackLayout {
                        orientation: LayoutOrientation.LeftToRight
                    }

                    ImageView {
                        id: imageView
                        verticalAlignment: VerticalAlignment.Center

                        layoutProperties: StackLayoutProperties {
                            spaceQuota: -1
                        }

                        imageSource: "asset:///Images/App/finished_shadow.png"
                    }

                    Container {
                        layoutProperties: StackLayoutProperties {
                            spaceQuota: 1
                        }

                        Label {
                            verticalAlignment: VerticalAlignment.Center
                            text: "Personal record"
                            textStyle.fontSize: FontSize.Large
                        }

                        Label {
                            topMargin: ui.sdu(-10)
                            verticalAlignment: VerticalAlignment.Center
                            text: "If this is personal recodr, slide the button please."
                            textStyle.color: Color.Gray
                            multiline: true
                        }
                    }

                    ToggleButton {
                        verticalAlignment: VerticalAlignment.Center

                        layoutProperties: StackLayoutProperties {
                            spaceQuota: -1
                        }

                        onCheckedChanged: {
                            if (checked) {
                                imageView.imageSource = "asset:///Images/App/finished_gold.png"
                                dropDown_02.enabled = false
                                dropDown_03.enabled = false

                                dropDown_02.selectedIndex = 0
                                dropDown_03.selectedIndex = 0
                            } else {
                                imageView.imageSource = "asset:///Images/App/finished_shadow.png"
                                dropDown_02.enabled = true
                                dropDown_03.enabled = true

                                dropDown_02.selectedIndex = property_Null
                                dropDown_03.selectedIndex = property_Null
                            }
                        }
                    }
                }

                Container {

                    DropDown {
                        id: dropDown_01
                        title: qsTr("Exercise") + Retranslate.onLanguageChanged

                        options: []
                    }

                    DropDown {
                        id: dropDown_02
                        title: qsTr("Sets") + Retranslate.onLanguageChanged

                        options: []
                    }

                    DropDown {
                        id: dropDown_03
                        title: qsTr("Reps") + Retranslate.onLanguageChanged

                        options: []
                    }

                    DropDown {
                        id: dropDown_04
                        title: qsTr("Weight") + Retranslate.onLanguageChanged

                        options: []
                    }
                }
            }

            Container {

                Custom_Header_01 {
                    title: qsTr("Descriptions:") + Retranslate.onLanguageChanged
                }

                TextField {
                    id: textField
                    maximumLength: 30
                }
            }

            Container {

                Custom_Header_01 {
                    title: qsTr("Note:") + Retranslate.onLanguageChanged
                }

                TextArea {
                    id: textArea
                }
            }
        }
    }

    attachedObjects: [

        ComponentDefinition {
            id: componentDefinition

            Option {
            }
        }
    ]

    onCreationCompleted: {

        dropDown_01.removeAll()

        JS.function_AddOption_01()
        JS.function_AddOption_02()
        JS.function_AddOption_03()
        JS.function_AddOption_04()

        JS.function_SetCurrentDate()
        JS.function_SetDate()
    }
}
