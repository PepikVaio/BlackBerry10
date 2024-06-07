import bb.cascades 1.4

// import folders
import "asset:///Custom/Containers"
//*********************************

Container {
    
    Container {
        
        layout: GridLayout {
            columnCount: 3
        
        }
        
        Container {
            background: Color.Red
            
            ImageView {
                imageSource: "asset:///Images/Image_Volume_(down).png"
            }
        }
        
        Container {
            background: Color.Green
            verticalAlignment: VerticalAlignment.Center
            
            Slider {
            
            }
        }
        
        Container {
            
            ImageView {
                imageSource: "asset:///Images/Image_Volume_(up).png"
            }
        }
    }
}
