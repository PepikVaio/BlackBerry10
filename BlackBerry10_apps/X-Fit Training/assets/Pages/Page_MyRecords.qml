import bb.cascades 1.4
import custom.SqlDatabase 1.0

// import folders
import "../Custom/Containers"
//***************************

import "../Sheets"

Page {
    id: page

    titleBar: TitleBar {
        kind: TitleBarKind.Segmented

        options: [

            Option {
                text: qsTr("My records history") + Retranslate.onLanguageChanged
            },
            Option {
                text: qsTr("1 max. repetition") + Retranslate.onLanguageChanged
            }
        ]
    }

    Custom_MainContainer {

        ListView {

            layout: StackListLayout {
                headerMode: ListHeaderMode.Sticky
            }

            dataModel: GroupDataModel {
                id: groupDataModel
                grouping: ItemGrouping.ByFullValue

                sortingKeys: [ "date" ]
                sortedAscending: false
            }

            listItemComponents: [

                ListItemComponent {
                    type: "header"

                    Header {
                        title: ListItemData
                        //subtitle: ""
                    }
                },

                ListItemComponent {
                    type: "item"

                    StandardListItem {
                        title: ListItemData.title
                        description: ListItemData.description
                        status: ListItemData.status
                    }
                }
            ]
        }
    }

    actions: [

        ActionItem {
            enabled: false
            title: qsTr("Search") + Retranslate.onLanguageChanged
            ActionBar.placement: ActionBarPlacement.OnBar

            onTriggered: {
            }
        },

        ActionItem {
            title: qsTr("Add") + Retranslate.onLanguageChanged
            ActionBar.placement: ActionBarPlacement.Signature

            onTriggered: {
                sheet_AddNewRecords.open()
            }
        },

        ActionItem {
            enabled: false
            title: qsTr("Filter") + Retranslate.onLanguageChanged
            ActionBar.placement: ActionBarPlacement.OnBar

            onTriggered: {
            }
        }

    ]

    attachedObjects: [

        SqlDatabase {
            id: sqlDatabase
            source: "JSON + SQL + XML/Data/Database.db"
            query: "SELECT * FROM savedata"

            onDataLoaded: {
                groupDataModel.insertList(data);
            }
        },

        Sheet_AddNewRecords {
            id: sheet_AddNewRecords
        }
    ]

    onCreationCompleted: {
        sqlDatabase.load();
    }
}
