import bb.cascades 1.4
//********************

// import folder
import "../Containers"
//********************

// "DropDown" for "../Sheets/Sheet_Settings.qml"
Container_for_DropDowns {

    // alias for "../Sheets/Sheet_Settings.qml"
    property alias alias_SelectedValue: dropDown.selectedIndex
    //********************************************************

    // signal for "../Sheets/Sheet_Settings.qml"
    signal signal_ChangeOptions()
    //******************************************

    DropDown {
        id: dropDown
        title: "FollowKeyboardPolicy"
        selectedIndex: 0 // (get data "onCreationCompleted")

        Option {
            text: "Default (Default)"
            description: "The actionbar's default follow keyboard policy."
        }
        Option {
            text: "Never"
            description: "The actionBar never follows the virtual keyboard."
        }

        onSelectedValueChanged: {
            // send a signal to "../Sheets/Sheet_Settings.qml"
            signal_ChangeOptions()
        }

        onCreationCompleted: {
            dropDown.selectedIndex = sheet.property_DropDown_FollowKeyboardPolicy_SelectedValue
        }
    }
}
