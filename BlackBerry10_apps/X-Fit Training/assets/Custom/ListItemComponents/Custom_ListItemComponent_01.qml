import bb.cascades 1.4

// ListItemComponent for "../Custom/ListViews/Custom_ListView_01.qml"
ListItemComponent {
    type: "plan"
    
    Container {
        id: container_01
        
        onCreationCompleted: {
            container_01.ListItem.view.property_SelectedPlan = ListItemData["title_" + container_01.ListItem.view.property_Language];
        }
    }
}
