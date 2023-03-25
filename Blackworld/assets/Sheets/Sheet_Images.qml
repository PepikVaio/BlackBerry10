import bb.cascades 1.4
import custom.WebImageView 1.0
//****************************

// import folder
import "../Custom/LayoutUpdateHandlers"
//*************************************

// import JavaScript
import "../JavaScripts/JavaScript_Page_Result.js" as JS
//*****************************************************

Sheet {
    id: sheet
    peekEnabled: false

    //alias for "groupDataModel"
    property alias alias_ArrayDataModel: groupDataModel
    //*************************************************

    Page {
        id: pages

        // vytvorit: "CustomListItemComponent_for_HorizontalWebImageViewWithFullScreen.qml"
        // az bude vyresene prefered width a height
        ListView {
            id: listView
            flickMode: FlickMode.SingleItem
            scrollIndicatorMode: ScrollIndicatorMode.None

            // alias for "WebImageView"
            property alias alias_sheet: sheet
            //*******************************

            // property for "WebImageView"
            property variant layoutFrame
            //**************************

            layout: StackListLayout {
                orientation: LayoutOrientation.LeftToRight
            }

            dataModel: ArrayDataModel {
                id: groupDataModel
            }

            listItemComponents: [

                ListItemComponent {

                    Container {
                        id: container
                        navigation.defaultHighlightEnabled: false

                        layout: DockLayout {
                        }

                        WebImageView {
                            preferredHeight: container.ListItem.view.layoutFrame.height
                            preferredWidth: container.ListItem.view.layoutFrame.width
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            scalingMethod: ScalingMethod.AspectFit
                            url: ListItemData.image
                        }

                        gestureHandlers: TapHandler {

                            onTapped: {
                                container.ListItem.view.alias_sheet.close()
                            }
                        }
                    }
                }
            ]

            attachedObjects: [
                
                CustomLayoutUpdateHandlers_for_ListViews {
                    id: layoutUpdateHandler
                }
            ]
        }

        onCreationCompleted: {
            // call funkction from "../JavaScripts/JavaScript..."
            JS.function_GetImages()
        }
    }
}
