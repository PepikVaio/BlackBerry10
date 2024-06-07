import bb.cascades 1.4

// import folders
import "../Custom/ImageButtons"
import "../Custom/Containers"
//*****************************

// Container for "../Pages/Page_Remote.qml"
Container {
    
    property int property_PreferredHeight: ui.sdu(25)
    property int property_Margin: ui.sdu(1)
    
    layout: StackLayout {
        orientation: LayoutOrientation.TopToBottom
    }
    
    // Container for "Header"
    Container {
        
        Header {
            title: "Now playing"
            mode: HeaderMode.Interactive
            subtitle: qsTr("More info") + Retranslate.onLanguageChanged
            
            onTouch: {
                // action ...
            }
        }
    }
    
    // Container for "ImageView" && "StandardListItem" && "CustomMerged_ImageButtons_01"
    Container {
        
        layout: StackLayout {
            orientation: LayoutOrientation.LeftToRight
        }
        
        // Container for "ImageView"
        Container {
            rightMargin: property_Margin
            
            layoutProperties: StackLayoutProperties {
                spaceQuota: 1
            }
            
            ImageView {
                preferredHeight: property_PreferredHeight
                scalingMethod: ScalingMethod.AspectFit
                imageSource: "asset:///Images/Image_Poster_(empty).png"
            }
        }
        
        // Container for "StandardListItem" && "CustomMerged_ImageButtons_01"
        Container {
            verticalAlignment: VerticalAlignment.Center
            leftMargin: property_Margin
            
            layout: StackLayout {
                orientation: LayoutOrientation.TopToBottom
            }
            
            layoutProperties: StackLayoutProperties {
                spaceQuota: 4
            }
            
            // Container for "StandardListItem"
            Container {
                topMargin: property_Margin
                bottomMargin: property_Margin
                
                StandardListItem {
                    title: "Nothing is played"
                    description: "Nothing description"
                    status: "Nothing status"
                }
            }
            
            // Container for "CustomMerged_ImageButtons_01"
            Container {
                topMargin: property_Margin
                bottomMargin: property_Margin
                horizontalAlignment: HorizontalAlignment.Center
                
                CustomMerged_ImageButtons_01 {
                }
            }
        }
    }
    
    // Container for "Divider"
    Container {
        
        Divider {
        }
    }
}
