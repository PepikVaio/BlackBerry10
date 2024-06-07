import bb.cascades 1.4

// import folders
import "../Pages"
import "../Sheets"
//****************

NavigationPane {
    id: navigationPane

    Page {
        id: page
        
        // property for "ListView"
        property string property_Language: tabbedPane.property_Language
        //*************************************************************

        titleBar: TitleBar {
            id: titleBar

            title: if (tabbedPane.property_Description != "") {
                if (tabbedPane.property_SelectedWeekObjectName == "Week_08") {
                    tabbedPane.property_SelectedWeek + " (" + tabbedPane.property_Description + ")"
                } else {
                    tabbedPane.property_SelectedWeek
                }
            } else {
                tabbedPane.property_SelectedWeek
            }
        }

        Container {

            ListView {
                
                // alias for "ListItemComponent"
                property alias property_Language: page.property_Language
                //******************************************************

                dataModel: XmlDataModel {
                    source: "asset:///XML + JSON/XML/Weeks/" + tabbedPane.property_SelectedWeekObjectName + ".xml"
                }

                listItemComponents: [

                    ListItemComponent {
                        type: "day"

                        Container {
                            id: container

                            Header {
                                title: ListItemData["title_" + container.ListItem.view.property_Language]
                            }

                            StandardListItem {
                                title: if (ListItemData["muscle_part_02_" + container.ListItem.view.property_Language] != "") {
                                    ListItemData["muscle_part_01_" + container.ListItem.view.property_Language] + " + " + ListItemData["muscle_part_02_" + container.ListItem.view.property_Language]
                                } else {
                                    ListItemData["muscle_part_01_" + container.ListItem.view.property_Language]
                                }

                                status: if (ListItemData.difficulty != "") {
                                    ListItemData["difficulty_" + container.ListItem.view.property_Language]
                                }
                            }
                        }
                    }
                ]

                onTriggered: {
                    var selectedItem = dataModel.data(indexPath)
                    tabbedPane.property_SelectedDay = selectedItem["title_" + tabbedPane.property_Language]
                    tabbedPane.property_SelectedDayId = selectedItem.id
                    tabbedPane.property_SelectedMuscleParts_01 = selectedItem["muscle_part_01_" + tabbedPane.property_Language]
                    tabbedPane.property_SelectedMuscleParts_02 = selectedItem["muscle_part_02_" + tabbedPane.property_Language]
                    navigationPane.push(componentDefinition_01.createObject())
                }
            }
        }

        attachedObjects: [

            ComponentDefinition {
                id: componentDefinition_01
                source: "asset:///Pages/Page_Exercises.qml"
            },

            ComponentDefinition {
                id: componentDefinition02
                source: "asset:///Pages/Page_Exercis.qml"
            },

            Sheets_OtherWeeks {
                id: sheets_OtherWeeks
            }
        ]
    }
}
