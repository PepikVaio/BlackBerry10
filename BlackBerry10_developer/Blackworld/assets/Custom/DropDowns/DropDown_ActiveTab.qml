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
        title: "ActiveTab"
        selectedIndex: 0 // (get data "onCreationCompleted")

        // property for "Options"
        property string property_Text_01: 'Set after "onCreationCompleted" "DropDown"'
        //****************************************************************************

        Option {
            id: option_01

            // (get data "onCreationCompleted")
            text: "Tab_01 title"
            description: dropDown.property_Text_01
        }
        Option {
            id: option_02

            // (get data "onCreationCompleted")
            text: "Tab_02 title"
            description: dropDown.property_Text_01
        }
        Option {
            id: option_03

            // (get data "onCreationCompleted")
            text: "Tab_03 title"
            description: dropDown.property_Text_01
        }
        Option {
            id: option_04
            enabled: false

            // (get data "onCreationCompleted")
            text: "Tab_04 title"
            description: dropDown.property_Text_01
        }

        onSelectedValueChanged: {
            // send a signal to "../Sheets/Sheet_Settings.qml"
            signal_ChangeOptions()
        }

        onCreationCompleted: {
            dropDown.selectedIndex = sheet.property_DropDown_ActiveTab_SelectedValue

            // (get data from "../main.qml")
            option_01.text = tab_01.title + " (default)"
            option_02.text = tab_02.title
            option_03.text = tab_03.title
            option_04.text = tab_04.title
            option_01.description = 'Set "' + tab_01.title + '" tab as default tab.'
            option_02.description = 'Set "' + tab_02.title + '" tab as default tab.'
            option_03.description = 'Set "' + tab_03.title + '" tab as default tab.'
            option_04.description = "(next update)"
            //option_04.description = "Set " + tab_04.title + " tab as default tab."
        }
    }
}
