import bb.cascades 1.4
import bb.data 1.0

// import folders
import "../Custom/"
//*****************

Sheet {
    id: sheet

    Page {
        titleBar: TitleBar {
            title: "All weeks"

            dismissAction: ActionItem {
                title: "Close"
                ActionBar.placement: ActionBarPlacement.Signature

                onTriggered: {
                    sheet.close()
                }
            }

        }

        ScrollView {
            id: scrollView

            Container {
                id: container
            }
        }

        actions: [

            ActionItem {
                title: "Collapse all"
                ActionBar.placement: ActionBarPlacement.OnBar

                onTriggered: {
                    custom_Container_1.alias_HeaderClick.clicked()
                    custom_Container_2.alias_HeaderClick.clicked()
                    custom_Container_3.alias_HeaderClick.clicked()
                    custom_Container_4.alias_HeaderClick.clicked()
                    custom_Container_5.alias_HeaderClick.clicked()
                    custom_Container_6.alias_HeaderClick.clicked()
                    custom_Container_7.alias_HeaderClick.clicked()
                    custom_Container_8.alias_HeaderClick.clicked()
                }
            }
        ]

        attachedObjects: [

            Custom_Container_1 {
                id: custom_Container_1
            },
            Custom_Container_1 {
                id: custom_Container_2
            },

            Custom_Container_1 {
                id: custom_Container_3
            },

            Custom_Container_1 {
                id: custom_Container_4
            },

            Custom_Container_1 {
                id: custom_Container_5
            },

            Custom_Container_1 {
                id: custom_Container_6
            },

            Custom_Container_1 {
                id: custom_Container_7
            },

            Custom_Container_1 {
                id: custom_Container_8
            },

            DataSource {
                id: dataSource
                type: DataSourceType.Json
                source: "asset:///XML + JSON/JSON/Excercises/Excercise_" + tabbedPane.property_SelectedExerciseId + ".json"

                onDataLoaded: {
                    var result = data.weeks["Week_01"]
                    if (result != null) {
                        container.add(custom_Container_1)
                        var target = custom_Container_1
                        target.alias_Header = result.week[tabbedPane.property_Language]
                        target.alias_StandardListItemTitle = tabbedPane[property_Weight_Week_01] + tabbedPane.property_MetricUnits
                        target.alias_StandardListItemStatus = result.sets + " x " + result.reps
                        target.alias_Label = tabbedPane[property_Note_Week_01] + ""
                    }

                    var result = data.weeks["Week_02"]
                    if (result != null) {
                        container.add(custom_Container_2)
                        var target = custom_Container_2
                        target.alias_Header = result.week[tabbedPane.property_Language]
                        target.alias_StandardListItemTitle = tabbedPane[property_Weight_Week_02] + tabbedPane.property_MetricUnits
                        target.alias_StandardListItemStatus = result.sets + " x " + result.reps
                        target.alias_Label = tabbedPane[property_Note_Week_02] + ""
                    }

                    var result = data.weeks["Week_03"]
                    if (result != null) {
                        container.add(custom_Container_3)
                        var target = custom_Container_3
                        target.alias_Header = result.week[tabbedPane.property_Language]
                        target.alias_StandardListItemTitle = tabbedPane[property_Weight_Week_03] + tabbedPane.property_MetricUnits
                        target.alias_StandardListItemStatus = result.sets + " x " + result.reps
                        target.alias_Label = tabbedPane[property_Note_Week_03] + ""
                    }

                    var result = data.weeks["Week_04"]
                    if (result != null) {
                        container.add(custom_Container_4)
                        var target = custom_Container_4
                        target.alias_Header = result.week[tabbedPane.property_Language]
                        target.alias_StandardListItemTitle = tabbedPane[property_Weight_Week_04] + tabbedPane.property_MetricUnits
                        target.alias_StandardListItemStatus = result.sets + " x " + result.reps
                        target.alias_Label = tabbedPane[property_Note_Week_04] + ""
                    }

                    var result = data.weeks["Week_05"]
                    if (result != null) {
                        container.add(custom_Container_5)
                        var target = custom_Container_5
                        target.alias_Header = result.week[tabbedPane.property_Language]
                        target.alias_StandardListItemTitle = tabbedPane[property_Weight_Week_05] + tabbedPane.property_MetricUnits
                        target.alias_StandardListItemStatus = result.sets + " x " + result.reps
                        target.alias_Label = tabbedPane[property_Note_Week_05] + ""
                    }

                    var result = data.weeks["Week_06"]
                    if (result != null) {
                        container.add(custom_Container_6)
                        var target = custom_Container_6
                        target.alias_Header = result.week[tabbedPane.property_Language]
                        target.alias_StandardListItemTitle = tabbedPane[property_Weight_Week_06] + tabbedPane.property_MetricUnits
                        target.alias_StandardListItemStatus = result.sets + " x " + result.reps
                        target.alias_Label = tabbedPane[property_Note_Week_06] + ""
                    }

                    var result = data.weeks["Week_07"]
                    if (result != null) {
                        container.add(custom_Container_7)
                        var target = custom_Container_7
                        target.alias_Header = result.week[tabbedPane.property_Language]
                        target.alias_StandardListItemTitle = tabbedPane[property_Weight_Week_07] + tabbedPane.property_MetricUnits
                        target.alias_StandardListItemStatus = result.sets + " x " + result.reps
                        target.alias_Label = tabbedPane[property_Note_Week_07] + ""
                    }

                    var result = data.weeks["Week_08"]
                    if (result != null) {
                        container.add(custom_Container_8)
                        var target = custom_Container_8
                        target.alias_Header = result.week[tabbedPane.property_Language]
                        target.alias_StandardListItemTitle = tabbedPane[property_Weight_Week_08] + tabbedPane.property_MetricUnits
                        target.alias_StandardListItemStatus = result.sets + " x " + result.reps
                        target.alias_Label = tabbedPane[property_Note_Week_08] + ""
                    }
                }
            }
        ]
    }

    onOpened: {
        dataSource.load()
    }
    
    onClosed: {
        //scrollView.scrollToPoint(0, 0)
        container.removeAll()
    }
}
