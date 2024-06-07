import bb.cascades 1.4

import "../Custom/Containers"
import "../Custom/ImageButtons"

// import JavaScripts
//import "asset:///JavaScripts/JavaScript_Page_Remote.js" as JS
//***********************************************************

// ImageButtons for "asset:///CustomMerged/CustomMerged_NowPlaying"
Container {
    id: container
    topMargin: property_Margin
    bottomMargin: property_Margin
    horizontalAlignment: HorizontalAlignment.Center

    // alias for "LayoutUpdateHandler"
    property alias alias_Container: container
    //***************************************
    
    layout: StackLayout {
        orientation: LayoutOrientation.LeftToRight
    }

    Custom_Container_02 {

        Custom_ImageButton_01 {
        }
    }

    Custom_Container_02 {

        Custom_ImageButton_02 {
        }
    }

    Custom_Container_02 {

        Custom_ImageButton_03 {
        }
    }

    Custom_Container_02 {

        Custom_ImageButton_04 {
        }
    }

    Custom_Container_02 {

        Custom_ImageButton_05 {
        }
    }

    Custom_Container_02 {

        Custom_ImageButton_06 {
        }
    }
}
