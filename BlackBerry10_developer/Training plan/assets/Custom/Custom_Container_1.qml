import bb.cascades 1.4

Container {
    topMargin: ui.sddu(5)
    bottomMargin: ui.sdu(5)
    
    property alias alias_HeaderClick: header

    property alias alias_Header: header.title
    property alias alias_StandardListItemTitle: standardListItem.title
    property alias alias_StandardListItemStatus: standardListItem.status
    
    property alias alias_Label: label.text

    Container {
        
        Header {
            id: header
            mode: HeaderMode.Interactive
            subtitle: "show"

            onClicked: {
                if (container.visible == true) {
                    container.visible = false
                    subtitle = "show"
                } else {
                    container.visible = true
                    subtitle = "hide"
                }
            }
        }
    }
    
    Container {
        id: container
        leftPadding: ui.sdu(1.5)
        rightPadding: ui.sdu(1.5)

        Container {
            
            StandardListItem {
                id: standardListItem
            }
        }
        
        Container {
            
            Label {
                id: label
                multiline: true
            }
        }
    }
}
