import bb.cascades 1.4

// import folders
import "../Pages"
//***************

NavigationPane {
    id: navigationPane

    property real property_Max_BarbellBackSquats: _app.getValueFor("property_Max_BarbellBackSquats", 100)
    property real property_Max_BarbellDeadlifts: _app.getValueFor("property_Max_BarbellDeadlifts", 130)
    property real property_Max_FlatBarbellChestPress: _app.getValueFor("property_Max_FlatBarbellChestPress", 60)

    Page_MyRecords {
    }
}