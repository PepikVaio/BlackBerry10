import bb.cascades 1.4

import "../Custom/Containers"

Custom_Container_01 {
    id: container
    property real property_ButtonMaxSize: ui.sdu(11.5)
    property int property_ButtonSize: layoutUpdateHandler.layoutFrame.width / container.count()
    property string property_DefaultImageSource: "asset:///Images/Image_Button_(up).png"
    property string property_PressedImageSource: "asset:///Images/Image_Button_(down).png"
    
    layout: StackLayout {
        orientation: LayoutOrientation.TopToBottom
    }
    
    Custom_Container_01 {
        
        Label {
            text: "Fce buttons"
        }
    }
    
    Custom_Container_01 {
        
        layout: StackLayout {
            orientation: LayoutOrientation.LeftToRight
        }
        
        Container {
            
            ImageButton {
                preferredHeight: property_ButtonSize
                maxHeight: container.property_ButtonMaxSize
                maxWidth: container.property_ButtonMaxSize
                defaultImageSource: container.property_DefaultImageSource
                pressedImageSource: container.property_PressedImageSource
            }
        }
        
        Container {
            
            ImageButton {
                preferredHeight: property_ButtonSize
                maxHeight: container.property_ButtonMaxSize
                maxWidth: container.property_ButtonMaxSize
                defaultImageSource: container.property_DefaultImageSource
                pressedImageSource: container.property_PressedImageSource
            }
        }
        
        Container {
            
            ImageButton {
                preferredHeight: property_ButtonSize
                maxHeight: container.property_ButtonMaxSize
                maxWidth: container.property_ButtonMaxSize
                defaultImageSource: container.property_DefaultImageSource
                pressedImageSource: container.property_PressedImageSource
            }
        }
        
        Container {
            
            ImageButton {
                preferredHeight: property_ButtonSize
                maxHeight: container.property_ButtonMaxSize
                maxWidth: container.property_ButtonMaxSize
                defaultImageSource: container.property_DefaultImageSource
                pressedImageSource: container.property_PressedImageSource
            }
        }
        
        Container {
            
            ImageButton {
                preferredHeight: property_ButtonSize
                maxHeight: container.property_ButtonMaxSize
                maxWidth: container.property_ButtonMaxSize
                defaultImageSource: container.property_DefaultImageSource
                pressedImageSource: container.property_PressedImageSource
            }
        }
    }
    
    attachedObjects: [
        
        LayoutUpdateHandler {
            id: layoutUpdateHandler
        }
    ]
}
