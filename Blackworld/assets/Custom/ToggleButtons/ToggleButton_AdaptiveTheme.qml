import bb.cascades 1.4
//********************

// import folder
import "../Containers"
//********************

// ToggleButton for "../Sheets/Sheet_Settings.qml"
Container_for_ToggleButtons {

    // alias for "../Sheets/Sheet_Settings.qml"
    property alias alias_ImageSource: imageView.imageSource
    //*****************************************************

    // property for "../Sheets/Sheet_Settings.qml"
    //property alias alias_Enabled: toggleButton.enabled
    property alias alias_Checked: toggleButton.checked
    //************************************************

    // signal for "../Sheets/Sheet_Settings.qml"
    signal signal_ChangeChecked()
    //******************************************

    Container {

        layout: StackLayout {
            orientation: LayoutOrientation.LeftToRight
        }

        Container_LR_Margin_2 {
            verticalAlignment: VerticalAlignment.Center

            ImageView {
                id: imageView
                horizontalAlignment: HorizontalAlignment.Center
                imageSource: "asset:///Icons/Icon_AdaptiveTheme_(white).png"
            }
        }

        Container_LR_Margin_2 {

            layoutProperties: StackLayoutProperties {
                spaceQuota: 1
            }

            layout: StackLayout {
                orientation: LayoutOrientation.TopToBottom
            }

            Container {

                Label {
                    text: "Adaptive theme"
                    textStyle.fontSize: FontSize.Large
                    textStyle.fontStyle: FontStyle.Italic
                }
            }

            Container {

                Label {
                    text: "Smart adaptive theme. Set the theme automatically depending on the brightness recieving with the light sensor."
                    multiline: true
                    textStyle.color: Color.DarkGray
                    textStyle.fontWeight: FontWeight.W300
                }
            }
        }

        Container_LR_Margin_2 {
            verticalAlignment: VerticalAlignment.Center

            ToggleButton {
                id: toggleButton
                horizontalAlignment: HorizontalAlignment.Center

                // (get data from "onCreationCompleted")
                // (use data "false", "true")
                enabled: false
                checked: false 

                onCheckedChanged: {
                    // send a signal to "../Sheets/Sheet_Settings.qml"
                    signal_ChangeChecked()
                }

                onCreationCompleted: {
                    //toggleButton.enabled = sheet.property_ToggleButton_AdaptiveTheme_Enabled
                    toggleButton.checked = sheet.property_ToggleButton_AdaptiveTheme_Checked
                }
            }
        }
    }
}
