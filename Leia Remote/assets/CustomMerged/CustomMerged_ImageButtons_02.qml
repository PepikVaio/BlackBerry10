import bb.cascades 1.4

import "../Custom/Containers"
import "../Custom/ImageButtons"

// import JavaScripts
import "asset:///JavaScripts/JavaScript_Page_Remote.js" as JS
//***********************************************************

// ImageButtons for "asset:///CustomMerged/CustomMerged_FceButtons"
Container {
    id: container

    property string property_DefaultImageSource: "asset:///Images/Image_ImageButton_01.png"
    property string property_PressedImageSource: "asset:///Images/Image_Button_(down).png"

    Container {

        layout: StackLayout {
            orientation: LayoutOrientation.LeftToRight
        }

        Custom_Container_02 {

            Custom_ImageButton_07 {
            }
        }

        Custom_Container_02 {

            Custom_ImageButton_08 {
            }
        }

        Custom_Container_02 {

            Custom_ImageButton_09 {
            }
        }

        Custom_Container_02 {

            Custom_ImageButton_10 {
            }
        }

        Custom_Container_02 {

            Custom_ImageButton_11 {
            }
        }
    }
}
