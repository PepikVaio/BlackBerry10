import bb.cascades 1.4
import bb.system 1.0
import bb.data 1.0

// import folders
import "../Custom/Containers"
//***************************

Page {
    id: page

    property string propertyNoInfo: "Loading data ..."

    titleBar: TitleBar {
        title: navigationPane.property_SelectedExercise
    }

    ScrollView {

        Custom_MainContainer {

            Container {
                topMargin: ui.sdu(3)

                Container {

                    layout: StackLayout {
                        orientation: LayoutOrientation.LeftToRight
                    }

                    Container {
                        verticalAlignment: VerticalAlignment.Center

                        layoutProperties: StackLayoutProperties {
                            spaceQuota: 1
                        }

                        ImageView {
                            horizontalAlignment: HorizontalAlignment.Center
                            scalingMethod: ScalingMethod.AspectFit
                            imageSource: "asset:///Images/Image_" + navigationPane.property_SelectedExerciseId + ".jpg"
                        }
                    }

                    Container {

                        layoutProperties: StackLayoutProperties {
                            spaceQuota: 2
                        }

                        Container {

                            Header {
                                id: header_01
                                title: page.propertyNoInfo
                                mode: HeaderMode.Interactive
                                subtitle: qsTr("other weeks") + Retranslate.onLanguageChanged

                                onClicked: {
                                    sheets_OtherWeeks.open()
                                }
                            }
                        }

                        Container {
                            leftPadding: ui.sdu(1.5)
                            rightPadding: ui.sdu(1.5)

                            Header {
                                id: header_02
                                title: page.propertyNoInfo
                                subtitle: qsTr("sets x reps") + Retranslate.onLanguageChanged
                            }
                            Header {
                                id: header_03
                                title: page.propertyNoInfo
                                subtitle: qsTr("rest") + Retranslate.onLanguageChanged
                            }
                            Header {
                                id: header_04
                                title: page.propertyNoInfo
                                subtitle: qsTr("kind") + Retranslate.onLanguageChanged
                            }
                        }

                        Container {
                            leftPadding: ui.sdu(1.5)
                            rightPadding: ui.sdu(1.5)

                            Header {
                                id: header_05
                                mode: HeaderMode.Interactive
                                title: _app.getValueFor(navigationPane.property_Weight, navigationPane[property_Weight]) + tabbedPane.property_MetricUnits

                                subtitle: if (title == "0" + navigationPane.property_MetricUnits) {
                                    qsTr("enter a new weight") + Retranslate.onLanguageChanged
                                } else {
                                    qsTr("adjust weight") + Retranslate.onLanguageChanged
                                }

                                onClicked: {
                                    systemPrompt_01.show()
                                }
                            }
                        }
                    }
                }

                Container {
                    topMargin: ui.sdu(3)

                    visible: if (label.text == "") {
                        false
                    } else {
                        true
                    }

                    Header {
                        title: qsTr("Note:") + Retranslate.onLanguageChanged
                        mode: HeaderMode.Interactive
                        touchPropagationMode: TouchPropagationMode.None
                    }

                    Label {
                        id: label
                        multiline: true
                        text: _app.getValueFor(navigationPane.property_Note, navigationPane[property_Note])
                    }
                }

                Container {
                    topMargin: ui.sdu(3)
                    bottomMargin: topMargin

                    Container {
                        topMargin: ui.sdu(3)
                        bottomMargin: topMargin

                        Header {
                            title: qsTr("Execution:") + Retranslate.onLanguageChanged
                            mode: HeaderMode.Interactive
                            touchPropagationMode: TouchPropagationMode.None
                        }

                        Label {
                            id: label_01
                            multiline: true
                            text: page.propertyNoInfo
                        }
                    }

                    Container {
                        topMargin: ui.sdu(3)
                        bottomMargin: topMargin

                        Header {
                            title: qsTr("Mistakes:") + Retranslate.onLanguageChanged
                            mode: HeaderMode.Interactive
                            touchPropagationMode: TouchPropagationMode.None
                        }

                        Label {
                            id: label_02
                            multiline: true
                            text: page.propertyNoInfo
                        }
                    }

                    Container {
                        topMargin: ui.sdu(3)
                        bottomMargin: topMargin

                        Header {
                            title: qsTr("Alternative exercises:") + Retranslate.onLanguageChanged
                            mode: HeaderMode.Interactive
                            touchPropagationMode: TouchPropagationMode.None
                        }

                        Label {
                            id: label_03
                            multiline: true
                            text: page.propertyNoInfo
                        }
                    }
                }
            }
        }
    }

    actions: [

        ActionItem {
            title: qsTr("Info") + Retranslate.onLanguageChanged
            ActionBar.placement: ActionBarPlacement.Signature

            onTriggered: {
                systemDialog.show()
            }
        },

        ActionItem {
            ActionBar.placement: ActionBarPlacement.OnBar

            title: if (label.text == "") {
                qsTr("Write note") + Retranslate.onLanguageChanged
            } else {
                qsTr("Edit note") + Retranslate.onLanguageChanged
            }

            onTriggered: {
                systemPrompt_02.show()
            }
        },

        DeleteActionItem {
            title: qsTr("Delete note") + Retranslate.onLanguageChanged

            enabled: if (label.text == "") {
                false
            } else {
                true
            }

            onTriggered: {
                label.text = ""
                navigationPane[property_Note] = ""
                _app.saveValueFor(navigationPane.property_Note, "")
            }
        }
    ]

    attachedObjects: [

        DataSource {
            id: dataSource
            type: DataSourceType.Json
            source: "asset:///JSON + SQL + XML/Excercises/" + navigationPane.property_SelectedPlanId + "/Excercise_" + navigationPane.property_SelectedExerciseId + ".json"

            onDataLoaded: {
                var result = data.weeks[navigationPane.property_SelectedWeekId_02]
                header_01.title = result.week[tabbedPane.property_Language]
                header_02.title = result.days[property_SelectedDayId_02].sets + " x " + result.days[property_SelectedDayId_02].reps
                header_03.title = result.days[property_SelectedDayId_02].rest
                header_04.title = result.days[property_SelectedDayId_02].kind[tabbedPane.property_Language]

                var result = data.info
                label_01.text = result.execution[tabbedPane.property_Language]
                label_02.text = result.mistakes[tabbedPane.property_Language]
                label_03.text = result.alternative_exercises[tabbedPane.property_Language]
                systemDialog.body = result.info[tabbedPane.property_Language]
            }
        },

        SystemDialog {
            id: systemDialog
            title: qsTr("Info") + Retranslate.onLanguageChanged
            cancelButton.enabled: false
        },

        SystemPrompt {
            id: systemPrompt_01
            title: qsTr("Enter the new weight") + Retranslate.onLanguageChanged
            inputField.inputMode: SystemUiInputMode.Phone
            inputField.emptyText: qsTr("Please enter the new weight.") + Retranslate.onLanguageChanged
            inputField.maximumLength: if (tabbedPane.property_MetricUnits == " kg") {
                3
            } else {
                6
            }

            onFinished: {
                if (result == SystemUiResult.ConfirmButtonSelection) {
                    header_05.title = inputFieldTextEntry() + tabbedPane.property_MetricUnits

                    navigationPane[property_Weight] = inputFieldTextEntry()
                    _app.saveValueFor(navigationPane.property_Weight, inputFieldTextEntry())
                }
            }
        },

        SystemPrompt {
            id: systemPrompt_02
            title: qsTr("Write a note") + Retranslate.onLanguageChanged
            inputField.emptyText: qsTr("Please write a note.") + Retranslate.onLanguageChanged
            inputField.defaultText: label.text

            onFinished: {
                if (result == SystemUiResult.ConfirmButtonSelection) {
                    label.text = inputFieldTextEntry()
                    navigationPane[property_Note] = inputFieldTextEntry()
                    _app.saveValueFor(navigationPane.property_Note, inputFieldTextEntry())
                }
            }
        }
    ]

    onCreationCompleted: {
        dataSource.load()
    }
}
