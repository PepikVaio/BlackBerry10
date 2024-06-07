import bb.cascades 1.4
import bb.data 1.0

// import folders
import "../Custom/Containers"
//***************************

Page {
    id: page

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

        Custom_MainContainer {
            id: container
        }
    }

    attachedObjects: [

        ComponentDefinition {
            id: componentDefinition_01

            Header {
                id: header
                mode: HeaderMode.Interactive
                touchPropagationMode: TouchPropagationMode.None
            }
        },

        ComponentDefinition {
            id: componentDefinition_02

            StandardListItem {
                id: standardListItem
            }
        },

        ComponentDefinition {
            id: componentDefinition_03

            Label {
                id: label
            }
        },

        DataSource {
            id: dataSource
            type: DataSourceType.Json
            source: "asset:///JSON + SQL + XML/Excercises/" + navigationPane.property_SelectedPlanId + "/Excercise_" + navigationPane.property_SelectedExerciseId + ".json"

            onDataLoaded: {

                var result_01 = data.weeks
                for (var x = 0; x < result_01.length; x ++) {
                    var header = componentDefinition_01.createObject();
                    header.title = result_01[x].week[tabbedPane.property_Language]
                    container.add(header)

                    var result_02 = data.weeks[x].days
                    for (var y = 0; y < result_02.length; y ++) {
                        var standardListItem = componentDefinition_02.createObject();

                        console.log(navigationPane.property_Weight_Week)

                        standardListItem.title = navigationPane[property_Weight_Week] + tabbedPane.property_MetricUnits
                        standardListItem.status = result_02[y].sets + " x " + result_02[y].reps + " (" + result_02[y].day[tabbedPane.property_Language] + ")"
                        standardListItem.description = navigationPane[property_Note_Week] + ""

                        container.add(standardListItem);

                        if (navigationPane.property_Count_01 != data.weeks.length) {
                            navigationPane.property_Count_01 ++

                            //if (standardListItem.title == "0" + tabbedPane.property_MetricUnits) {
                            if (standardListItem.status == "null x null" + " (" + result_02[y].day[tabbedPane.property_Language] + ")") {
                                //container.remove(header);
                                container.remove(standardListItem);
                            }
                        } else {
                            navigationPane.property_Count_02 ++

                            //if (standardListItem.title == "0" + tabbedPane.property_MetricUnits) {
                            if (standardListItem.status == "null x null" + " (" + result_02[y].day[tabbedPane.property_Language] + ")") {
                                container.remove(standardListItem);
                            }
                        }
                    }
                }
            }
        }
    ]

    onCreationCompleted: {
        dataSource.load()
    }
}
