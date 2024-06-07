import bb.cascades 1.4

// import folders
import "asset:///Custom/ListItemComponents"
import "asset:///JavaScripts/JavaScript_Workouts.js" as JS

// ListView for "../Pages/Page_Workouts.qml"
ListView {

    dataModel: XmlDataModel {
        id: datamodel
        source: "asset:///JSON + SQL + XML/Weeks/" + navigationPane.property_SelectedPlanId + "/" + navigationPane.property_SelectedWeekId_01 + ".xml"
    }

    listItemComponents: [

        Custom_ListItemComponent_01 {
        },

        Custom_ListItemComponent_02 {
        }
    ]

    onTriggered: {
        var selectedItem = dataModel.data(indexPath);
        navigationPane.property_SelectedDay = selectedItem["title_" + tabbedPane.property_Language];
        navigationPane.property_SelectedDayId_01 = selectedItem.id;
        navigationPane.property_SelectedDayId_02 = selectedItem.id_02;

        if (selectedItem.title_en == "Monday") {
            navigationPane.property_SelectedDayId_03 = "Day_01"
        } else if (selectedItem.title_en == "Tuesday") {
            navigationPane.property_SelectedDayId_03 = "Day_02"
        } else if (selectedItem.title_en == "Wednsday") {
            navigationPane.property_SelectedDayId_03 = "Day_03"
        } else if (selectedItem.title_en == "Thursday") {
            navigationPane.property_SelectedDayId_03 = "Day_04"
        } else if (selectedItem.title_en == "Friday") {
            navigationPane.property_SelectedDayId_03 = "Day_05"
        } else if (selectedItem.title_en == "Saturday") {
            navigationPane.property_SelectedDayId_03 = "Day_06"
        } else if (selectedItem.title_en == "Sunday") {
            navigationPane.property_SelectedDayId_03 = "Day_07"
        }

        navigationPane.property_SelectedMuscleParts_01 = selectedItem["muscle_part_01_" + tabbedPane.property_Language];
        navigationPane.property_SelectedMuscleParts_02 = selectedItem["muscle_part_02_" + tabbedPane.property_Language];

        JS.function_CreationPage_01()
    }
}
