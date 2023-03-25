import bb.cascades 1.4

// import folders
import "../Buttons"
import "../Containers"
import "../TextFields"
//********************

// TitleBar for "asset:///Pages/Page_Remote.qml"
TitleBar {
    kind: TitleBarKind.FreeForm

    property alias alias_TextField: custom_TextField_01.alias_TextField

    kindProperties: FreeFormTitleBarKindProperties {

        Custom_MainContainer {

            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
            }

            Custom_Container_03 {
                verticalAlignment: VerticalAlignment.Center
                
                Custom_TextField_01 {
                    id: custom_TextField_01
                }
            }

            Custom_Container_03 {
                verticalAlignment: VerticalAlignment.Center

                Custom_Button_01 {
                }
            }
        }
    }
}
