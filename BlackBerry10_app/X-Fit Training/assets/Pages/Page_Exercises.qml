import bb.cascades 1.4

// import folders
import "../Custom/Containers"
//***************************

Page {
    id: page

    // property for "ListView"
    property string property_Device: tabbedPane.property_Device
    property string property_Language: tabbedPane.property_Language
    property string property_SelectedDay: navigationPane.property_SelectedDay
    property string property_SelectedWeek: navigationPane.property_SelectedWeek
    //*************************************************************************

    titleBar: TitleBar {
        title: if (navigationPane.property_SelectedMuscleParts_02 != "") {
            navigationPane.property_SelectedMuscleParts_01 + " + " + navigationPane.property_SelectedMuscleParts_02
        } else {
            navigationPane.property_SelectedMuscleParts_01
        }
    }

    Custom_MainContainer {

        ListView {

            // alias for "ListItemComponent"
            property alias property_Device: page.property_Device
            property alias property_Language: page.property_Language
            property alias property_SelectedDay: page.property_SelectedDay
            property alias property_SelectedWeek: page.property_SelectedWeek
            //**************************************************************

            dataModel: XmlDataModel {
                source: "asset:///JSON + SQL + XML/Days/" + navigationPane.property_SelectedPlanId + "/" + navigationPane.property_SelectedDayId_01 + ".xml"
            }

            listItemComponents: [

                ListItemComponent {
                    type: "muscleparts"

                    Container {
                        id: container_01

                        Header {
                            title: container_01.ListItem.view.property_SelectedWeek + " - " + container_01.ListItem.view.property_SelectedDay + " (" + ListItemData["title_" + container_01.ListItem.view.property_Language] + ")"
                        }
                    }
                },

                ListItemComponent {
                    type: "exercise"

                    Container {
                        id: container_02

                        StandardListItem {
                            title: ListItemData["title_" + container_02.ListItem.view.property_Language]

                            status: if (container_02.ListItem.view.property_Device == "Passport") {
                                ListItemData["difficulty_" + container_02.ListItem.view.property_Language]
                            }

                            description: if (container_02.ListItem.view.property_Device != "Passport") {
                                ListItemData["difficulty_" + container_02.ListItem.view.property_Language]
                            }
                        }
                    }
                }
            ]

            onTriggered: {
                var selectedItem = dataModel.data(indexPath);
                navigationPane.property_SelectedExercise = selectedItem["title_" + tabbedPane.property_Language]
                navigationPane.property_SelectedExerciseId = selectedItem.id
                navigationPane.push(componentDefinition_02.createObject())
            }
        }
    }
}
