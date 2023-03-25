import bb.cascades 1.4
//********************

// Container for "../Custom/ListViews/ListView_for_Pages.qml"
Container {

    // property for indentation
    property int property_Indentation: container.ListItem.view.property_Indentation_02
    //********************************************************************************

    leftMargin: ui.sdu(property_Indentation)
    rightMargin: ui.sdu(property_Indentation)

    horizontalAlignment: HorizontalAlignment.Center
    verticalAlignment: VerticalAlignment.Center
    
}
