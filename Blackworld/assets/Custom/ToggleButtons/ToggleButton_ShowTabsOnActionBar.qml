import bb.cascades 1.4
//********************

// import folder
import "../Containers"
//********************

// ToggleButton for "../Sheets/Sheet_Settings.qml"
Container_for_ToggleButtons {

    // alias for "../Sheets/Sheet_Settings.qml"
    property alias alias_ImageSource: imageView.imageSource
    property alias alias_Checked: toggleButton.checked
    //*****************************************************

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
                imageSource: "asset:///Icons/Icon_ShowTabsOnActionbar_(white_false).png"
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
                    text: "Show Tabs on ActionBar"
                    textStyle.fontSize: FontSize.Large
                    textStyle.fontStyle: FontStyle.Italic
                }
            }

            Container {

                Label {
                    text: "When you enable this feature, Tabs will be on the Actionbar."
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
                
                // (use data "false", "true")
                checked: false // (get data from "onCreationCompleted")

                onCheckedChanged: {
                    // send a signal to "../Sheets/Sheet_Settings.qml"
                    signal_ChangeChecked()
                }
                
                onCreationCompleted: {
                    toggleButton.checked = sheet.property_ToggleButton_ShowTabsOnActionBar_Checked 
                }
            }
        }
    }
}
