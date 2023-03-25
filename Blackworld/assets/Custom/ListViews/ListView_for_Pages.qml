import bb.cascades 1.4
//********************

// import folder
import "../../Custom/ListItemComponents"
//**************************************

ListView {
    layout: navigationPane.property_ListView_for_Pages_Layout
    horizontalAlignment: HorizontalAlignment.Fill
    verticalAlignment: VerticalAlignment.Fill

    // alias for "ListView_for_Pages"
    property alias property_GroupDataModel: groupDataModel
    //****************************************************
    property alias property_GridListLayout: gridListLayout
    property alias property_StackListLayout: stackListLayout
    //******************************************************
    // property for "ListItemComponent_for_Page_BlackWorld"
    property bool property_Container_Visible_01: navigationPane.property_Container_Visible_01
    property bool property_Container_Visible_02: navigationPane.property_Container_Visible_02
    property real property_Indentation_01: navigationPane.property_Indentation_01
    property real property_Indentation_02: navigationPane.property_Indentation_02
    //***************************************************************************************

    dataModel: [

        GroupDataModel {
            id: groupDataModel
            grouping: ItemGrouping[navigationPane.property_Grouping]
            sortedAscending: navigationPane.property_SortedAscending
            sortingKeys: navigationPane.property_SortingKeys
        }
    ]

    listItemComponents: [

        ListItemComponent_for_Page_BlackWorld {
            id: listItemComponent_for_Page_BlackWorld
        }
    ]

    attachedObjects: [

        GridListLayout {
            id: gridListLayout
            columnCount: 5
        },

        StackListLayout {
            id: stackListLayout
        }
    ]
}
