import bb.cascades 1.4
//********************

ListView {

    // alias for "ArrayDataModel"
    property alias alias_ArrayDataModel: groupDataModel
    //*************************************************

    dataModel: ArrayDataModel {
        id: groupDataModel
    }

    listItemComponents: [

        ListItemComponent {

            StandardListItem {
                title: ListItemData.name
                description: ListItemData.review
                status: ListItemData.stars
            }
        }
    ]
}
