import bb.cascades 1.0

Page {
    id: page

    ListView {
        id: listView
        flickMode: FlickMode.SingleItem

        property variant layoutFrame

        layout: StackListLayout {
            orientation: LayoutOrientation.LeftToRight
        }

        dataModel: XmlDataModel {
            source: "datamodel_full.xml"
        }

        listItemComponents: [

            ListItemComponent {
                type: "page"

                ScrollView {
                    id: scrollView

                    Container {
                        preferredWidth: scrollView.ListItem.view.layoutFrame.width

                        Label {
                            text: ListItemData.body
                            horizontalAlignment: HorizontalAlignment.Center
                            multiline: true
                            textFormat: TextFormat.Html
                        }
                    }
                }
            }
        ]

        attachedObjects: [

            LayoutUpdateHandler {
                onLayoutFrameChanged: listView.layoutFrame = layoutFrame
            }
        ]
    }
}
