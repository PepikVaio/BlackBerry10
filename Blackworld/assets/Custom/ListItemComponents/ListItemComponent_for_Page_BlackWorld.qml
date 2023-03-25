import bb.cascades 1.4
import custom.WebImageView 1.0
//****************************

// import folder
import "../../Custom/ActivityIndicators"
import "../../Custom/Containers"
//**************************************

ListItemComponent {
    type: "item"

    //Main Container
    Container {
        id: container
        navigation.focusPolicy: NavigationFocusPolicy.NotFocusable

        // Container for StackListLayout
        Container_B_Margin_1_5 {
            visible: container.ListItem.view.property_Container_Visible_01
            
            // Container for content
            Container {
                id: container_for_content_01
                //background: (get data from "StandardListItem - onFocusedChanged")
                
                layout: StackLayout {
                    orientation: LayoutOrientation.LeftToRight
                }

                // Container for "ActivityIndicator_Running" and "WebImageView"
                Container_LR_Margin_2_and_HV_Alignment_Center {
                    preferredWidth: ui.sdu(15)
                    preferredHeight: ui.sdu(15)
                    
                    topPadding: ui.sdu(container.ListItem.view.property_Indentation_01)
                    bottomPadding: ui.sdu(container.ListItem.view.property_Indentation_01)
                    leftPadding: ui.sdu(container.ListItem.view.property_Indentation_01)  
                    rightPadding: ui.sdu(container.ListItem.view.property_Indentation_01)

                    layout: DockLayout {
                    }

                    ActivityIndicator_Running {
                    }

                    WebImageView {
                        url: ListItemData.icon
                    }
                } // End Container for "ActivityIndicator_Running" and "WebImageView"

                // Container for "StandardListItem" and "Label"
                Container_LR_Margin_2_and_HV_Alignment_Center {
                    rightPadding: ui.sdu(container.ListItem.view.property_Indentation_01)

                    layout: StackLayout {
                        orientation: LayoutOrientation.TopToBottom
                    }

                    layoutProperties: StackLayoutProperties {
                        spaceQuota: 1
                    }

                    Container {
                        
                        StandardListItem {
                            title: ListItemData.title
                            description: ListItemData.description
                            status: ListItemData.version
                            
                            onFocusedChanged: {
                                if (focused == true) {
                                    container_for_content_01.background = ui.palette.primaryDark
                                } else {
                                    container_for_content_01.background = Color.Transparent
                                }
                            }
                        }
                    }

                    Container {
                        bottomPadding: ui.sdu(1)

                        Label {
                            text: ListItemData.overview
                            textStyle.fontStyle: FontStyle.Italic
                            multiline: true
                            autoSize.maxLineCount: 1
                        }
                    }
                } // End Container for "StandardListItem" and "Label"
            } // End Container for content

            // Container for "Divider"
            Container {

                Divider {
                }
            } // End Container for "Divider"
        } // End Container for StackListLayout

        // Container for GridListLayout
        Container {
            visible: container.ListItem.view.property_Container_Visible_02
            
            background: Color.Red
            
            //horizontalAlignment: HorizontalAlignment.Center
            
            //topPadding: ui.sddu(0.5)
            //bottomPadding: ui.sddu(0.5)
            
            topMargin: ui.sdu(5)
            bottomMargin: ui.sdu(5)
            
            navigation.focusPolicy: NavigationFocusPolicy.Focusable
            navigation.defaultHighlightEnabled: false
            //background: navigation.wantsHighlight ? ui.palette.primaryDark : Color.Transparent


            
            layout: DockLayout {

            }
            minHeight: ui.sdu(25) 
            minWidth: ui.sdu(15)
            maxHeight: ui.sdu(25)
            maxWidth: ui.sdu(18)
            
            

            
            
            //doresit grindlayout!!!!!!!!!!!!!!!!






            //layout: StackLayout {
            //    orientation: LayoutOrientation.TopToBottom
            //}

            // Container for "ActivityIndicator_Running" and "WebImageView"
            Container {

                //horizontalAlignment: HorizontalAlignment.Center
                
                minHeight: ui.sdu(15) 
                minWidth: ui.sdu(15)
                maxHeight: ui.sdu(15)
                maxWidth: ui.sdu(15)
                
                //leftPadding: ui.sdu(1)
                //rightPadding: ui.sdu(1)
                //topPadding: ui.sdu(1)
                //bottomPadding: ui.sdu(1)




                layout: DockLayout {
                }

                ActivityIndicator_Running {
                }

                WebImageView {
                    url: ListItemData.icon
                    horizontalAlignment: HorizontalAlignment.Center
                    verticalAlignment: VerticalAlignment.Center
                }

                attachedObjects: [
                    LayoutUpdateHandler {
                        id: layoutUpdateHandler
                    }
                ]
            } // End Container for "ActivityIndicator_Running" and "WebImageView"

            // Container for "Label"
            Container {
                //preferredHeight: ui.sddu(6)
                preferredWidth: layoutUpdateHandler.layoutFrame.width
                //horizontalAlignment: HorizontalAlignment.Center

                Label {
                    text: ListItemData.title
                    //autoSize.maxLineCount: 2
                    multiline: true
                    //textStyle.fontSize: FontSize.XSmall
                    //textStyle.fontWeight: FontWeight.Default
                    //textStyle.lineHeight: 0.8
                }
            } // End Container for "Label"
        } // End Container for "GridListLayout"
    } // End Main Container
}
