import bb.cascades 1.4
//********************

// import folder
import "../Containers"
//********************

// "DropDown" for "../Sheets/Sheet_Settings.qml"
Container_for_DropDowns {

    // alias for "../Sheets/Sheet_Settings.qml"
    //property alias alias_SelectedValue: dropDown.selectedIndex
    //********************************************************

    // signal for "../Sheets/Sheet_Settings.qml"
    signal signal_ChangeOptions()
    //******************************************

    DropDown {
        id: dropDown
        title: "TitleBar Visibility"
        selectedIndex: 0 // (get data "onCreationCompleted")

        Option {
            text: "Visible (default)"
            description: "The titlebar will be visible."
        }
        Option {
            text: "Hidden"
            description: "The titlebar will be hidden."
        }
        Option {
            text: "Overlay"
            description: "The titlebar will be overlay the top of the content and will be partially semi-transparent."
        }

        onSelectedValueChanged: {
            // send a signal to "../Sheets/Sheet_Settings.qml"
            signal_ChangeOptions()
        }

        onCreationCompleted: {
            dropDown.selectedIndex = sheet.property_DropDown_TitleBarVisibility_SelectedValue
        }
    }
}
