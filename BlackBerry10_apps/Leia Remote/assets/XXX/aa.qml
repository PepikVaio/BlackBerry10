import bb.cascades 1.4

import "../Custom/ImageButtons"

// main "Container"
Container {
    
    property int property_PreferredHeight: ui.sdu(25)
    property int property_Margin: ui.sdu(1)
    
    layout: StackLayout {
        orientation: LayoutOrientation.TopToBottom
    }
    
    // for "Header"
    Container {
        
        Header {
            title: "Now playing"
            mode: HeaderMode.Interactive
            subtitle: qsTr("More info") + Retranslate.onLanguageChanged
            
            onTouch: {
            
            }
        }
    }
    
    // for "ImageView" && "StandardListItem" && "Custom_Container_for_MediaPlayback"
    Container {
        
        layout: StackLayout {
            orientation: LayoutOrientation.LeftToRight
        }
        
        // for "ImageView"
        Container {
            rightMargin: property_Margin
            
            layoutProperties: StackLayoutProperties {
                spaceQuota: 1
            }
            
            ImageView {
                preferredHeight: property_PreferredHeight
                scalingMethod: ScalingMethod.AspectFit
                imageSource: "asset:///Images/Image_Blank.png"
            }
        }
        
        // for "StandardListItem" && "Custom_Container_for_MediaPlayback"
        Container {
            verticalAlignment: VerticalAlignment.Center
            leftMargin: property_Margin
            
            layout: StackLayout {
                orientation: LayoutOrientation.TopToBottom
            }
            
            layoutProperties: StackLayoutProperties {
                spaceQuota: 4
            }
            
            // for "StandardListItem"
            Container {
                topMargin: property_Margin
                bottomMargin: property_Margin
                
                StandardListItem {
                    title: "Nothing is played"
                    description: "Nothing description"
                    status: "Nothing status"
                }
            }
            
            // for "Custom_Container_for_MediaPlayback"
            Container {
                topMargin: property_Margin
                bottomMargin: property_Margin
                horizontalAlignment: HorizontalAlignment.Center
                
                CustomMerged_ImageButtons_01 {
                }
            }
        }
    }
    
    // for "Divider"
    Container {
        
        Divider {
        }
    }
}
