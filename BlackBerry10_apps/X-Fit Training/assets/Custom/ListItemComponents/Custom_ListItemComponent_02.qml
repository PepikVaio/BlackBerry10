import bb.cascades 1.4

// ListItemComponent for "../Custom/ListViews/Custom_ListView_01.qml"
ListItemComponent {
    type: "day"

    Container {
        id: container_02

        Header {
            title: ListItemData["title_" + container_02.ListItem.view.property_Language]
        }

        StandardListItem {
            title: if (ListItemData["muscle_part_02_" + container_02.ListItem.view.property_Language] != "") {
                ListItemData["muscle_part_01_" + container_02.ListItem.view.property_Language] + " + " + ListItemData["muscle_part_02_" + container_02.ListItem.view.property_Language]
            } else {
                ListItemData["muscle_part_01_" + container_02.ListItem.view.property_Language]
            }

            status: if (ListItemData.difficulty != "") {
                ListItemData.difficulty + qsTr(" from max. weight") + Retranslate.onLanguageChanged
            }
        }
    }
}
