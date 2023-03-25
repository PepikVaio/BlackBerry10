import bb.cascades 1.4
import custom.WebImageView 1.0 // for "WebImageView"
//**************************************************

// import folder
import "asset:///Custom/ActivityIndicators"
import "asset:///Custom/Timers"
//*****************************************

// "ListView" for "../Pages/Page_Result.qml"
ListView {
    scrollIndicatorMode: ScrollIndicatorMode.None

    // alias for "ArrayDataModel"
    property alias alias_ArrayDataModel: groupDataModel
    //*************************************************

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
                
                layout: StackLayout {
                    orientation: LayoutOrientation.LeftToRight
                }

                Container {
                    preferredWidth: container.ListItem.view.alias_Height
                    preferredHeight: container.ListItem.view.alias_Height

                    layout: DockLayout {
                    }

                    ActivityIndicator_Running {
                        id: activityIndicator_Rnning
                    }

                    WebImageView {
                        url: ListItemData.image

                        onLoadingFinished: {
                            container.ListItem.view.property_LoadingFinished_02 = true
                            customTimer_for_ActivityIndicator_Running.alias_timer.start()
                        }
                    }
                }

                Container {

                    Container {
                        preferredWidth: ui.sdu(1.5)
                    }
                }

                attachedObjects: [

                    CustomTimer_for_CustomActivityIndicator {
                        id: customTimer_for_ActivityIndicator_Running
                    }
                ]
            }
        }
    ]
}
