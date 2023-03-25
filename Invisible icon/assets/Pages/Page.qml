import bb.cascades 1.4

// import folders
import "../Custom/ActionItems"
import "../Custom/Containers"
import "../Custom/Headers"
import "../Custom/HomeScreens"
import "../Custom/Menu"
import "../Custom/Sliders"
import "../Custom/SystemToasts"
//*****************************

Page {
    id: page

    Menu.definition: [
        Custom_Menu {
        }
    ]

    titleBar: TitleBar {
        title: qsTr("Invisible icon") + Retranslate.onLanguageChanged
    }

    Custom_MainContainer {

        Custom_Container_01 {

            Custom_Header_01 {
                id: custom_Header_01
            }
        }

        Custom_Container_01 {

            Custom_Slider_01 {
                id: custom_Slider_01
            }
        }

        Custom_Container_01 {

            ImageView {
                id: imageView_01

            }

            ImageView {
                id: imageView_02

            }
        }
    }

    actions: [

        Custom_ActionItem_01 {
            id: custom_ActionItem_01
        }
    ]

    attachedObjects: [

        Custom_HomeScreen_01 {
            id: custom_HomeScreen_01
        },

        Custom_SystemToast_01 {
            id: custom_SystemToast_01
        }
    ]
}
