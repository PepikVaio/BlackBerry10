import bb.cascades 1.4

// import folders
import "Pages"
import "NavigationPanels"
//***********************

TabbedPane {
    id: tabbedPane
    activeTab: tab_02

    // property for Max weights (enter the maximum weight)
    property real property_Max_BarbellBackSquats: navigationPane_Movements.property_Max_BarbellBackSquats
    property real property_Max_BarbellDeadlifts: navigationPane_Movements.property_Max_BarbellDeadlifts
    property real property_Max_FlatBarbellChestPress: navigationPane_Movements.property_Max_FlatBarbellChestPress
    //*************************************************************************************************

    // property for settings
    property string property_Language: qsTr("en") + Retranslate.onLanguageChanged // (choose: "cs", "en")
    property string property_MetricUnits: " kg" // (choose: " kg", " lbs")
    //***************************************************************************************************

    // property for device
    property string property_Device // v lisitem nefunguje if na zarizeni :)
    //**********************************************************************

    tabs: [

        Tab {
            id: tab_01
            title: qsTr("Profile") + Retranslate.onLanguageChanged
        },

        Tab {
            id: tab_02
            title: qsTr("Workouts") + Retranslate.onLanguageChanged

            NavigationPane_Workouts {
            }
        },

        Tab {
            id: tab_03
            title: qsTr("My recodrs") + Retranslate.onLanguageChanged

            NavigationPane_MyRecords {
                id: navigationPane_Movements
            }
        },

        Tab {
            id: tab_04
            title: qsTr("Tools") + Retranslate.onLanguageChanged
        }
    ]

    onCreationCompleted: {
        if (_device.isPassport()) {
            property_Device = "Passport"
        }
    }
}
