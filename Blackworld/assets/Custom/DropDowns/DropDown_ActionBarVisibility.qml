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

    // signal from for "../Sheets/Sheet_Settings.qml"
    signal signal_ChangeOptions()
    //***********************************************

    DropDown {
        id: dropDown
        title: "ActionBar Visibility"
        selectedIndex: 0 // (get data "onCreationCompleted")

        Option {
            text: "Visible (default)"
            description: "The actionbar will be visible."
        }
        Option {
            text: "Hidden"
            description: "The actionbar will be hidden."
        }
        Option {
            text: "Overlay"
            description: "The actionbar will be overlay the top of the content and will be partially semi-transparent."
        }

        onSelectedValueChanged: {
            // send a signal to "../Sheets/Sheet_Settings.qml"
            signal_ChangeOptions()
        }
        
        onCreationCompleted: {
            dropDown.selectedIndex = sheet.property_DropDown_ActionBarVisibility_SelectedValue
        }
    }
}
