import bb.cascades 1.4

// import folders
import "Pages"
//***************

TabbedPane {
    id: tabbedPane
    activeTab: tab_01 // udelat tak, aby se pokazde otevrel panel, ktery jsem zavrel!!!

    // property for "tabs"
    property string property_Description: tab_01.description // from main.qml
    //***********************************************************************

    // property for Max weights
    property real property_Max_BarbellBackSquats: 100
    property real property_Max_BarbellDeadlifts: 130
    property real property_Max_FlatBarbellChestPress: 60
    //**************************************************

    // property for settings
    property string property_Language: "cs" // ("cs", "en")
    property string property_MetricUnits: " kg" // (" kg", " lbs")
    //************************************************************

    // property for device
    property string property_Device // v lisitem nefunguje if na zarizeni :)
    //**********************************************************************

    // property for select in "ListView"
    property string property_SelectedDay // get value from "Page_Weeks.qml"
    property string property_SelectedDayId // get value from "Page_Weeks.qml"
    property string property_SelectedExercise // get value from "Page_Exercises.qml"
    property string property_SelectedExerciseId // get value from "Page_Exercises.qml"
    property string property_SelectedMuscleParts_01 // get value from "Page_Weeks.qml"
    property string property_SelectedMuscleParts_02 // get value from "Page_Weeks.qml"
    property string property_SelectedWeek: tab_01.title // get value from (onActiveTabChanged)
    property string property_SelectedWeekObjectName: tab_01.objectName // get value from (onActiveTabChanged)
    //*******************************************************************************************************

    // property for link to "Note" and "Weight"
    property string property_Note: "property_Note_" + property_SelectedExerciseId + "_" + property_SelectedWeekObjectName
    property string property_Weight: "property_Weight_" + property_SelectedExerciseId + "_" + property_SelectedWeekObjectName
    //***********************************************************************************************************************

    // property for "DataSource" on "Sheets_OtherWeeks.qml"
    property variant property_Note_Week_01: "property_Note_" + property_SelectedExerciseId + "_Week_01"
    property variant property_Note_Week_02: "property_Note_" + property_SelectedExerciseId + "_Week_02"
    property variant property_Note_Week_03: "property_Note_" + property_SelectedExerciseId + "_Week_03"
    property variant property_Note_Week_04: "property_Note_" + property_SelectedExerciseId + "_Week_04"
    property variant property_Note_Week_05: "property_Note_" + property_SelectedExerciseId + "_Week_05"
    property variant property_Note_Week_06: "property_Note_" + property_SelectedExerciseId + "_Week_06"
    property variant property_Note_Week_07: "property_Note_" + property_SelectedExerciseId + "_Week_07"
    property variant property_Note_Week_08: "property_Note_" + property_SelectedExerciseId + "_Week_08"
    //*************************************************************************************************

    // property for "DataSource" on "Sheets_OtherWeeks.qml"
    property variant property_Weight_Week_01: "property_Weight_" + property_SelectedExerciseId + "_Week_01"
    property variant property_Weight_Week_02: "property_Weight_" + property_SelectedExerciseId + "_Week_02"
    property variant property_Weight_Week_03: "property_Weight_" + property_SelectedExerciseId + "_Week_03"
    property variant property_Weight_Week_04: "property_Weight_" + property_SelectedExerciseId + "_Week_04"
    property variant property_Weight_Week_05: "property_Weight_" + property_SelectedExerciseId + "_Week_05"
    property variant property_Weight_Week_06: "property_Weight_" + property_SelectedExerciseId + "_Week_06"
    property variant property_Weight_Week_07: "property_Weight_" + property_SelectedExerciseId + "_Week_07"
    property variant property_Weight_Week_08: "property_Weight_" + property_SelectedExerciseId + "_Week_08"
    //*****************************************************************************************************

    // property for note exercises
    property string property_Note_AbWheelRollOuts_Week_01: _app.getValueFor("property_Note_AbWheelRollOuts_Week_01", "")
    property string property_Note_AbWheelRollOuts_Week_02: _app.getValueFor("property_Note_AbWheelRollOuts_Week_02", "")
    property string property_Note_AbWheelRollOuts_Week_03: _app.getValueFor("property_Note_AbWheelRollOuts_Week_03", "")
    property string property_Note_AbWheelRollOuts_Week_04: _app.getValueFor("property_Note_AbWheelRollOuts_Week_04", "")
    property string property_Note_AbWheelRollOuts_Week_05: _app.getValueFor("property_Note_AbWheelRollOuts_Week_05", "")
    property string property_Note_AbWheelRollOuts_Week_06: _app.getValueFor("property_Note_AbWheelRollOuts_Week_06", "")
    property string property_Note_AbWheelRollOuts_Week_07: _app.getValueFor("property_Note_AbWheelRollOuts_Week_07", "")
    property string property_Note_AbWheelRollOuts_Week_08: _app.getValueFor("property_Note_AbWheelRollOuts_Week_08", "")

    property string property_Note_BarbellBackSquats_Week_01: _app.getValueFor("property_Note_BarbellBackSquats_Week_01", "")
    property string property_Note_BarbellBackSquats_Week_02: _app.getValueFor("property_Note_BarbellBackSquats_Week_02", "")
    property string property_Note_BarbellBackSquats_Week_03: _app.getValueFor("property_Note_BarbellBackSquats_Week_03", "")
    property string property_Note_BarbellBackSquats_Week_04: _app.getValueFor("property_Note_BarbellBackSquats_Week_04", "")
    property string property_Note_BarbellBackSquats_Week_05: _app.getValueFor("property_Note_BarbellBackSquats_Week_05", "")
    property string property_Note_BarbellBackSquats_Week_06: _app.getValueFor("property_Note_BarbellBackSquats_Week_06", "")
    property string property_Note_BarbellBackSquats_Week_07: _app.getValueFor("property_Note_BarbellBackSquats_Week_07", "")
    property string property_Note_BarbellBackSquats_Week_08: _app.getValueFor("property_Note_BarbellBackSquats_Week_08", "")

    property string property_Note_BarbellBenchFrontSquats_Week_01: _app.getValueFor("property_Note_BarbellBenchFrontSquats_Week_01", "")
    property string property_Note_BarbellBenchFrontSquats_Week_02: _app.getValueFor("property_Note_BarbellBenchFrontSquats_Week_02", "")
    property string property_Note_BarbellBenchFrontSquats_Week_03: _app.getValueFor("property_Note_BarbellBenchFrontSquats_Week_03", "")
    property string property_Note_BarbellBenchFrontSquats_Week_04: _app.getValueFor("property_Note_BarbellBenchFrontSquats_Week_04", "")
    property string property_Note_BarbellBenchFrontSquats_Week_05: _app.getValueFor("property_Note_BarbellBenchFrontSquats_Week_05", "")
    property string property_Note_BarbellBenchFrontSquats_Week_06: _app.getValueFor("property_Note_BarbellBenchFrontSquats_Week_06", "")
    property string property_Note_BarbellBenchFrontSquats_Week_07: _app.getValueFor("property_Note_BarbellBenchFrontSquats_Week_07", "")
    property string property_Note_BarbellBenchFrontSquats_Week_08: _app.getValueFor("property_Note_BarbellBenchFrontSquats_Week_08", "")

    property string property_Note_BarbellDeadlifts_Week_01: _app.getValueFor("property_Note_BarbellDeadlifts_Week_01", "")
    property string property_Note_BarbellDeadlifts_Week_02: _app.getValueFor("property_Note_BarbellDeadlifts_Week_02", "")
    property string property_Note_BarbellDeadlifts_Week_03: _app.getValueFor("property_Note_BarbellDeadlifts_Week_03", "")
    property string property_Note_BarbellDeadlifts_Week_04: _app.getValueFor("property_Note_BarbellDeadlifts_Week_04", "")
    property string property_Note_BarbellDeadlifts_Week_05: _app.getValueFor("property_Note_BarbellDeadlifts_Week_05", "")
    property string property_Note_BarbellDeadlifts_Week_07: _app.getValueFor("property_Note_BarbellDeadlifts_Week_07", "")
    property string property_Note_BarbellDeadlifts_Week_08: _app.getValueFor("property_Note_BarbellDeadlifts_Week_08", "")

    property string property_Note_BarbellFrontSquats_Week_01: _app.getValueFor("property_Note_BarbellFrontSquats_Week_01", "")
    property string property_Note_BarbellFrontSquats_Week_02: _app.getValueFor("property_Note_BarbellFrontSquats_Week_02", "")
    property string property_Note_BarbellFrontSquats_Week_03: _app.getValueFor("property_Note_BarbellFrontSquats_Week_03", "")
    property string property_Note_BarbellFrontSquats_Week_04: _app.getValueFor("property_Note_BarbellFrontSquats_Week_04", "")
    property string property_Note_BarbellFrontSquats_Week_05: _app.getValueFor("property_Note_BarbellFrontSquats_Week_05", "")
    property string property_Note_BarbellFrontSquats_Week_06: _app.getValueFor("property_Note_BarbellFrontSquats_Week_06", "")
    property string property_Note_BarbellFrontSquats_Week_07: _app.getValueFor("property_Note_BarbellFrontSquats_Week_07", "")
    property string property_Note_BarbellFrontSquats_Week_08: _app.getValueFor("property_Note_BarbellFrontSquats_Week_08", "")

    property string property_Note_BarbellGoodMornings_Week_01: _app.getValueFor("property_Note_BarbellGoodMornings_Week_01", "")
    property string property_Note_BarbellGoodMornings_Week_02: _app.getValueFor("property_Note_BarbellGoodMornings_Week_02", "")
    property string property_Note_BarbellGoodMornings_Week_03: _app.getValueFor("property_Note_BarbellGoodMornings_Week_03", "")
    property string property_Note_BarbellGoodMornings_Week_04: _app.getValueFor("property_Note_BarbellGoodMornings_Week_04", "")
    property string property_Note_BarbellGoodMornings_Week_05: _app.getValueFor("property_Note_BarbellGoodMornings_Week_05", "")
    property string property_Note_BarbellGoodMornings_Week_06: _app.getValueFor("property_Note_BarbellGoodMornings_Week_06", "")
    property string property_Note_BarbellGoodMornings_Week_07: _app.getValueFor("property_Note_BarbellGoodMornings_Week_07", "")
    property string property_Note_BarbellGoodMornings_Week_08: _app.getValueFor("property_Note_BarbellGoodMornings_Week_08", "")

    property string property_Note_BarbellHipThrust_Week_01: _app.getValueFor("property_Note_BarbellHipThrust_Week_01", "")
    property string property_Note_BarbellHipThrust_Week_02: _app.getValueFor("property_Note_BarbellHipThrust_Week_02", "")
    property string property_Note_BarbellHipThrust_Week_03: _app.getValueFor("property_Note_BarbellHipThrust_Week_03", "")
    property string property_Note_BarbellHipThrust_Week_04: _app.getValueFor("property_Note_BarbellHipThrust_Week_04", "")
    property string property_Note_BarbellHipThrust_Week_05: _app.getValueFor("property_Note_BarbellHipThrust_Week_05", "")
    property string property_Note_BarbellHipThrust_Week_06: _app.getValueFor("property_Note_BarbellHipThrust_Week_06", "")
    property string property_Note_BarbellHipThrust_Week_07: _app.getValueFor("property_Note_BarbellHipThrust_Week_07", "")
    property string property_Note_BarbellHipThrust_Week_08: _app.getValueFor("property_Note_BarbellHipThrust_Week_08", "")

    property string property_Note_BarbellRackPulls_Week_01: _app.getValueFor("property_Note_BarbellRackPulls_Week_01", "")
    property string property_Note_BarbellRackPulls_Week_02: _app.getValueFor("property_Note_BarbellRackPulls_Week_02", "")
    property string property_Note_BarbellRackPulls_Week_03: _app.getValueFor("property_Note_BarbellRackPulls_Week_03", "")
    property string property_Note_BarbellRackPulls_Week_04: _app.getValueFor("property_Note_BarbellRackPulls_Week_04", "")
    property string property_Note_BarbellRackPulls_Week_05: _app.getValueFor("property_Note_BarbellRackPulls_Week_05", "")
    property string property_Note_BarbellRackPulls_Week_06: _app.getValueFor("property_Note_BarbellRackPulls_Week_06", "")
    property string property_Note_BarbellRackPulls_Week_07: _app.getValueFor("property_Note_BarbellRackPulls_Week_07", "")
    property string property_Note_BarbellRackPulls_Week_08: _app.getValueFor("property_Note_BarbellRackPulls_Week_08", "")

    property string property_Note_BarbellStiffLegDeadlifts_Week_01: _app.getValueFor("property_Note_BarbellStiffLegDeadlifts_Week_01", "")
    property string property_Note_BarbellStiffLegDeadlifts_Week_02: _app.getValueFor("property_Note_BarbellStiffLegDeadlifts_Week_02", "")
    property string property_Note_BarbellStiffLegDeadlifts_Week_03: _app.getValueFor("property_Note_BarbellStiffLegDeadlifts_Week_03", "")
    property string property_Note_BarbellStiffLegDeadlifts_Week_04: _app.getValueFor("property_Note_BarbellStiffLegDeadlifts_Week_04", "")
    property string property_Note_BarbellStiffLegDeadlifts_Week_05: _app.getValueFor("property_Note_BarbellStiffLegDeadlifts_Week_05", "")
    property string property_Note_BarbellStiffLegDeadlifts_Week_06: _app.getValueFor("property_Note_BarbellStiffLegDeadlifts_Week_06", "")
    property string property_Note_BarbellStiffLegDeadlifts_Week_07: _app.getValueFor("property_Note_BarbellStiffLegDeadlifts_Week_07", "")
    property string property_Note_BarbellStiffLegDeadlifts_Week_08: _app.getValueFor("property_Note_BarbellStiffLegDeadlifts_Week_08", "")

    property string property_Note_BicepsCurlEZBar_Week_01: _app.getValueFor("property_Note_BicepsCurlEZBar_Week_01", "")
    property string property_Note_BicepsCurlEZBar_Week_02: _app.getValueFor("property_Note_BicepsCurlEZBar_Week_02", "")
    property string property_Note_BicepsCurlEZBar_Week_03: _app.getValueFor("property_Note_BicepsCurlEZBar_Week_03", "")
    property string property_Note_BicepsCurlEZBar_Week_04: _app.getValueFor("property_Note_BicepsCurlEZBar_Week_04", "")
    property string property_Note_BicepsCurlEZBar_Week_05: _app.getValueFor("property_Note_BicepsCurlEZBar_Week_05", "")
    property string property_Note_BicepsCurlEZBar_Week_06: _app.getValueFor("property_Note_BicepsCurlEZBar_Week_06", "")
    property string property_Note_BicepsCurlEZBar_Week_07: _app.getValueFor("property_Note_BicepsCurlEZBar_Week_07", "")
    property string property_Note_BicepsCurlEZBar_Week_08: _app.getValueFor("property_Note_BicepsCurlEZBar_Week_08", "")

    property string property_Note_BicepsCurlMachine_Week_01: _app.getValueFor("property_Note_BicepsCurlMachine_Week_01", "")
    property string property_Note_BicepsCurlMachine_Week_02: _app.getValueFor("property_Note_BicepsCurlMachine_Week_02", "")
    property string property_Note_BicepsCurlMachine_Week_03: _app.getValueFor("property_Note_BicepsCurlMachine_Week_03", "")
    property string property_Note_BicepsCurlMachine_Week_04: _app.getValueFor("property_Note_BicepsCurlMachine_Week_04", "")
    property string property_Note_BicepsCurlMachine_Week_05: _app.getValueFor("property_Note_BicepsCurlMachine_Week_05", "")
    property string property_Note_BicepsCurlMachine_Week_06: _app.getValueFor("property_Note_BicepsCurlMachine_Week_06", "")
    property string property_Note_BicepsCurlMachine_Week_07: _app.getValueFor("property_Note_BicepsCurlMachine_Week_07", "")
    property string property_Note_BicepsCurlMachine_Week_08: _app.getValueFor("property_Note_BicepsCurlMachine_Week_08", "")

    property string property_Note_CableBarTricepsPushdown_Week_01: _app.getValueFor("property_Note_CableBarTricepsPushdown_Week_01", "")
    property string property_Note_CableBarTricepsPushdown_Week_02: _app.getValueFor("property_Note_CableBarTricepsPushdown_Week_02", "")
    property string property_Note_CableBarTricepsPushdown_Week_03: _app.getValueFor("property_Note_CableBarTricepsPushdown_Week_03", "")
    property string property_Note_CableBarTricepsPushdown_Week_04: _app.getValueFor("property_Note_CableBarTricepsPushdown_Week_04", "")
    property string property_Note_CableBarTricepsPushdown_Week_05: _app.getValueFor("property_Note_CableBarTricepsPushdown_Week_05", "")
    property string property_Note_CableBarTricepsPushdown_Week_06: _app.getValueFor("property_Note_CableBarTricepsPushdown_Week_06", "")
    property string property_Note_CableBarTricepsPushdown_Week_07: _app.getValueFor("property_Note_CableBarTricepsPushdown_Week_07", "")
    property string property_Note_CableBarTricepsPushdown_Week_08: _app.getValueFor("property_Note_CableBarTricepsPushdown_Week_08", "")

    property string property_Note_CableTricepsRopePushdowns_Week_01: _app.getValueFor("property_Note_CableTricepsRopePushdowns_Week_01", "")
    property string property_Note_CableTricepsRopePushdowns_Week_02: _app.getValueFor("property_Note_CableTricepsRopePushdowns_Week_02", "")
    property string property_Note_CableTricepsRopePushdowns_Week_03: _app.getValueFor("property_Note_CableTricepsRopePushdowns_Week_03", "")
    property string property_Note_CableTricepsRopePushdowns_Week_04: _app.getValueFor("property_Note_CableTricepsRopePushdowns_Week_04", "")
    property string property_Note_CableTricepsRopePushdowns_Week_05: _app.getValueFor("property_Note_CableTricepsRopePushdowns_Week_05", "")
    property string property_Note_CableTricepsRopePushdowns_Week_06: _app.getValueFor("property_Note_CableTricepsRopePushdowns_Week_06", "")
    property string property_Note_CableTricepsRopePushdowns_Week_07: _app.getValueFor("property_Note_CableTricepsRopePushdowns_Week_07", "")
    property string property_Note_CableTricepsRopePushdowns_Week_08: _app.getValueFor("property_Note_CableTricepsRopePushdowns_Week_08", "")

    property string property_Note_ClockPushUps_Week_01: _app.getValueFor("property_Note_ClockPushUps_Week_01", "")
    property string property_Note_ClockPushUps_Week_02: _app.getValueFor("property_Note_ClockPushUps_Week_02", "")
    property string property_Note_ClockPushUps_Week_03: _app.getValueFor("property_Note_ClockPushUps_Week_03", "")
    property string property_Note_ClockPushUps_Week_04: _app.getValueFor("property_Note_ClockPushUps_Week_04", "")
    property string property_Note_ClockPushUps_Week_05: _app.getValueFor("property_Note_ClockPushUps_Week_05", "")
    property string property_Note_ClockPushUps_Week_06: _app.getValueFor("property_Note_ClockPushUps_Week_06", "")
    property string property_Note_ClockPushUps_Week_07: _app.getValueFor("property_Note_ClockPushUps_Week_07", "")
    property string property_Note_ClockPushUps_Week_08: _app.getValueFor("property_Note_ClockPushUps_Week_08", "")

    property string property_Note_DeficitDeadlifts_Week_01: _app.getValueFor("property_Note_DeficitDeadlifts_Week_01", "")
    property string property_Note_DeficitDeadlifts_Week_02: _app.getValueFor("property_Note_DeficitDeadlifts_Week_02", "")
    property string property_Note_DeficitDeadlifts_Week_03: _app.getValueFor("property_Note_DeficitDeadlifts_Week_03", "")
    property string property_Note_DeficitDeadlifts_Week_04: _app.getValueFor("property_Note_DeficitDeadlifts_Week_04", "")
    property string property_Note_DeficitDeadlifts_Week_05: _app.getValueFor("property_Note_DeficitDeadlifts_Week_05", "")
    property string property_Note_DeficitDeadlifts_Week_06: _app.getValueFor("property_Note_DeficitDeadlifts_Week_06", "")
    property string property_Note_DeficitDeadlifts_Week_07: _app.getValueFor("property_Note_DeficitDeadlifts_Week_07", "")
    property string property_Note_DeficitDeadlifts_Week_08: _app.getValueFor("property_Note_DeficitDeadlifts_Week_08", "")

    property string property_Note_DumbbellLungess_Week_01: _app.getValueFor("property_Note_DumbbellLungess_Week_01", "")
    property string property_Note_DumbbellLungess_Week_02: _app.getValueFor("property_Note_DumbbellLungess_Week_02", "")
    property string property_Note_DumbbellLungess_Week_03: _app.getValueFor("property_Note_DumbbellLungess_Week_03", "")
    property string property_Note_DumbbellLungess_Week_04: _app.getValueFor("property_Note_DumbbellLungess_Week_04", "")
    property string property_Note_DumbbellLungess_Week_05: _app.getValueFor("property_Note_DumbbellLungess_Week_05", "")
    property string property_Note_DumbbellLungess_Week_06: _app.getValueFor("property_Note_DumbbellLungess_Week_06", "")
    property string property_Note_DumbbellLungess_Week_07: _app.getValueFor("property_Note_DumbbellLungess_Week_07", "")
    property string property_Note_DumbbellLungess_Week_08: _app.getValueFor("property_Note_DumbbellLungess_Week_08", "")

    property string property_Note_FlatBarbellChestPress_Week_01: _app.getValueFor("property_Note_FlatBarbellChestPress_Week_01", "")
    property string property_Note_FlatBarbellChestPress_Week_02: _app.getValueFor("property_Note_FlatBarbellChestPress_Week_02", "")
    property string property_Note_FlatBarbellChestPress_Week_03: _app.getValueFor("property_Note_FlatBarbellChestPress_Week_03", "")
    property string property_Note_FlatBarbellChestPress_Week_04: _app.getValueFor("property_Note_FlatBarbellChestPress_Week_04", "")
    property string property_Note_FlatBarbellChestPress_Week_05: _app.getValueFor("property_Note_FlatBarbellChestPress_Week_05", "")
    property string property_Note_FlatBarbellChestPress_Week_06: _app.getValueFor("property_Note_FlatBarbellChestPress_Week_06", "")
    property string property_Note_FlatBarbellChestPress_Week_07: _app.getValueFor("property_Note_FlatBarbellChestPress_Week_07", "")
    property string property_Note_FlatBarbellChestPress_Week_08: _app.getValueFor("property_Note_FlatBarbellChestPress_Week_08", "")

    property string property_Note_FlatCableFly_Week_01: _app.getValueFor("property_Note_FlatCableFly_Week_01", "")
    property string property_Note_FlatCableFly_Week_02: _app.getValueFor("property_Note_FlatCableFly_Week_02", "")
    property string property_Note_FlatCableFly_Week_03: _app.getValueFor("property_Note_FlatCableFly_Week_03", "")
    property string property_Note_FlatCableFly_Week_04: _app.getValueFor("property_Note_FlatCableFly_Week_04", "")
    property string property_Note_FlatCableFly_Week_05: _app.getValueFor("property_Note_FlatCableFly_Week_05", "")
    property string property_Note_FlatCableFly_Week_06: _app.getValueFor("property_Note_FlatCableFly_Week_06", "")
    property string property_Note_FlatCableFly_Week_07: _app.getValueFor("property_Note_FlatCableFly_Week_07", "")
    property string property_Note_FlatCableFly_Week_08: _app.getValueFor("property_Note_FlatCableFly_Week_08", "")

    property string property_Note_FlatDumbbellFly_Week_01: _app.getValueFor("property_Note_FlatDumbbellFly_Week_01", "")
    property string property_Note_FlatDumbbellFly_Week_02: _app.getValueFor("property_Note_FlatDumbbellFly_Week_02", "")
    property string property_Note_FlatDumbbellFly_Week_03: _app.getValueFor("property_Note_FlatDumbbellFly_Week_03", "")
    property string property_Note_FlatDumbbellFly_Week_04: _app.getValueFor("property_Note_FlatDumbbellFly_Week_04", "")
    property string property_Note_FlatDumbbellFly_Week_05: _app.getValueFor("property_Note_FlatDumbbellFly_Week_05", "")
    property string property_Note_FlatDumbbellFly_Week_06: _app.getValueFor("property_Note_FlatDumbbellFly_Week_06", "")
    property string property_Note_FlatDumbbellFly_Week_07: _app.getValueFor("property_Note_FlatDumbbellFly_Week_07", "")
    property string property_Note_FlatDumbbellFly_Week_08: _app.getValueFor("property_Note_FlatDumbbellFly_Week_08", "")

    property string property_Note_FlatDumbbellChestPress_Week_01: _app.getValueFor("property_Note_FlatDumbbellChestPress_Week_01", "")
    property string property_Note_FlatDumbbellChestPress_Week_02: _app.getValueFor("property_Note_FlatDumbbellChestPress_Week_02", "")
    property string property_Note_FlatDumbbellChestPress_Week_03: _app.getValueFor("property_Note_FlatDumbbellChestPress_Week_03", "")
    property string property_Note_FlatDumbbellChestPress_Week_04: _app.getValueFor("property_Note_FlatDumbbellChestPress_Week_04", "")
    property string property_Note_FlatDumbbellChestPress_Week_05: _app.getValueFor("property_Note_FlatDumbbellChestPress_Week_05", "")
    property string property_Note_FlatDumbbellChestPress_Week_06: _app.getValueFor("property_Note_FlatDumbbellChestPress_Week_06", "")
    property string property_Note_FlatDumbbellChestPress_Week_07: _app.getValueFor("property_Note_FlatDumbbellChestPress_Week_07", "")
    property string property_Note_FlatDumbbellChestPress_Week_08: _app.getValueFor("property_Note_FlatDumbbellChestPress_Week_08", "")

    property string property_Note_GluteHamRaise_Week_01: _app.getValueFor("property_Note_GluteHamRaise_Week_01", "")
    property string property_Note_GluteHamRaise_Week_02: _app.getValueFor("property_Note_GluteHamRaise_Week_02", "")
    property string property_Note_GluteHamRaise_Week_03: _app.getValueFor("property_Note_GluteHamRaise_Week_03", "")
    property string property_Note_GluteHamRaise_Week_04: _app.getValueFor("property_Note_GluteHamRaise_Week_04", "")
    property string property_Note_GluteHamRaise_Week_05: _app.getValueFor("property_Note_GluteHamRaise_Week_05", "")
    property string property_Note_GluteHamRaise_Week_06: _app.getValueFor("property_Note_GluteHamRaise_Week_06", "")
    property string property_Note_GluteHamRaise_Week_07: _app.getValueFor("property_Note_GluteHamRaise_Week_07", "")
    property string property_Note_GluteHamRaise_Week_08: _app.getValueFor("property_Note_GluteHamRaise_Week_08", "")

    property string property_Note_GobletSquats_Week_01: _app.getValueFor("property_Note_GobletSquats_Week_01", "")
    property string property_Note_GobletSquats_Week_02: _app.getValueFor("property_Note_GobletSquats_Week_02", "")
    property string property_Note_GobletSquats_Week_03: _app.getValueFor("property_Note_GobletSquats_Week_03", "")
    property string property_Note_GobletSquats_Week_04: _app.getValueFor("property_Note_GobletSquats_Week_04", "")
    property string property_Note_GobletSquats_Week_05: _app.getValueFor("property_Note_GobletSquats_Week_05", "")
    property string property_Note_GobletSquats_Week_06: _app.getValueFor("property_Note_GobletSquats_Week_06", "")
    property string property_Note_GobletSquats_Week_07: _app.getValueFor("property_Note_GobletSquats_Week_07", "")
    property string property_Note_GobletSquats_Week_08: _app.getValueFor("property_Note_GobletSquats_Week_08", "")

    property string property_Note_ChestDips_Week_01: _app.getValueFor("property_Note_ChestDips_Week_01", "")
    property string property_Note_ChestDips_Week_02: _app.getValueFor("property_Note_ChestDips_Week_02", "")
    property string property_Note_ChestDips_Week_03: _app.getValueFor("property_Note_ChestDips_Week_03", "")
    property string property_Note_ChestDips_Week_04: _app.getValueFor("property_Note_ChestDips_Week_04", "")
    property string property_Note_ChestDips_Week_05: _app.getValueFor("property_Note_ChestDips_Week_05", "")
    property string property_Note_ChestDips_Week_06: _app.getValueFor("property_Note_ChestDips_Week_06", "")
    property string property_Note_ChestDips_Week_07: _app.getValueFor("property_Note_ChestDips_Week_07", "")
    property string property_Note_ChestDips_Week_08: _app.getValueFor("property_Note_ChestDips_Week_08", "")

    property string property_Note_InclineBarbellChestPress_Week_01: _app.getValueFor("property_Note_InclineBarbellChestPress_Week_01", "")
    property string property_Note_InclineBarbellChestPress_Week_02: _app.getValueFor("property_Note_InclineBarbellChestPress_Week_02", "")
    property string property_Note_InclineBarbellChestPress_Week_03: _app.getValueFor("property_Note_InclineBarbellChestPress_Week_03", "")
    property string property_Note_InclineBarbellChestPress_Week_04: _app.getValueFor("property_Note_InclineBarbellChestPress_Week_04", "")
    property string property_Note_InclineBarbellChestPress_Week_05: _app.getValueFor("property_Note_InclineBarbellChestPress_Week_05", "")
    property string property_Note_InclineBarbellChestPress_Week_06: _app.getValueFor("property_Note_InclineBarbellChestPress_Week_06", "")
    property string property_Note_InclineBarbellChestPress_Week_07: _app.getValueFor("property_Note_InclineBarbellChestPress_Week_07", "")
    property string property_Note_InclineBarbellChestPress_Week_08: _app.getValueFor("property_Note_InclineBarbellChestPress_Week_08", "")

    property string property_Note_InclineBenchDumbbellRows_Week_01: _app.getValueFor("property_Note_InclineBenchDumbbellRows_Week_01", "")
    property string property_Note_InclineBenchDumbbellRows_Week_02: _app.getValueFor("property_Note_InclineBenchDumbbellRows_Week_02", "")
    property string property_Note_InclineBenchDumbbellRows_Week_03: _app.getValueFor("property_Note_InclineBenchDumbbellRows_Week_03", "")
    property string property_Note_InclineBenchDumbbellRows_Week_04: _app.getValueFor("property_Note_InclineBenchDumbbellRows_Week_04", "")
    property string property_Note_InclineBenchDumbbellRows_Week_05: _app.getValueFor("property_Note_InclineBenchDumbbellRows_Week_05", "")
    property string property_Note_InclineBenchDumbbellRows_Week_06: _app.getValueFor("property_Note_InclineBenchDumbbellRows_Week_06", "")
    property string property_Note_InclineBenchDumbbellRows_Week_07: _app.getValueFor("property_Note_InclineBenchDumbbellRows_Week_07", "")
    property string property_Note_InclineBenchDumbbellRows_Week_08: _app.getValueFor("property_Note_InclineBenchDumbbellRows_Week_08", "")

    property string property_Note_InclineDumbbellFly_Week_01: _app.getValueFor("property_Note_InclineDumbbellFly_Week_01", "")
    property string property_Note_InclineDumbbellFly_Week_02: _app.getValueFor("property_Note_InclineDumbbellFly_Week_02", "")
    property string property_Note_InclineDumbbellFly_Week_03: _app.getValueFor("property_Note_InclineDumbbellFly_Week_03", "")
    property string property_Note_InclineDumbbellFly_Week_04: _app.getValueFor("property_Note_InclineDumbbellFly_Week_04", "")
    property string property_Note_InclineDumbbellFly_Week_05: _app.getValueFor("property_Note_InclineDumbbellFly_Week_05", "")
    property string property_Note_InclineDumbbellFly_Week_06: _app.getValueFor("property_Note_InclineDumbbellFly_Week_06", "")
    property string property_Note_InclineDumbbellFly_Week_07: _app.getValueFor("property_Note_InclineDumbbellFly_Week_07", "")
    property string property_Note_InclineDumbbellFly_Week_08: _app.getValueFor("property_Note_InclineDumbbellFly_Week_08", "")

    property string property_Note_InclineDumbbellChestPress_Week_01: _app.getValueFor("property_Note_InclineDumbbellChestPress_Week_01", "")
    property string property_Note_InclineDumbbellChestPress_Week_02: _app.getValueFor("property_Note_InclineDumbbellChestPress_Week_02", "")
    property string property_Note_InclineDumbbellChestPress_Week_03: _app.getValueFor("property_Note_InclineDumbbellChestPress_Week_03", "")
    property string property_Note_InclineDumbbellChestPress_Week_04: _app.getValueFor("property_Note_InclineDumbbellChestPress_Week_04", "")
    property string property_Note_InclineDumbbellChestPress_Week_05: _app.getValueFor("property_Note_InclineDumbbellChestPress_Week_05", "")
    property string property_Note_InclineDumbbellChestPress_Week_06: _app.getValueFor("property_Note_InclineDumbbellChestPress_Week_06", "")
    property string property_Note_InclineDumbbellChestPress_Week_07: _app.getValueFor("property_Note_InclineDumbbellChestPress_Week_07", "")
    property string property_Note_InclineDumbbellChestPress_Week_08: _app.getValueFor("property_Note_InclineDumbbellChestPress_Week_08", "")

    property string property_Note_LegExtensions_Week_01: _app.getValueFor("property_Note_LegExtensions_Week_01", "")
    property string property_Note_LegExtensions_Week_02: _app.getValueFor("property_Note_LegExtensions_Week_02", "")
    property string property_Note_LegExtensions_Week_03: _app.getValueFor("property_Note_LegExtensions_Week_03", "")
    property string property_Note_LegExtensions_Week_04: _app.getValueFor("property_Note_LegExtensions_Week_04", "")
    property string property_Note_LegExtensions_Week_05: _app.getValueFor("property_Note_LegExtensions_Week_05", "")
    property string property_Note_LegExtensions_Week_06: _app.getValueFor("property_Note_LegExtensions_Week_06", "")
    property string property_Note_LegExtensions_Week_07: _app.getValueFor("property_Note_LegExtensions_Week_07", "")
    property string property_Note_LegExtensions_Week_08: _app.getValueFor("property_Note_LegExtensions_Week_08", "")

    property string property_Note_LegPressMachine_Week_01: _app.getValueFor("property_Note_LegPressMachine_Week_01", "")
    property string property_Note_LegPressMachine_Week_02: _app.getValueFor("property_Note_LegPressMachine_Week_02", "")
    property string property_Note_LegPressMachine_Week_03: _app.getValueFor("property_Note_LegPressMachine_Week_03", "")
    property string property_Note_LegPressMachine_Week_04: _app.getValueFor("property_Note_LegPressMachine_Week_04", "")
    property string property_Note_LegPressMachine_Week_05: _app.getValueFor("property_Note_LegPressMachine_Week_05", "")
    property string property_Note_LegPressMachine_Week_06: _app.getValueFor("property_Note_LegPressMachine_Week_06", "")
    property string property_Note_LegPressMachine_Week_07: _app.getValueFor("property_Note_LegPressMachine_Week_07", "")
    property string property_Note_LegPressMachine_Week_08: _app.getValueFor("property_Note_LegPressMachine_Week_08", "")

    property string property_Note_LyingBarbellTricepsExtensions_Week_01: _app.getValueFor("property_Note_LyingBarbellTricepsExtensions_Week_01", "")
    property string property_Note_LyingBarbellTricepsExtensions_Week_02: _app.getValueFor("property_Note_LyingBarbellTricepsExtensions_Week_02", "")
    property string property_Note_LyingBarbellTricepsExtensions_Week_03: _app.getValueFor("property_Note_LyingBarbellTricepsExtensions_Week_03", "")
    property string property_Note_LyingBarbellTricepsExtensions_Week_04: _app.getValueFor("property_Note_LyingBarbellTricepsExtensions_Week_04", "")
    property string property_Note_LyingBarbellTricepsExtensions_Week_05: _app.getValueFor("property_Note_LyingBarbellTricepsExtensions_Week_05", "")
    property string property_Note_LyingBarbellTricepsExtensions_Week_06: _app.getValueFor("property_Note_LyingBarbellTricepsExtensions_Week_06", "")
    property string property_Note_LyingBarbellTricepsExtensions_Week_07: _app.getValueFor("property_Note_LyingBarbellTricepsExtensions_Week_07", "")
    property string property_Note_LyingBarbellTricepsExtensions_Week_08: _app.getValueFor("property_Note_LyingBarbellTricepsExtensions_Week_08", "")

    property string property_Note_LyingDumbbellTricepsExtensions_Week_01: _app.getValueFor("property_Note_LyingDumbbellTricepsExtensions_Week_01", "")
    property string property_Note_LyingDumbbellTricepsExtensions_Week_02: _app.getValueFor("property_Note_LyingDumbbellTricepsExtensions_Week_02", "")
    property string property_Note_LyingDumbbellTricepsExtensions_Week_03: _app.getValueFor("property_Note_LyingDumbbellTricepsExtensions_Week_03", "")
    property string property_Note_LyingDumbbellTricepsExtensions_Week_04: _app.getValueFor("property_Note_LyingDumbbellTricepsExtensions_Week_04", "")
    property string property_Note_LyingDumbbellTricepsExtensions_Week_05: _app.getValueFor("property_Note_LyingDumbbellTricepsExtensions_Week_05", "")
    property string property_Note_LyingDumbbellTricepsExtensions_Week_06: _app.getValueFor("property_Note_LyingDumbbellTricepsExtensions_Week_06", "")
    property string property_Note_LyingDumbbellTricepsExtensions_Week_07: _app.getValueFor("property_Note_LyingDumbbellTricepsExtensions_Week_07", "")
    property string property_Note_LyingDumbbellTricepsExtensions_Week_08: _app.getValueFor("property_Note_LyingDumbbellTricepsExtensions_Week_08", "")

    property string property_Note_LyingHamstringCurls_Week_01: _app.getValueFor("property_Note_LyingHamstringCurls_Week_01", "")
    property string property_Note_LyingHamstringCurls_Week_02: _app.getValueFor("property_Note_LyingHamstringCurls_Week_02", "")
    property string property_Note_LyingHamstringCurls_Week_03: _app.getValueFor("property_Note_LyingHamstringCurls_Week_03", "")
    property string property_Note_LyingHamstringCurls_Week_04: _app.getValueFor("property_Note_LyingHamstringCurls_Week_04", "")
    property string property_Note_LyingHamstringCurls_Week_05: _app.getValueFor("property_Note_LyingHamstringCurls_Week_05", "")
    property string property_Note_LyingHamstringCurls_Week_06: _app.getValueFor("property_Note_LyingHamstringCurls_Week_06", "")
    property string property_Note_LyingHamstringCurls_Week_07: _app.getValueFor("property_Note_LyingHamstringCurls_Week_07", "")
    property string property_Note_LyingHamstringCurls_Week_08: _app.getValueFor("property_Note_LyingHamstringCurls_Week_08", "")

    property string property_Note_LyingInclineBarbellBicepsCurl_Week_01: _app.getValueFor("property_Note_LyingInclineBarbellBicepsCurl_Week_01", "")
    property string property_Note_LyingInclineBarbellBicepsCurl_Week_02: _app.getValueFor("property_Note_LyingInclineBarbellBicepsCurl_Week_02", "")
    property string property_Note_LyingInclineBarbellBicepsCurl_Week_03: _app.getValueFor("property_Note_LyingInclineBarbellBicepsCurl_Week_03", "")
    property string property_Note_LyingInclineBarbellBicepsCurl_Week_04: _app.getValueFor("property_Note_LyingInclineBarbellBicepsCurl_Week_04", "")
    property string property_Note_LyingInclineBarbellBicepsCurl_Week_05: _app.getValueFor("property_Note_LyingInclineBarbellBicepsCurl_Week_05", "")
    property string property_Note_LyingInclineBarbellBicepsCurl_Week_06: _app.getValueFor("property_Note_LyingInclineBarbellBicepsCurl_Week_06", "")
    property string property_Note_LyingInclineBarbellBicepsCurl_Week_07: _app.getValueFor("property_Note_LyingInclineBarbellBicepsCurl_Week_07", "")
    property string property_Note_LyingInclineBarbellBicepsCurl_Week_08: _app.getValueFor("property_Note_LyingInclineBarbellBicepsCurl_Week_08", "")

    property string property_Note_NarrowUnderhandGripLatPulldown_Week_01: _app.getValueFor("property_Note_NarrowUnderhandGripLatPulldown_Week_01", "")
    property string property_Note_NarrowUnderhandGripLatPulldown_Week_02: _app.getValueFor("property_Note_NarrowUnderhandGripLatPulldown_Week_02", "")
    property string property_Note_NarrowUnderhandGripLatPulldown_Week_03: _app.getValueFor("property_Note_NarrowUnderhandGripLatPulldown_Week_03", "")
    property string property_Note_NarrowUnderhandGripLatPulldown_Week_04: _app.getValueFor("property_Note_NarrowUnderhandGripLatPulldown_Week_04", "")
    property string property_Note_NarrowUnderhandGripLatPulldown_Week_05: _app.getValueFor("property_Note_NarrowUnderhandGripLatPulldown_Week_05", "")
    property string property_Note_NarrowUnderhandGripLatPulldown_Week_06: _app.getValueFor("property_Note_NarrowUnderhandGripLatPulldown_Week_06", "")
    property string property_Note_NarrowUnderhandGripLatPulldown_Week_07: _app.getValueFor("property_Note_NarrowUnderhandGripLatPulldown_Week_07", "")
    property string property_Note_NarrowUnderhandGripLatPulldown_Week_08: _app.getValueFor("property_Note_NarrowUnderhandGripLatPulldown_Week_08", "")

    property string property_Note_OneArmDumbbellRowOnBench_Week_01: _app.getValueFor("property_Note_OneArmDumbbellRowOnBench_Week_01", "")
    property string property_Note_OneArmDumbbellRowOnBench_Week_02: _app.getValueFor("property_Note_OneArmDumbbellRowOnBench_Week_02", "")
    property string property_Note_OneArmDumbbellRowOnBench_Week_03: _app.getValueFor("property_Note_OneArmDumbbellRowOnBench_Week_03", "")
    property string property_Note_OneArmDumbbellRowOnBench_Week_04: _app.getValueFor("property_Note_OneArmDumbbellRowOnBench_Week_04", "")
    property string property_Note_OneArmDumbbellRowOnBench_Week_05: _app.getValueFor("property_Note_OneArmDumbbellRowOnBench_Week_05", "")
    property string property_Note_OneArmDumbbellRowOnBench_Week_06: _app.getValueFor("property_Note_OneArmDumbbellRowOnBench_Week_06", "")
    property string property_Note_OneArmDumbbellRowOnBench_Week_07: _app.getValueFor("property_Note_OneArmDumbbellRowOnBench_Week_07", "")
    property string property_Note_OneArmDumbbellRowOnBench_Week_08: _app.getValueFor("property_Note_OneArmDumbbellRowOnBench_Week_08", "")

    property string property_Note_OneLegStiffDeadlift_Week_01: _app.getValueFor("property_Note_OneLegStiffDeadlift_Week_01", "")
    property string property_Note_OneLegStiffDeadlift_Week_02: _app.getValueFor("property_Note_OneLegStiffDeadlift_Week_02", "")
    property string property_Note_OneLegStiffDeadlift_Week_03: _app.getValueFor("property_Note_OneLegStiffDeadlift_Week_03", "")
    property string property_Note_OneLegStiffDeadlift_Week_04: _app.getValueFor("property_Note_OneLegStiffDeadlift_Week_04", "")
    property string property_Note_OneLegStiffDeadlift_Week_05: _app.getValueFor("property_Note_OneLegStiffDeadlift_Week_05", "")
    property string property_Note_OneLegStiffDeadlift_Week_06: _app.getValueFor("property_Note_OneLegStiffDeadlift_Week_06", "")
    property string property_Note_OneLegStiffDeadlift_Week_07: _app.getValueFor("property_Note_OneLegStiffDeadlift_Week_07", "")
    property string property_Note_OneLegStiffDeadlift_Week_08: _app.getValueFor("property_Note_OneLegStiffDeadlift_Week_08", "")

    property string property_Note_OverhandGripBarbellBentOverRows_Week_01: _app.getValueFor("property_Note_OverhandGripBarbellBentOverRows_Week_01", "")
    property string property_Note_OverhandGripBarbellBentOverRows_Week_02: _app.getValueFor("property_Note_OverhandGripBarbellBentOverRows_Week_02", "")
    property string property_Note_OverhandGripBarbellBentOverRows_Week_03: _app.getValueFor("property_Note_OverhandGripBarbellBentOverRows_Week_03", "")
    property string property_Note_OverhandGripBarbellBentOverRows_Week_04: _app.getValueFor("property_Note_OverhandGripBarbellBentOverRows_Week_04", "")
    property string property_Note_OverhandGripBarbellBentOverRows_Week_05: _app.getValueFor("property_Note_OverhandGripBarbellBentOverRows_Week_05", "")
    property string property_Note_OverhandGripBarbellBentOverRows_Week_06: _app.getValueFor("property_Note_OverhandGripBarbellBentOverRows_Week_06", "")
    property string property_Note_OverhandGripBarbellBentOverRows_Week_07: _app.getValueFor("property_Note_OverhandGripBarbellBentOverRows_Week_07", "")
    property string property_Note_OverhandGripBarbellBentOverRows_Week_08: _app.getValueFor("property_Note_OverhandGripBarbellBentOverRows_Week_08", "")

    property string property_Note_ReverseGripOneArmCableTricepsPushdowns_Week_01: _app.getValueFor("property_Note_ReverseGripOneArmCableTricepsPushdowns_Week_01", "")
    property string property_Note_ReverseGripOneArmCableTricepsPushdowns_Week_02: _app.getValueFor("property_Note_ReverseGripOneArmCableTricepsPushdowns_Week_02", "")
    property string property_Note_ReverseGripOneArmCableTricepsPushdowns_Week_03: _app.getValueFor("property_Note_ReverseGripOneArmCableTricepsPushdowns_Week_03", "")
    property string property_Note_ReverseGripOneArmCableTricepsPushdowns_Week_04: _app.getValueFor("property_Note_ReverseGripOneArmCableTricepsPushdowns_Week_04", "")
    property string property_Note_ReverseGripOneArmCableTricepsPushdowns_Week_05: _app.getValueFor("property_Note_ReverseGripOneArmCableTricepsPushdowns_Week_05", "")
    property string property_Note_ReverseGripOneArmCableTricepsPushdowns_Week_06: _app.getValueFor("property_Note_ReverseGripOneArmCableTricepsPushdowns_Week_06", "")
    property string property_Note_ReverseGripOneArmCableTricepsPushdowns_Week_07: _app.getValueFor("property_Note_ReverseGripOneArmCableTricepsPushdowns_Week_07", "")
    property string property_Note_ReverseGripOneArmCableTricepsPushdowns_Week_08: _app.getValueFor("property_Note_ReverseGripOneArmCableTricepsPushdowns_Week_08", "")

    property string property_Note_SeatedBarbbellBicepsCurl_Week_01: _app.getValueFor("property_Note_SeatedBarbbellBicepsCurl_Week_01", "")
    property string property_Note_SeatedBarbbellBicepsCurl_Week_02: _app.getValueFor("property_Note_SeatedBarbbellBicepsCurl_Week_02", "")
    property string property_Note_SeatedBarbbellBicepsCurl_Week_03: _app.getValueFor("property_Note_SeatedBarbbellBicepsCurl_Week_03", "")
    property string property_Note_SeatedBarbbellBicepsCurl_Week_04: _app.getValueFor("property_Note_SeatedBarbbellBicepsCurl_Week_04", "")
    property string property_Note_SeatedBarbbellBicepsCurl_Week_05: _app.getValueFor("property_Note_SeatedBarbbellBicepsCurl_Week_05", "")
    property string property_Note_SeatedBarbbellBicepsCurl_Week_06: _app.getValueFor("property_Note_SeatedBarbbellBicepsCurl_Week_06", "")
    property string property_Note_SeatedBarbbellBicepsCurl_Week_07: _app.getValueFor("property_Note_SeatedBarbbellBicepsCurl_Week_07", "")
    property string property_Note_SeatedBarbbellBicepsCurl_Week_08: _app.getValueFor("property_Note_SeatedBarbbellBicepsCurl_Week_08", "")

    property string property_Note_SeatedBarbellArnoldPress_Week_01: _app.getValueFor("property_Note_SeatedBarbellArnoldPress_Week_01", "")
    property string property_Note_SeatedBarbellArnoldPress_Week_02: _app.getValueFor("property_Note_SeatedBarbellArnoldPress_Week_02", "")
    property string property_Note_SeatedBarbellArnoldPress_Week_03: _app.getValueFor("property_Note_SeatedBarbellArnoldPress_Week_03", "")
    property string property_Note_SeatedBarbellArnoldPress_Week_04: _app.getValueFor("property_Note_SeatedBarbellArnoldPress_Week_04", "")
    property string property_Note_SeatedBarbellArnoldPress_Week_05: _app.getValueFor("property_Note_SeatedBarbellArnoldPress_Week_05", "")
    property string property_Note_SeatedBarbellArnoldPress_Week_06: _app.getValueFor("property_Note_SeatedBarbellArnoldPress_Week_06", "")
    property string property_Note_SeatedBarbellArnoldPress_Week_07: _app.getValueFor("property_Note_SeatedBarbellArnoldPress_Week_07", "")
    property string property_Note_SeatedBarbellArnoldPress_Week_08: _app.getValueFor("property_Note_SeatedBarbellArnoldPress_Week_08", "")

    property string property_Note_SeatedBarbellCalfRaises_Week_01: _app.getValueFor("property_Note_SeatedBarbellCalfRaises_Week_01", "")
    property string property_Note_SeatedBarbellCalfRaises_Week_02: _app.getValueFor("property_Note_SeatedBarbellCalfRaises_Week_02", "")
    property string property_Note_SeatedBarbellCalfRaises_Week_03: _app.getValueFor("property_Note_SeatedBarbellCalfRaises_Week_03", "")
    property string property_Note_SeatedBarbellCalfRaises_Week_04: _app.getValueFor("property_Note_SeatedBarbellCalfRaises_Week_04", "")
    property string property_Note_SeatedBarbellCalfRaises_Week_05: _app.getValueFor("property_Note_SeatedBarbellCalfRaises_Week_05", "")
    property string property_Note_SeatedBarbellCalfRaises_Week_06: _app.getValueFor("property_Note_SeatedBarbellCalfRaises_Week_06", "")
    property string property_Note_SeatedBarbellCalfRaises_Week_07: _app.getValueFor("property_Note_SeatedBarbellCalfRaises_Week_07", "")
    property string property_Note_SeatedBarbellCalfRaises_Week_08: _app.getValueFor("property_Note_SeatedBarbellCalfRaises_Week_08", "")

    property string property_Note_SeatedBarbellShoulderPress_Week_01: _app.getValueFor("property_Note_SeatedBarbellShoulderPress_Week_01", "")
    property string property_Note_SeatedBarbellShoulderPress_Week_02: _app.getValueFor("property_Note_SeatedBarbellShoulderPress_Week_02", "")
    property string property_Note_SeatedBarbellShoulderPress_Week_03: _app.getValueFor("property_Note_SeatedBarbellShoulderPress_Week_03", "")
    property string property_Note_SeatedBarbellShoulderPress_Week_04: _app.getValueFor("property_Note_SeatedBarbellShoulderPress_Week_04", "")
    property string property_Note_SeatedBarbellShoulderPress_Week_05: _app.getValueFor("property_Note_SeatedBarbellShoulderPress_Week_05", "")
    property string property_Note_SeatedBarbellShoulderPress_Week_06: _app.getValueFor("property_Note_SeatedBarbellShoulderPress_Week_06", "")
    property string property_Note_SeatedBarbellShoulderPress_Week_07: _app.getValueFor("property_Note_SeatedBarbellShoulderPress_Week_07", "")
    property string property_Note_SeatedBarbellShoulderPress_Week_08: _app.getValueFor("property_Note_SeatedBarbellShoulderPress_Week_08", "")

    property string property_Note_SeatedCableRow_Week_01: _app.getValueFor("property_Note_SeatedCableRow_Week_01", "")
    property string property_Note_SeatedCableRow_Week_02: _app.getValueFor("property_Note_SeatedCableRow_Week_02", "")
    property string property_Note_SeatedCableRow_Week_03: _app.getValueFor("property_Note_SeatedCableRow_Week_03", "")
    property string property_Note_SeatedCableRow_Week_04: _app.getValueFor("property_Note_SeatedCableRow_Week_04", "")
    property string property_Note_SeatedCableRow_Week_05: _app.getValueFor("property_Note_SeatedCableRow_Week_05", "")
    property string property_Note_SeatedCableRow_Week_06: _app.getValueFor("property_Note_SeatedCableRow_Week_06", "")
    property string property_Note_SeatedCableRow_Week_07: _app.getValueFor("property_Note_SeatedCableRow_Week_07", "")
    property string property_Note_SeatedCableRow_Week_08: _app.getValueFor("property_Note_SeatedCableRow_Week_08", "")

    property string property_Note_SeatedDumbbellBicepsHammerCurls_Week_01: _app.getValueFor("property_Note_SeatedDumbbellBicepsHammerCurls_Week_01", "")
    property string property_Note_SeatedDumbbellBicepsHammerCurls_Week_02: _app.getValueFor("property_Note_SeatedDumbbellBicepsHammerCurls_Week_02", "")
    property string property_Note_SeatedDumbbellBicepsHammerCurls_Week_03: _app.getValueFor("property_Note_SeatedDumbbellBicepsHammerCurls_Week_03", "")
    property string property_Note_SeatedDumbbellBicepsHammerCurls_Week_04: _app.getValueFor("property_Note_SeatedDumbbellBicepsHammerCurls_Week_04", "")
    property string property_Note_SeatedDumbbellBicepsHammerCurls_Week_05: _app.getValueFor("property_Note_SeatedDumbbellBicepsHammerCurls_Week_05", "")
    property string property_Note_SeatedDumbbellBicepsHammerCurls_Week_06: _app.getValueFor("property_Note_SeatedDumbbellBicepsHammerCurls_Week_06", "")
    property string property_Note_SeatedDumbbellBicepsHammerCurls_Week_07: _app.getValueFor("property_Note_SeatedDumbbellBicepsHammerCurls_Week_07", "")
    property string property_Note_SeatedDumbbellBicepsHammerCurls_Week_08: _app.getValueFor("property_Note_SeatedDumbbellBicepsHammerCurls_Week_08", "")

    property string property_Note_SeatedDumbbellShoulderPress_Week_01: _app.getValueFor("property_Note_SeatedDumbbellShoulderPress_Week_01", "")
    property string property_Note_SeatedDumbbellShoulderPress_Week_02: _app.getValueFor("property_Note_SeatedDumbbellShoulderPress_Week_02", "")
    property string property_Note_SeatedDumbbellShoulderPress_Week_03: _app.getValueFor("property_Note_SeatedDumbbellShoulderPress_Week_03", "")
    property string property_Note_SeatedDumbbellShoulderPress_Week_04: _app.getValueFor("property_Note_SeatedDumbbellShoulderPress_Week_04", "")
    property string property_Note_SeatedDumbbellShoulderPress_Week_05: _app.getValueFor("property_Note_SeatedDumbbellShoulderPress_Week_05", "")
    property string property_Note_SeatedDumbbellShoulderPress_Week_06: _app.getValueFor("property_Note_SeatedDumbbellShoulderPress_Week_06", "")
    property string property_Note_SeatedDumbbellShoulderPress_Week_07: _app.getValueFor("property_Note_SeatedDumbbellShoulderPress_Week_07", "")
    property string property_Note_SeatedDumbbellShoulderPress_Week_08: _app.getValueFor("property_Note_SeatedDumbbellShoulderPress_Week_08", "")

    property string property_Note_SeatedDumbbellTricepsExtensions_Week_01: _app.getValueFor("property_Note_SeatedDumbbellTricepsExtensions_Week_01", "")
    property string property_Note_SeatedDumbbellTricepsExtensions_Week_02: _app.getValueFor("property_Note_SeatedDumbbellTricepsExtensions_Week_02", "")
    property string property_Note_SeatedDumbbellTricepsExtensions_Week_03: _app.getValueFor("property_Note_SeatedDumbbellTricepsExtensions_Week_03", "")
    property string property_Note_SeatedDumbbellTricepsExtensions_Week_04: _app.getValueFor("property_Note_SeatedDumbbellTricepsExtensions_Week_04", "")
    property string property_Note_SeatedDumbbellTricepsExtensions_Week_05: _app.getValueFor("property_Note_SeatedDumbbellTricepsExtensions_Week_05", "")
    property string property_Note_SeatedDumbbellTricepsExtensions_Week_06: _app.getValueFor("property_Note_SeatedDumbbellTricepsExtensions_Week_06", "")
    property string property_Note_SeatedDumbbellTricepsExtensions_Week_07: _app.getValueFor("property_Note_SeatedDumbbellTricepsExtensions_Week_07", "")
    property string property_Note_SeatedDumbbellTricepsExtensions_Week_08: _app.getValueFor("property_Note_SeatedDumbbellTricepsExtensions_Week_08", "")

    property string property_Note_SeatedInclineDumbbellBicepsCurl_Week_01: _app.getValueFor("property_Note_SeatedInclineDumbbellBicepsCurl_Week_01", "")
    property string property_Note_SeatedInclineDumbbellBicepsCurl_Week_02: _app.getValueFor("property_Note_SeatedInclineDumbbellBicepsCurl_Week_02", "")
    property string property_Note_SeatedInclineDumbbellBicepsCurl_Week_03: _app.getValueFor("property_Note_SeatedInclineDumbbellBicepsCurl_Week_03", "")
    property string property_Note_SeatedInclineDumbbellBicepsCurl_Week_04: _app.getValueFor("property_Note_SeatedInclineDumbbellBicepsCurl_Week_04", "")
    property string property_Note_SeatedInclineDumbbellBicepsCurl_Week_05: _app.getValueFor("property_Note_SeatedInclineDumbbellBicepsCurl_Week_05", "")
    property string property_Note_SeatedInclineDumbbellBicepsCurl_Week_06: _app.getValueFor("property_Note_SeatedInclineDumbbellBicepsCurl_Week_06", "")
    property string property_Note_SeatedInclineDumbbellBicepsCurl_Week_07: _app.getValueFor("property_Note_SeatedInclineDumbbellBicepsCurl_Week_07", "")
    property string property_Note_SeatedInclineDumbbellBicepsCurl_Week_08: _app.getValueFor("property_Note_SeatedInclineDumbbellBicepsCurl_Week_08", "")

    property string property_Note_SeatedMachineChestPress_Week_01: _app.getValueFor("property_Note_SeatedMachineChestPress_Week_01", "")
    property string property_Note_SeatedMachineChestPress_Week_02: _app.getValueFor("property_Note_SeatedMachineChestPress_Week_02", "")
    property string property_Note_SeatedMachineChestPress_Week_03: _app.getValueFor("property_Note_SeatedMachineChestPress_Week_03", "")
    property string property_Note_SeatedMachineChestPress_Week_04: _app.getValueFor("property_Note_SeatedMachineChestPress_Week_04", "")
    property string property_Note_SeatedMachineChestPress_Week_05: _app.getValueFor("property_Note_SeatedMachineChestPress_Week_05", "")
    property string property_Note_SeatedMachineChestPress_Week_06: _app.getValueFor("property_Note_SeatedMachineChestPress_Week_06", "")
    property string property_Note_SeatedMachineChestPress_Week_07: _app.getValueFor("property_Note_SeatedMachineChestPress_Week_07", "")
    property string property_Note_SeatedMachineChestPress_Week_08: _app.getValueFor("property_Note_SeatedMachineChestPress_Week_08", "")

    property string property_Note_SeatedOverheadBarbellPress_Week_01: _app.getValueFor("property_Note_SeatedOverheadBarbellPress_Week_01", "")
    property string property_Note_SeatedOverheadBarbellPress_Week_02: _app.getValueFor("property_Note_SeatedOverheadBarbellPress_Week_02", "")
    property string property_Note_SeatedOverheadBarbellPress_Week_03: _app.getValueFor("property_Note_SeatedOverheadBarbellPress_Week_03", "")
    property string property_Note_SeatedOverheadBarbellPress_Week_04: _app.getValueFor("property_Note_SeatedOverheadBarbellPress_Week_04", "")
    property string property_Note_SeatedOverheadBarbellPress_Week_05: _app.getValueFor("property_Note_SeatedOverheadBarbellPress_Week_05", "")
    property string property_Note_SeatedOverheadBarbellPress_Week_06: _app.getValueFor("property_Note_SeatedOverheadBarbellPress_Week_06", "")
    property string property_Note_SeatedOverheadBarbellPress_Week_07: _app.getValueFor("property_Note_SeatedOverheadBarbellPress_Week_07", "")
    property string property_Note_SeatedOverheadBarbellPress_Week_08: _app.getValueFor("property_Note_SeatedOverheadBarbellPress_Week_08", "")

    property string property_Note_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_01: _app.getValueFor("property_Note_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_01", "")
    property string property_Note_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_02: _app.getValueFor("property_Note_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_02", "")
    property string property_Note_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_03: _app.getValueFor("property_Note_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_03", "")
    property string property_Note_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_04: _app.getValueFor("property_Note_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_04", "")
    property string property_Note_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_05: _app.getValueFor("property_Note_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_05", "")
    property string property_Note_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_06: _app.getValueFor("property_Note_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_06", "")
    property string property_Note_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_07: _app.getValueFor("property_Note_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_07", "")
    property string property_Note_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_08: _app.getValueFor("property_Note_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_08", "")

    property string property_Note_SingleLegBarbellHipThrust_Week_01: _app.getValueFor("property_Note_SingleLegBarbellHipThrust_Week_01", "")
    property string property_Note_SingleLegBarbellHipThrust_Week_02: _app.getValueFor("property_Note_SingleLegBarbellHipThrust_Week_02", "")
    property string property_Note_SingleLegBarbellHipThrust_Week_03: _app.getValueFor("property_Note_SingleLegBarbellHipThrust_Week_03", "")
    property string property_Note_SingleLegBarbellHipThrust_Week_04: _app.getValueFor("property_Note_SingleLegBarbellHipThrust_Week_04", "")
    property string property_Note_SingleLegBarbellHipThrust_Week_05: _app.getValueFor("property_Note_SingleLegBarbellHipThrust_Week_05", "")
    property string property_Note_SingleLegBarbellHipThrust_Week_06: _app.getValueFor("property_Note_SingleLegBarbellHipThrust_Week_06", "")
    property string property_Note_SingleLegBarbellHipThrust_Week_07: _app.getValueFor("property_Note_SingleLegBarbellHipThrust_Week_07", "")
    property string property_Note_SingleLegBarbellHipThrust_Week_08: _app.getValueFor("property_Note_SingleLegBarbellHipThrust_Week_08", "")

    property string property_Note_SingleLegDumbbellSplitSquat_Week_01: _app.getValueFor("property_Note_SingleLegDumbbellSplitSquat_Week_01", "")
    property string property_Note_SingleLegDumbbellSplitSquat_Week_02: _app.getValueFor("property_Note_SingleLegDumbbellSplitSquat_Week_02", "")
    property string property_Note_SingleLegDumbbellSplitSquat_Week_03: _app.getValueFor("property_Note_SingleLegDumbbellSplitSquat_Week_03", "")
    property string property_Note_SingleLegDumbbellSplitSquat_Week_04: _app.getValueFor("property_Note_SingleLegDumbbellSplitSquat_Week_04", "")
    property string property_Note_SingleLegDumbbellSplitSquat_Week_05: _app.getValueFor("property_Note_SingleLegDumbbellSplitSquat_Week_05", "")
    property string property_Note_SingleLegDumbbellSplitSquat_Week_06: _app.getValueFor("property_Note_SingleLegDumbbellSplitSquat_Week_06", "")
    property string property_Note_SingleLegDumbbellSplitSquat_Week_07: _app.getValueFor("property_Note_SingleLegDumbbellSplitSquat_Week_07", "")
    property string property_Note_SingleLegDumbbellSplitSquat_Week_08: _app.getValueFor("property_Note_SingleLegDumbbellSplitSquat_Week_08", "")

    property string property_Note_StandingAlternateDumbbellBicepsCurls_Week_01: _app.getValueFor("property_Note_StandingAlternateDumbbellBicepsCurls_Week_01", "")
    property string property_Note_StandingAlternateDumbbellBicepsCurls_Week_02: _app.getValueFor("property_Note_StandingAlternateDumbbellBicepsCurls_Week_02", "")
    property string property_Note_StandingAlternateDumbbellBicepsCurls_Week_03: _app.getValueFor("property_Note_StandingAlternateDumbbellBicepsCurls_Week_03", "")
    property string property_Note_StandingAlternateDumbbellBicepsCurls_Week_04: _app.getValueFor("property_Note_StandingAlternateDumbbellBicepsCurls_Week_04", "")
    property string property_Note_StandingAlternateDumbbellBicepsCurls_Week_05: _app.getValueFor("property_Note_StandingAlternateDumbbellBicepsCurls_Week_05", "")
    property string property_Note_StandingAlternateDumbbellBicepsCurls_Week_06: _app.getValueFor("property_Note_StandingAlternateDumbbellBicepsCurls_Week_06", "")
    property string property_Note_StandingAlternateDumbbellBicepsCurls_Week_07: _app.getValueFor("property_Note_StandingAlternateDumbbellBicepsCurls_Week_07", "")
    property string property_Note_StandingAlternateDumbbellBicepsCurls_Week_08: _app.getValueFor("property_Note_StandingAlternateDumbbellBicepsCurls_Week_08", "")

    property string property_Note_StandingBarbellFrontRaises_Week_01: _app.getValueFor("property_Note_StandingBarbellFrontRaises_Week_01", "")
    property string property_Note_StandingBarbellFrontRaises_Week_02: _app.getValueFor("property_Note_StandingBarbellFrontRaises_Week_02", "")
    property string property_Note_StandingBarbellFrontRaises_Week_03: _app.getValueFor("property_Note_StandingBarbellFrontRaises_Week_03", "")
    property string property_Note_StandingBarbellFrontRaises_Week_04: _app.getValueFor("property_Note_StandingBarbellFrontRaises_Week_04", "")
    property string property_Note_StandingBarbellFrontRaises_Week_05: _app.getValueFor("property_Note_StandingBarbellFrontRaises_Week_05", "")
    property string property_Note_StandingBarbellFrontRaises_Week_06: _app.getValueFor("property_Note_StandingBarbellFrontRaises_Week_06", "")
    property string property_Note_StandingBarbellFrontRaises_Week_07: _app.getValueFor("property_Note_StandingBarbellFrontRaises_Week_07", "")
    property string property_Note_StandingBarbellFrontRaises_Week_08: _app.getValueFor("property_Note_StandingBarbellFrontRaises_Week_08", "")

    property string property_Note_StandingBarbellPushPress_Week_01: _app.getValueFor("property_Note_StandingBarbellPushPress_Week_01", "")
    property string property_Note_StandingBarbellPushPress_Week_02: _app.getValueFor("property_Note_StandingBarbellPushPress_Week_02", "")
    property string property_Note_StandingBarbellPushPress_Week_03: _app.getValueFor("property_Note_StandingBarbellPushPress_Week_03", "")
    property string property_Note_StandingBarbellPushPress_Week_04: _app.getValueFor("property_Note_StandingBarbellPushPress_Week_04", "")
    property string property_Note_StandingBarbellPushPress_Week_05: _app.getValueFor("property_Note_StandingBarbellPushPress_Week_05", "")
    property string property_Note_StandingBarbellPushPress_Week_06: _app.getValueFor("property_Note_StandingBarbellPushPress_Week_06", "")
    property string property_Note_StandingBarbellPushPress_Week_07: _app.getValueFor("property_Note_StandingBarbellPushPress_Week_07", "")
    property string property_Note_StandingBarbellPushPress_Week_08: _app.getValueFor("property_Note_StandingBarbellPushPress_Week_08", "")

    property string property_Note_StandingBentOverLateralRaises_Week_01: _app.getValueFor("property_Note_StandingBentOverLateralRaises_Week_01", "")
    property string property_Note_StandingBentOverLateralRaises_Week_02: _app.getValueFor("property_Note_StandingBentOverLateralRaises_Week_02", "")
    property string property_Note_StandingBentOverLateralRaises_Week_03: _app.getValueFor("property_Note_StandingBentOverLateralRaises_Week_03", "")
    property string property_Note_StandingBentOverLateralRaises_Week_04: _app.getValueFor("property_Note_StandingBentOverLateralRaises_Week_04", "")
    property string property_Note_StandingBentOverLateralRaises_Week_05: _app.getValueFor("property_Note_StandingBentOverLateralRaises_Week_05", "")
    property string property_Note_StandingBentOverLateralRaises_Week_06: _app.getValueFor("property_Note_StandingBentOverLateralRaises_Week_06", "")
    property string property_Note_StandingBentOverLateralRaises_Week_07: _app.getValueFor("property_Note_StandingBentOverLateralRaises_Week_07", "")
    property string property_Note_StandingBentOverLateralRaises_Week_08: _app.getValueFor("property_Note_StandingBentOverLateralRaises_Week_08", "")

    property string property_Note_StandingBicepsCableCurl_Week_01: _app.getValueFor("property_Note_StandingBicepsCableCurl_Week_01", "")
    property string property_Note_StandingBicepsCableCurl_Week_02: _app.getValueFor("property_Note_StandingBicepsCableCurl_Week_02", "")
    property string property_Note_StandingBicepsCableCurl_Week_03: _app.getValueFor("property_Note_StandingBicepsCableCurl_Week_03", "")
    property string property_Note_StandingBicepsCableCurl_Week_04: _app.getValueFor("property_Note_StandingBicepsCableCurl_Week_04", "")
    property string property_Note_StandingBicepsCableCurl_Week_05: _app.getValueFor("property_Note_StandingBicepsCableCurl_Week_05", "")
    property string property_Note_StandingBicepsCableCurl_Week_06: _app.getValueFor("property_Note_StandingBicepsCableCurl_Week_06", "")
    property string property_Note_StandingBicepsCableCurl_Week_07: _app.getValueFor("property_Note_StandingBicepsCableCurl_Week_07", "")
    property string property_Note_StandingBicepsCableCurl_Week_08: _app.getValueFor("property_Note_StandingBicepsCableCurl_Week_08", "")

    property string property_Note_StandingCableBarLatPushdown_Week_01: _app.getValueFor("property_Note_StandingCableBarLatPushdown_Week_01", "")
    property string property_Note_StandingCableBarLatPushdown_Week_02: _app.getValueFor("property_Note_StandingCableBarLatPushdown_Week_02", "")
    property string property_Note_StandingCableBarLatPushdown_Week_03: _app.getValueFor("property_Note_StandingCableBarLatPushdown_Week_03", "")
    property string property_Note_StandingCableBarLatPushdown_Week_04: _app.getValueFor("property_Note_StandingCableBarLatPushdown_Week_04", "")
    property string property_Note_StandingCableBarLatPushdown_Week_05: _app.getValueFor("property_Note_StandingCableBarLatPushdown_Week_05", "")
    property string property_Note_StandingCableBarLatPushdown_Week_06: _app.getValueFor("property_Note_StandingCableBarLatPushdown_Week_06", "")
    property string property_Note_StandingCableBarLatPushdown_Week_07: _app.getValueFor("property_Note_StandingCableBarLatPushdown_Week_07", "")
    property string property_Note_StandingCableBarLatPushdown_Week_08: _app.getValueFor("property_Note_StandingCableBarLatPushdown_Week_08", "")

    property string property_Note_StandingCableRearDeltFly_Week_01: _app.getValueFor("property_Note_StandingCableRearDeltFly_Week_01", "")
    property string property_Note_StandingCableRearDeltFly_Week_02: _app.getValueFor("property_Note_StandingCableRearDeltFly_Week_02", "")
    property string property_Note_StandingCableRearDeltFly_Week_03: _app.getValueFor("property_Note_StandingCableRearDeltFly_Week_03", "")
    property string property_Note_StandingCableRearDeltFly_Week_04: _app.getValueFor("property_Note_StandingCableRearDeltFly_Week_04", "")
    property string property_Note_StandingCableRearDeltFly_Week_05: _app.getValueFor("property_Note_StandingCableRearDeltFly_Week_05", "")
    property string property_Note_StandingCableRearDeltFly_Week_06: _app.getValueFor("property_Note_StandingCableRearDeltFly_Week_06", "")
    property string property_Note_StandingCableRearDeltFly_Week_07: _app.getValueFor("property_Note_StandingCableRearDeltFly_Week_07", "")
    property string property_Note_StandingCableRearDeltFly_Week_08: _app.getValueFor("property_Note_StandingCableRearDeltFly_Week_08", "")

    property string property_Note_StandingCableRearDeltRopePulls_Week_01: _app.getValueFor("property_Note_StandingCableRearDeltRopePulls_Week_01", "")
    property string property_Note_StandingCableRearDeltRopePulls_Week_02: _app.getValueFor("property_Note_StandingCableRearDeltRopePulls_Week_02", "")
    property string property_Note_StandingCableRearDeltRopePulls_Week_03: _app.getValueFor("property_Note_StandingCableRearDeltRopePulls_Week_03", "")
    property string property_Note_StandingCableRearDeltRopePulls_Week_04: _app.getValueFor("property_Note_StandingCableRearDeltRopePulls_Week_04", "")
    property string property_Note_StandingCableRearDeltRopePulls_Week_05: _app.getValueFor("property_Note_StandingCableRearDeltRopePulls_Week_05", "")
    property string property_Note_StandingCableRearDeltRopePulls_Week_06: _app.getValueFor("property_Note_StandingCableRearDeltRopePulls_Week_06", "")
    property string property_Note_StandingCableRearDeltRopePulls_Week_07: _app.getValueFor("property_Note_StandingCableRearDeltRopePulls_Week_07", "")
    property string property_Note_StandingCableRearDeltRopePulls_Week_08: _app.getValueFor("property_Note_StandingCableRearDeltRopePulls_Week_08", "")

    property string property_Note_StandingCableRopeHammerCurl_Week_01: _app.getValueFor("property_Note_StandingCableRopeHammerCurl_Week_01", "")
    property string property_Note_StandingCableRopeHammerCurl_Week_02: _app.getValueFor("property_Note_StandingCableRopeHammerCurl_Week_02", "")
    property string property_Note_StandingCableRopeHammerCurl_Week_03: _app.getValueFor("property_Note_StandingCableRopeHammerCurl_Week_03", "")
    property string property_Note_StandingCableRopeHammerCurl_Week_04: _app.getValueFor("property_Note_StandingCableRopeHammerCurl_Week_04", "")
    property string property_Note_StandingCableRopeHammerCurl_Week_05: _app.getValueFor("property_Note_StandingCableRopeHammerCurl_Week_05", "")
    property string property_Note_StandingCableRopeHammerCurl_Week_06: _app.getValueFor("property_Note_StandingCableRopeHammerCurl_Week_06", "")
    property string property_Note_StandingCableRopeHammerCurl_Week_07: _app.getValueFor("property_Note_StandingCableRopeHammerCurl_Week_07", "")
    property string property_Note_StandingCableRopeHammerCurl_Week_08: _app.getValueFor("property_Note_StandingCableRopeHammerCurl_Week_08", "")

    property string property_Note_StandingCalfRaisesMachine_Week_01: _app.getValueFor("property_Note_StandingCalfRaisesMachine_Week_01", "")
    property string property_Note_StandingCalfRaisesMachine_Week_02: _app.getValueFor("property_Note_StandingCalfRaisesMachine_Week_02", "")
    property string property_Note_StandingCalfRaisesMachine_Week_03: _app.getValueFor("property_Note_StandingCalfRaisesMachine_Week_03", "")
    property string property_Note_StandingCalfRaisesMachine_Week_04: _app.getValueFor("property_Note_StandingCalfRaisesMachine_Week_04", "")
    property string property_Note_StandingCalfRaisesMachine_Week_05: _app.getValueFor("property_Note_StandingCalfRaisesMachine_Week_05", "")
    property string property_Note_StandingCalfRaisesMachine_Week_06: _app.getValueFor("property_Note_StandingCalfRaisesMachine_Week_06", "")
    property string property_Note_StandingCalfRaisesMachine_Week_07: _app.getValueFor("property_Note_StandingCalfRaisesMachine_Week_07", "")
    property string property_Note_StandingCalfRaisesMachine_Week_08: _app.getValueFor("property_Note_StandingCalfRaisesMachine_Week_08", "")

    property string property_Note_StandingDumbbellBicepsHammerCurls_Week_01: _app.getValueFor("property_Note_StandingDumbbellBicepsHammerCurls_Week_01", "")
    property string property_Note_StandingDumbbellBicepsHammerCurls_Week_02: _app.getValueFor("property_Note_StandingDumbbellBicepsHammerCurls_Week_02", "")
    property string property_Note_StandingDumbbellBicepsHammerCurls_Week_03: _app.getValueFor("property_Note_StandingDumbbellBicepsHammerCurls_Week_03", "")
    property string property_Note_StandingDumbbellBicepsHammerCurls_Week_04: _app.getValueFor("property_Note_StandingDumbbellBicepsHammerCurls_Week_04", "")
    property string property_Note_StandingDumbbellBicepsHammerCurls_Week_05: _app.getValueFor("property_Note_StandingDumbbellBicepsHammerCurls_Week_05", "")
    property string property_Note_StandingDumbbellBicepsHammerCurls_Week_06: _app.getValueFor("property_Note_StandingDumbbellBicepsHammerCurls_Week_06", "")
    property string property_Note_StandingDumbbellBicepsHammerCurls_Week_07: _app.getValueFor("property_Note_StandingDumbbellBicepsHammerCurls_Week_07", "")
    property string property_Note_StandingDumbbellBicepsHammerCurls_Week_08: _app.getValueFor("property_Note_StandingDumbbellBicepsHammerCurls_Week_08", "")

    property string property_Note_StandingDumbbellFrontRaises_Week_01: _app.getValueFor("property_Note_StandingDumbbellFrontRaises_Week_01", "")
    property string property_Note_StandingDumbbellFrontRaises_Week_02: _app.getValueFor("property_Note_StandingDumbbellFrontRaises_Week_02", "")
    property string property_Note_StandingDumbbellFrontRaises_Week_03: _app.getValueFor("property_Note_StandingDumbbellFrontRaises_Week_03", "")
    property string property_Note_StandingDumbbellFrontRaises_Week_04: _app.getValueFor("property_Note_StandingDumbbellFrontRaises_Week_04", "")
    property string property_Note_StandingDumbbellFrontRaises_Week_05: _app.getValueFor("property_Note_StandingDumbbellFrontRaises_Week_05", "")
    property string property_Note_StandingDumbbellFrontRaises_Week_06: _app.getValueFor("property_Note_StandingDumbbellFrontRaises_Week_06", "")
    property string property_Note_StandingDumbbellFrontRaises_Week_07: _app.getValueFor("property_Note_StandingDumbbellFrontRaises_Week_07", "")
    property string property_Note_StandingDumbbellFrontRaises_Week_08: _app.getValueFor("property_Note_StandingDumbbellFrontRaises_Week_08", "")

    property string property_Note_StandingDumbbellInnerBicepsCurl_Week_01: _app.getValueFor("property_Note_StandingDumbbellInnerBicepsCurl_Week_01", "")
    property string property_Note_StandingDumbbellInnerBicepsCurl_Week_02: _app.getValueFor("property_Note_StandingDumbbellInnerBicepsCurl_Week_02", "")
    property string property_Note_StandingDumbbellInnerBicepsCurl_Week_03: _app.getValueFor("property_Note_StandingDumbbellInnerBicepsCurl_Week_03", "")
    property string property_Note_StandingDumbbellInnerBicepsCurl_Week_04: _app.getValueFor("property_Note_StandingDumbbellInnerBicepsCurl_Week_04", "")
    property string property_Note_StandingDumbbellInnerBicepsCurl_Week_05: _app.getValueFor("property_Note_StandingDumbbellInnerBicepsCurl_Week_05", "")
    property string property_Note_StandingDumbbellInnerBicepsCurl_Week_06: _app.getValueFor("property_Note_StandingDumbbellInnerBicepsCurl_Week_06", "")
    property string property_Note_StandingDumbbellInnerBicepsCurl_Week_07: _app.getValueFor("property_Note_StandingDumbbellInnerBicepsCurl_Week_07", "")
    property string property_Note_StandingDumbbellInnerBicepsCurl_Week_08: _app.getValueFor("property_Note_StandingDumbbellInnerBicepsCurl_Week_08", "")

    property string property_Note_StandingDumbbellLateralRaises_Week_01: _app.getValueFor("property_Note_StandingDumbbellLateralRaises_Week_01", "")
    property string property_Note_StandingDumbbellLateralRaises_Week_02: _app.getValueFor("property_Note_StandingDumbbellLateralRaises_Week_02", "")
    property string property_Note_StandingDumbbellLateralRaises_Week_03: _app.getValueFor("property_Note_StandingDumbbellLateralRaises_Week_03", "")
    property string property_Note_StandingDumbbellLateralRaises_Week_04: _app.getValueFor("property_Note_StandingDumbbellLateralRaises_Week_04", "")
    property string property_Note_StandingDumbbellLateralRaises_Week_05: _app.getValueFor("property_Note_StandingDumbbellLateralRaises_Week_05", "")
    property string property_Note_StandingDumbbellLateralRaises_Week_06: _app.getValueFor("property_Note_StandingDumbbellLateralRaises_Week_06", "")
    property string property_Note_StandingDumbbellLateralRaises_Week_07: _app.getValueFor("property_Note_StandingDumbbellLateralRaises_Week_07", "")
    property string property_Note_StandingDumbbellLateralRaises_Week_08: _app.getValueFor("property_Note_StandingDumbbellLateralRaises_Week_08", "")

    property string property_Note_StandingDumbbellShoulderPress_Week_01: _app.getValueFor("property_Note_StandingDumbbellShoulderPress_Week_01", "")
    property string property_Note_StandingDumbbellShoulderPress_Week_02: _app.getValueFor("property_Note_StandingDumbbellShoulderPress_Week_02", "")
    property string property_Note_StandingDumbbellShoulderPress_Week_03: _app.getValueFor("property_Note_StandingDumbbellShoulderPress_Week_03", "")
    property string property_Note_StandingDumbbellShoulderPress_Week_04: _app.getValueFor("property_Note_StandingDumbbellShoulderPress_Week_04", "")
    property string property_Note_StandingDumbbellShoulderPress_Week_05: _app.getValueFor("property_Note_StandingDumbbellShoulderPress_Week_05", "")
    property string property_Note_StandingDumbbellShoulderPress_Week_06: _app.getValueFor("property_Note_StandingDumbbellShoulderPress_Week_06", "")
    property string property_Note_StandingDumbbellShoulderPress_Week_07: _app.getValueFor("property_Note_StandingDumbbellShoulderPress_Week_07", "")
    property string property_Note_StandingDumbbellShoulderPress_Week_08: _app.getValueFor("property_Note_StandingDumbbellShoulderPress_Week_08", "")

    property string property_Note_StandingFrontBarbellShrugs_Week_01: _app.getValueFor("property_Note_StandingFrontBarbellShrugs_Week_01", "")
    property string property_Note_StandingFrontBarbellShrugs_Week_02: _app.getValueFor("property_Note_StandingFrontBarbellShrugs_Week_02", "")
    property string property_Note_StandingFrontBarbellShrugs_Week_03: _app.getValueFor("property_Note_StandingFrontBarbellShrugs_Week_03", "")
    property string property_Note_StandingFrontBarbellShrugs_Week_04: _app.getValueFor("property_Note_StandingFrontBarbellShrugs_Week_04", "")
    property string property_Note_StandingFrontBarbellShrugs_Week_05: _app.getValueFor("property_Note_StandingFrontBarbellShrugs_Week_05", "")
    property string property_Note_StandingFrontBarbellShrugs_Week_06: _app.getValueFor("property_Note_StandingFrontBarbellShrugs_Week_06", "")
    property string property_Note_StandingFrontBarbellShrugs_Week_07: _app.getValueFor("property_Note_StandingFrontBarbellShrugs_Week_07", "")
    property string property_Note_StandingFrontBarbellShrugs_Week_08: _app.getValueFor("property_Note_StandingFrontBarbellShrugs_Week_08", "")

    property string property_Note_StandingOneArmDumbbellShoulderPress_Week_01: _app.getValueFor("property_Note_StandingOneArmDumbbellShoulderPress_Week_01", "")
    property string property_Note_StandingOneArmDumbbellShoulderPress_Week_02: _app.getValueFor("property_Note_StandingOneArmDumbbellShoulderPress_Week_02", "")
    property string property_Note_StandingOneArmDumbbellShoulderPress_Week_03: _app.getValueFor("property_Note_StandingOneArmDumbbellShoulderPress_Week_03", "")
    property string property_Note_StandingOneArmDumbbellShoulderPress_Week_04: _app.getValueFor("property_Note_StandingOneArmDumbbellShoulderPress_Week_04", "")
    property string property_Note_StandingOneArmDumbbellShoulderPress_Week_05: _app.getValueFor("property_Note_StandingOneArmDumbbellShoulderPress_Week_05", "")
    property string property_Note_StandingOneArmDumbbellShoulderPress_Week_06: _app.getValueFor("property_Note_StandingOneArmDumbbellShoulderPress_Week_06", "")
    property string property_Note_StandingOneArmDumbbellShoulderPress_Week_07: _app.getValueFor("property_Note_StandingOneArmDumbbellShoulderPress_Week_07", "")
    property string property_Note_StandingOneArmDumbbellShoulderPress_Week_08: _app.getValueFor("property_Note_StandingOneArmDumbbellShoulderPress_Week_08", "")

    property string property_Note_StandingOverheadBarbellPress_Week_01: _app.getValueFor("property_Note_StandingOverheadBarbellPress_Week_01", "")
    property string property_Note_StandingOverheadBarbellPress_Week_02: _app.getValueFor("property_Note_StandingOverheadBarbellPress_Week_02", "")
    property string property_Note_StandingOverheadBarbellPress_Week_03: _app.getValueFor("property_Note_StandingOverheadBarbellPress_Week_03", "")
    property string property_Note_StandingOverheadBarbellPress_Week_04: _app.getValueFor("property_Note_StandingOverheadBarbellPress_Week_04", "")
    property string property_Note_StandingOverheadBarbellPress_Week_05: _app.getValueFor("property_Note_StandingOverheadBarbellPress_Week_05", "")
    property string property_Note_StandingOverheadBarbellPress_Week_06: _app.getValueFor("property_Note_StandingOverheadBarbellPress_Week_06", "")
    property string property_Note_StandingOverheadBarbellPress_Week_07: _app.getValueFor("property_Note_StandingOverheadBarbellPress_Week_07", "")
    property string property_Note_StandingOverheadBarbellPress_Week_08: _app.getValueFor("property_Note_StandingOverheadBarbellPress_Week_08", "")

    property string property_Note_StandingWideGripUprightRows_Week_01: _app.getValueFor("property_Note_StandingWideGripUprightRows_Week_01", "")
    property string property_Note_StandingWideGripUprightRows_Week_02: _app.getValueFor("property_Note_StandingWideGripUprightRows_Week_02", "")
    property string property_Note_StandingWideGripUprightRows_Week_03: _app.getValueFor("property_Note_StandingWideGripUprightRows_Week_03", "")
    property string property_Note_StandingWideGripUprightRows_Week_04: _app.getValueFor("property_Note_StandingWideGripUprightRows_Week_04", "")
    property string property_Note_StandingWideGripUprightRows_Week_05: _app.getValueFor("property_Note_StandingWideGripUprightRows_Week_05", "")
    property string property_Note_StandingWideGripUprightRows_Week_06: _app.getValueFor("property_Note_StandingWideGripUprightRows_Week_06", "")
    property string property_Note_StandingWideGripUprightRows_Week_07: _app.getValueFor("property_Note_StandingWideGripUprightRows_Week_07", "")
    property string property_Note_StandingWideGripUprightRows_Week_08: _app.getValueFor("property_Note_StandingWideGripUprightRows_Week_08", "")

    property string property_Note_SumoDeadlift_Week_01: _app.getValueFor("property_Note_SumoDeadlift_Week_01", "")
    property string property_Note_SumoDeadlift_Week_02: _app.getValueFor("property_Note_SumoDeadlift_Week_02", "")
    property string property_Note_SumoDeadlift_Week_03: _app.getValueFor("property_Note_SumoDeadlift_Week_03", "")
    property string property_Note_SumoDeadlift_Week_04: _app.getValueFor("property_Note_SumoDeadlift_Week_04", "")
    property string property_Note_SumoDeadlift_Week_05: _app.getValueFor("property_Note_SumoDeadlift_Week_05", "")
    property string property_Note_SumoDeadlift_Week_06: _app.getValueFor("property_Note_SumoDeadlift_Week_06", "")
    property string property_Note_SumoDeadlift_Week_07: _app.getValueFor("property_Note_SumoDeadlift_Week_07", "")
    property string property_Note_SumoDeadlift_Week_08: _app.getValueFor("property_Note_SumoDeadlift_Week_08", "")

    property string property_Note_TBarRows_Week_01: _app.getValueFor("property_Note_TBarRows_Week_01", "")
    property string property_Note_TBarRows_Week_02: _app.getValueFor("property_Note_TBarRows_Week_02", "")
    property string property_Note_TBarRows_Week_03: _app.getValueFor("property_Note_TBarRows_Week_03", "")
    property string property_Note_TBarRows_Week_04: _app.getValueFor("property_Note_TBarRows_Week_04", "")
    property string property_Note_TBarRows_Week_05: _app.getValueFor("property_Note_TBarRows_Week_05", "")
    property string property_Note_TBarRows_Week_06: _app.getValueFor("property_Note_TBarRows_Week_06", "")
    property string property_Note_TBarRows_Week_07: _app.getValueFor("property_Note_TBarRows_Week_07", "")
    property string property_Note_TBarRows_Week_08: _app.getValueFor("property_Note_TBarRows_Week_08", "")

    property string property_Note_ThighAbductor_Week_01: _app.getValueFor("property_Note_ThighAbductor_Week_01", "")
    property string property_Note_ThighAbductor_Week_02: _app.getValueFor("property_Note_ThighAbductor_Week_02", "")
    property string property_Note_ThighAbductor_Week_03: _app.getValueFor("property_Note_ThighAbductor_Week_03", "")
    property string property_Note_ThighAbductor_Week_04: _app.getValueFor("property_Note_ThighAbductor_Week_04", "")
    property string property_Note_ThighAbductor_Week_05: _app.getValueFor("property_Note_ThighAbductor_Week_05", "")
    property string property_Note_ThighAbductor_Week_06: _app.getValueFor("property_Note_ThighAbductor_Week_06", "")
    property string property_Note_ThighAbductor_Week_07: _app.getValueFor("property_Note_ThighAbductor_Week_07", "")
    property string property_Note_ThighAbductor_Week_08: _app.getValueFor("property_Note_ThighAbductor_Week_08", "")

    property string property_Note_ThighAdductor_Week_01: _app.getValueFor("property_Note_ThighAdductor_Week_01", "")
    property string property_Note_ThighAdductor_Week_02: _app.getValueFor("property_Note_ThighAdductor_Week_02", "")
    property string property_Note_ThighAdductor_Week_03: _app.getValueFor("property_Note_ThighAdductor_Week_03", "")
    property string property_Note_ThighAdductor_Week_04: _app.getValueFor("property_Note_ThighAdductor_Week_04", "")
    property string property_Note_ThighAdductor_Week_05: _app.getValueFor("property_Note_ThighAdductor_Week_05", "")
    property string property_Note_ThighAdductor_Week_06: _app.getValueFor("property_Note_ThighAdductor_Week_06", "")
    property string property_Note_ThighAdductor_Week_07: _app.getValueFor("property_Note_ThighAdductor_Week_07", "")
    property string property_Note_ThighAdductor_Week_08: _app.getValueFor("property_Note_ThighAdductor_Week_08", "")

    property string property_Note_TricepsDips_Week_01: _app.getValueFor("property_Note_TricepsDips_Week_01", "")
    property string property_Note_TricepsDips_Week_02: _app.getValueFor("property_Note_TricepsDips_Week_02", "")
    property string property_Note_TricepsDips_Week_03: _app.getValueFor("property_Note_TricepsDips_Week_03", "")
    property string property_Note_TricepsDips_Week_04: _app.getValueFor("property_Note_TricepsDips_Week_04", "")
    property string property_Note_TricepsDips_Week_05: _app.getValueFor("property_Note_TricepsDips_Week_05", "")
    property string property_Note_TricepsDips_Week_06: _app.getValueFor("property_Note_TricepsDips_Week_06", "")
    property string property_Note_TricepsDips_Week_07: _app.getValueFor("property_Note_TricepsDips_Week_07", "")
    property string property_Note_TricepsDips_Week_08: _app.getValueFor("property_Note_TricepsDips_Week_08", "")

    property string property_Note_NoteTricepsDips_Week_01: _app.getValueFor("property_Note_NoteTricepsDips_Week_01", "")
    property string property_Note_NoteTricepsDips_Week_02: _app.getValueFor("property_Note_NoteTricepsDips_Week_02", "")
    property string property_Note_NoteTricepsDips_Week_03: _app.getValueFor("property_Note_NoteTricepsDips_Week_03", "")
    property string property_Note_NoteTricepsDips_Week_04: _app.getValueFor("property_Note_NoteTricepsDips_Week_04", "")
    property string property_Note_NoteTricepsDips_Week_05: _app.getValueFor("property_Note_NoteTricepsDips_Week_05", "")
    property string property_Note_NoteTricepsDips_Week_06: _app.getValueFor("property_Note_NoteTricepsDips_Week_06", "")
    property string property_Note_NoteTricepsDips_Week_07: _app.getValueFor("property_Note_NoteTricepsDips_Week_07", "")
    property string property_Note_NoteTricepsDips_Week_08: _app.getValueFor("property_Note_NoteTricepsDips_Week_08", "")

    property string property_Note_NoteWideGripOverhandChinUps_Week_01: _app.getValueFor("property_Note_NoteWideGripOverhandChinUps_Week_01", "")
    property string property_Note_NoteWideGripOverhandChinUps_Week_02: _app.getValueFor("property_Note_NoteWideGripOverhandChinUps_Week_02", "")
    property string property_Note_NoteWideGripOverhandChinUps_Week_03: _app.getValueFor("property_Note_NoteWideGripOverhandChinUps_Week_03", "")
    property string property_Note_NoteWideGripOverhandChinUps_Week_04: _app.getValueFor("property_Note_NoteWideGripOverhandChinUps_Week_04", "")
    property string property_Note_NoteWideGripOverhandChinUps_Week_05: _app.getValueFor("property_Note_NoteWideGripOverhandChinUps_Week_05", "")
    property string property_Note_NoteWideGripOverhandChinUps_Week_06: _app.getValueFor("property_Note_NoteWideGripOverhandChinUps_Week_06", "")
    property string property_Note_NoteWideGripOverhandChinUps_Week_07: _app.getValueFor("property_Note_NoteWideGripOverhandChinUps_Week_07", "")
    property string property_Note_NoteWideGripOverhandChinUps_Week_08: _app.getValueFor("property_Note_NoteWideGripOverhandChinUps_Week_08", "")

    property string property_Note_WideGripOverhandChinUps_Week_01: _app.getValueFor("property_Note_WideGripOverhandChinUps_Week_01", "")
    property string property_Note_WideGripOverhandChinUps_Week_02: _app.getValueFor("property_Note_WideGripOverhandChinUps_Week_02", "")
    property string property_Note_WideGripOverhandChinUps_Week_03: _app.getValueFor("property_Note_WideGripOverhandChinUps_Week_03", "")
    property string property_Note_WideGripOverhandChinUps_Week_04: _app.getValueFor("property_Note_WideGripOverhandChinUps_Week_04", "")
    property string property_Note_WideGripOverhandChinUps_Week_05: _app.getValueFor("property_Note_WideGripOverhandChinUps_Week_05", "")
    property string property_Note_WideGripOverhandChinUps_Week_06: _app.getValueFor("property_Note_WideGripOverhandChinUps_Week_06", "")
    property string property_Note_WideGripOverhandChinUps_Week_07: _app.getValueFor("property_Note_WideGripOverhandChinUps_Week_07", "")
    property string property_Note_WideGripOverhandChinUps_Week_08: _app.getValueFor("property_Note_WideGripOverhandChinUps_Week_08", "")

    property string property_Note_WideGripStandingBarbellBicepsCurl_Week_01: _app.getValueFor("property_Note_WideGripStandingBarbellBicepsCurl_Week_01", "")
    property string property_Note_WideGripStandingBarbellBicepsCurl_Week_02: _app.getValueFor("property_Note_WideGripStandingBarbellBicepsCurl_Week_02", "")
    property string property_Note_WideGripStandingBarbellBicepsCurl_Week_03: _app.getValueFor("property_Note_WideGripStandingBarbellBicepsCurl_Week_03", "")
    property string property_Note_WideGripStandingBarbellBicepsCurl_Week_04: _app.getValueFor("property_Note_WideGripStandingBarbellBicepsCurl_Week_04", "")
    property string property_Note_WideGripStandingBarbellBicepsCurl_Week_05: _app.getValueFor("property_Note_WideGripStandingBarbellBicepsCurl_Week_05", "")
    property string property_Note_WideGripStandingBarbellBicepsCurl_Week_06: _app.getValueFor("property_Note_WideGripStandingBarbellBicepsCurl_Week_06", "")
    property string property_Note_WideGripStandingBarbellBicepsCurl_Week_07: _app.getValueFor("property_Note_WideGripStandingBarbellBicepsCurl_Week_07", "")
    property string property_Note_WideGripStandingBarbellBicepsCurl_Week_08: _app.getValueFor("property_Note_WideGripStandingBarbellBicepsCurl_Week_08", "")

    property string property_Note_WideGripStandingEZBarCur_Week_01: _app.getValueFor("property_Note_WideGripStandingEZBarCur_Week_01", "")
    property string property_Note_WideGripStandingEZBarCur_Week_02: _app.getValueFor("property_Note_WideGripStandingEZBarCur_Week_02", "")
    property string property_Note_WideGripStandingEZBarCur_Week_03: _app.getValueFor("property_Note_WideGripStandingEZBarCur_Week_03", "")
    property string property_Note_WideGripStandingEZBarCur_Week_04: _app.getValueFor("property_Note_WideGripStandingEZBarCur_Week_04", "")
    property string property_Note_WideGripStandingEZBarCur_Week_05: _app.getValueFor("property_Note_WideGripStandingEZBarCur_Week_05", "")
    property string property_Note_WideGripStandingEZBarCur_Week_06: _app.getValueFor("property_Note_WideGripStandingEZBarCur_Week_06", "")
    property string property_Note_WideGripStandingEZBarCur_Week_07: _app.getValueFor("property_Note_WideGripStandingEZBarCur_Week_07", "")
    property string property_Note_WideGripStandingEZBarCur_Week_08: _app.getValueFor("property_Note_WideGripStandingEZBarCur_Week_08", "")

    property string property_Note_WideOverhandGripLatPulldown_Week_01: _app.getValueFor("property_Note_WideOverhandGripLatPulldown_Week_01", "")
    property string property_Note_WideOverhandGripLatPulldown_Week_02: _app.getValueFor("property_Note_WideOverhandGripLatPulldown_Week_02", "")
    property string property_Note_WideOverhandGripLatPulldown_Week_03: _app.getValueFor("property_Note_WideOverhandGripLatPulldown_Week_03", "")
    property string property_Note_WideOverhandGripLatPulldown_Week_04: _app.getValueFor("property_Note_WideOverhandGripLatPulldown_Week_04", "")
    property string property_Note_WideOverhandGripLatPulldown_Week_05: _app.getValueFor("property_Note_WideOverhandGripLatPulldown_Week_05", "")
    property string property_Note_WideOverhandGripLatPulldown_Week_06: _app.getValueFor("property_Note_WideOverhandGripLatPulldown_Week_06", "")
    property string property_Note_WideOverhandGripLatPulldown_Week_07: _app.getValueFor("property_Note_WideOverhandGripLatPulldown_Week_07", "")
    property string property_Note_WideOverhandGripLatPulldown_Week_08: _app.getValueFor("property_Note_WideOverhandGripLatPulldown_Week_08", "")
    //******************************************************************************************************************************************

    // property for weight exercises
    property real property_Weight_AbWheelRollOuts_Week_01: _app.getValueFor("property_Weight_AbWheelRollOuts_Week_01", null)
    property real property_Weight_AbWheelRollOuts_Week_02: _app.getValueFor("property_Weight_AbWheelRollOuts_Week_02", null)
    property real property_Weight_AbWheelRollOuts_Week_03: _app.getValueFor("property_Weight_AbWheelRollOuts_Week_03", null)
    property real property_Weight_AbWheelRollOuts_Week_04: _app.getValueFor("property_Weight_AbWheelRollOuts_Week_04", null)
    property real property_Weight_AbWheelRollOuts_Week_05: _app.getValueFor("property_Weight_AbWheelRollOuts_Week_05", null)
    property real property_Weight_AbWheelRollOuts_Week_06: _app.getValueFor("property_Weight_AbWheelRollOuts_Week_06", null)
    property real property_Weight_AbWheelRollOuts_Week_07: _app.getValueFor("property_Weight_AbWheelRollOuts_Week_07", null)
    property real property_Weight_AbWheelRollOuts_Week_08: _app.getValueFor("property_Weight_AbWheelRollOuts_Week_08", null)

    property real property_Weight_BarbellBackSquats_Week_01: _app.getValueFor("property_Weight_BarbellBackSquats_Week_01", (property_Max_BarbellBackSquats / 100) * 75)
    property real property_Weight_BarbellBackSquats_Week_02: _app.getValueFor("property_Weight_BarbellBackSquats_Week_02", (property_Max_BarbellBackSquats / 100) * 80)
    property real property_Weight_BarbellBackSquats_Week_03: _app.getValueFor("property_Weight_BarbellBackSquats_Week_03", (property_Max_BarbellBackSquats / 100) * 85)
    property real property_Weight_BarbellBackSquats_Week_04: _app.getValueFor("property_Weight_BarbellBackSquats_Week_04", (property_Max_BarbellBackSquats / 100) * 90)
    property real property_Weight_BarbellBackSquats_Week_05: _app.getValueFor("property_Weight_BarbellBackSquats_Week_05", (property_Max_BarbellBackSquats / 100) * 95)
    property real property_Weight_BarbellBackSquats_Week_06: _app.getValueFor("property_Weight_BarbellBackSquats_Week_06", null)
    property real property_Weight_BarbellBackSquats_Week_07: _app.getValueFor("property_Weight_BarbellBackSquats_Week_07", (property_Max_BarbellBackSquats / 100) * 100)
    property real property_Weight_BarbellBackSquats_Week_08: _app.getValueFor("property_Weight_BarbellBackSquats_Week_08",(property_Max_BarbellBackSquats / 100) * 50)

    property real property_Weight_BarbellBenchFrontSquats_Week_01: _app.getValueFor("property_Weight_BarbellBenchFrontSquats_Week_01", null)
    property real property_Weight_BarbellBenchFrontSquats_Week_02: _app.getValueFor("property_Weight_BarbellBenchFrontSquats_Week_02", null)
    property real property_Weight_BarbellBenchFrontSquats_Week_03: _app.getValueFor("property_Weight_BarbellBenchFrontSquats_Week_03", null)
    property real property_Weight_BarbellBenchFrontSquats_Week_04: _app.getValueFor("property_Weight_BarbellBenchFrontSquats_Week_04", null)
    property real property_Weight_BarbellBenchFrontSquats_Week_05: _app.getValueFor("property_Weight_BarbellBenchFrontSquats_Week_05", null)
    property real property_Weight_BarbellBenchFrontSquats_Week_06: _app.getValueFor("property_Weight_BarbellBenchFrontSquats_Week_06", null)
    property real property_Weight_BarbellBenchFrontSquats_Week_07: _app.getValueFor("property_Weight_BarbellBenchFrontSquats_Week_07", null)
    property real property_Weight_BarbellBenchFrontSquats_Week_08: _app.getValueFor("property_Weight_BarbellBenchFrontSquats_Week_08", null)

    property real property_Weight_BarbellDeadlifts_Week_01: _app.getValueFor("property_Weight_BarbellDeadlifts_Week_01", (property_Max_BarbellDeadlifts / 100) * 75)
    property real property_Weight_BarbellDeadlifts_Week_02: _app.getValueFor("property_Weight_BarbellDeadlifts_Week_02", (property_Max_BarbellDeadlifts / 100) * 80)
    property real property_Weight_BarbellDeadlifts_Week_03: _app.getValueFor("property_Weight_BarbellDeadlifts_Week_03", (property_Max_BarbellDeadlifts / 100) * 85)
    property real property_Weight_BarbellDeadlifts_Week_04: _app.getValueFor("property_Weight_BarbellDeadlifts_Week_04", (property_Max_BarbellDeadlifts / 100) * 90)
    property real property_Weight_BarbellDeadlifts_Week_05: _app.getValueFor("property_Weight_BarbellDeadlifts_Week_05", (property_Max_BarbellDeadlifts / 100) * 95)
    property real property_Weight_BarbellDeadlifts_Week_06: _app.getValueFor("property_Weight_BarbellDeadlifts_Week_06", null)
    property real property_Weight_BarbellDeadlifts_Week_07: _app.getValueFor("property_Weight_BarbellDeadlifts_Week_07", (property_Max_BarbellDeadlifts / 100) * 100)
    property real property_Weight_BarbellDeadlifts_Week_08: _app.getValueFor("property_Weight_BarbellDeadlifts_Week_08", (property_Max_BarbellDeadlifts / 100) * 50)

    property real property_Weight_BarbellFrontSquats_Week_01: _app.getValueFor("property_Weight_BarbellFrontSquats_Week_01", null)
    property real property_Weight_BarbellFrontSquats_Week_02: _app.getValueFor("property_Weight_BarbellFrontSquats_Week_02", null)
    property real property_Weight_BarbellFrontSquats_Week_03: _app.getValueFor("property_Weight_BarbellFrontSquats_Week_03", null)
    property real property_Weight_BarbellFrontSquats_Week_04: _app.getValueFor("property_Weight_BarbellFrontSquats_Week_04", null)
    property real property_Weight_BarbellFrontSquats_Week_05: _app.getValueFor("property_Weight_BarbellFrontSquats_Week_05", null)
    property real property_Weight_BarbellFrontSquats_Week_06: _app.getValueFor("property_Weight_BarbellFrontSquats_Week_06", null)
    property real property_Weight_BarbellFrontSquats_Week_07: _app.getValueFor("property_Weight_BarbellFrontSquats_Week_07", null)
    property real property_Weight_BarbellFrontSquats_Week_08: _app.getValueFor("property_Weight_BarbellFrontSquats_Week_08", null)

    property real property_Weight_BarbellGoodMornings_Week_01: _app.getValueFor("property_Weight_BarbellGoodMornings_Week_01", null)
    property real property_Weight_BarbellGoodMornings_Week_02: _app.getValueFor("property_Weight_BarbellGoodMornings_Week_02", null)
    property real property_Weight_BarbellGoodMornings_Week_03: _app.getValueFor("property_Weight_BarbellGoodMornings_Week_03", null)
    property real property_Weight_BarbellGoodMornings_Week_04: _app.getValueFor("property_Weight_BarbellGoodMornings_Week_04", null)
    property real property_Weight_BarbellGoodMornings_Week_05: _app.getValueFor("property_Weight_BarbellGoodMornings_Week_05", null)
    property real property_Weight_BarbellGoodMornings_Week_06: _app.getValueFor("property_Weight_BarbellGoodMornings_Week_06", null)
    property real property_Weight_BarbellGoodMornings_Week_07: _app.getValueFor("property_Weight_BarbellGoodMornings_Week_07", null)
    property real property_Weight_BarbellGoodMornings_Week_08: _app.getValueFor("property_Weight_BarbellGoodMornings_Week_08", null)

    property real property_Weight_BarbellHipThrust_Week_01: _app.getValueFor("property_Weight_BarbellHipThrust_Week_01", null)
    property real property_Weight_BarbellHipThrust_Week_02: _app.getValueFor("property_Weight_BarbellHipThrust_Week_02", null)
    property real property_Weight_BarbellHipThrust_Week_03: _app.getValueFor("property_Weight_BarbellHipThrust_Week_03", null)
    property real property_Weight_BarbellHipThrust_Week_04: _app.getValueFor("property_Weight_BarbellHipThrust_Week_04", null)
    property real property_Weight_BarbellHipThrust_Week_05: _app.getValueFor("property_Weight_BarbellHipThrust_Week_05", null)
    property real property_Weight_BarbellHipThrust_Week_06: _app.getValueFor("property_Weight_BarbellHipThrust_Week_06", null)
    property real property_Weight_BarbellHipThrust_Week_07: _app.getValueFor("property_Weight_BarbellHipThrust_Week_07", null)
    property real property_Weight_BarbellHipThrust_Week_08: _app.getValueFor("property_Weight_BarbellHipThrust_Week_08", null)

    property real property_Weight_BarbellRackPulls_Week_01: _app.getValueFor("property_Weight_BarbellRackPulls_Week_01", null)
    property real property_Weight_BarbellRackPulls_Week_02: _app.getValueFor("property_Weight_BarbellRackPulls_Week_02", null)
    property real property_Weight_BarbellRackPulls_Week_03: _app.getValueFor("property_Weight_BarbellRackPulls_Week_03", null)
    property real property_Weight_BarbellRackPulls_Week_04: _app.getValueFor("property_Weight_BarbellRackPulls_Week_04", null)
    property real property_Weight_BarbellRackPulls_Week_05: _app.getValueFor("property_Weight_BarbellRackPulls_Week_05", null)
    property real property_Weight_BarbellRackPulls_Week_06: _app.getValueFor("property_Weight_BarbellRackPulls_Week_06", null)
    property real property_Weight_BarbellRackPulls_Week_07: _app.getValueFor("property_Weight_BarbellRackPulls_Week_07", null)
    property real property_Weight_BarbellRackPulls_Week_08: _app.getValueFor("property_Weight_BarbellRackPulls_Week_08", null)

    property real property_Weight_BarbellStiffLegDeadlifts_Week_01: _app.getValueFor("property_Weight_BarbellStiffLegDeadlifts_Week_01", null)
    property real property_Weight_BarbellStiffLegDeadlifts_Week_02: _app.getValueFor("property_Weight_BarbellStiffLegDeadlifts_Week_02", null)
    property real property_Weight_BarbellStiffLegDeadlifts_Week_03: _app.getValueFor("property_Weight_BarbellStiffLegDeadlifts_Week_03", null)
    property real property_Weight_BarbellStiffLegDeadlifts_Week_04: _app.getValueFor("property_Weight_BarbellStiffLegDeadlifts_Week_04", null)
    property real property_Weight_BarbellStiffLegDeadlifts_Week_05: _app.getValueFor("property_Weight_BarbellStiffLegDeadlifts_Week_05", null)
    property real property_Weight_BarbellStiffLegDeadlifts_Week_06: _app.getValueFor("property_Weight_BarbellStiffLegDeadlifts_Week_06", null)
    property real property_Weight_BarbellStiffLegDeadlifts_Week_07: _app.getValueFor("property_Weight_BarbellStiffLegDeadlifts_Week_07", null)
    property real property_Weight_BarbellStiffLegDeadlifts_Week_08: _app.getValueFor("property_Weight_BarbellStiffLegDeadlifts_Week_08", null)

    property real property_Weight_BicepsCurlEZBar_Week_01: _app.getValueFor("property_Weight_BicepsCurlEZBar_Week_01", null)
    property real property_Weight_BicepsCurlEZBar_Week_02: _app.getValueFor("property_Weight_BicepsCurlEZBar_Week_02", null)
    property real property_Weight_BicepsCurlEZBar_Week_03: _app.getValueFor("property_Weight_BicepsCurlEZBar_Week_03", null)
    property real property_Weight_BicepsCurlEZBar_Week_04: _app.getValueFor("property_Weight_BicepsCurlEZBar_Week_04", null)
    property real property_Weight_BicepsCurlEZBar_Week_05: _app.getValueFor("property_Weight_BicepsCurlEZBar_Week_05", null)
    property real property_Weight_BicepsCurlEZBar_Week_06: _app.getValueFor("property_Weight_BicepsCurlEZBar_Week_06", null)
    property real property_Weight_BicepsCurlEZBar_Week_07: _app.getValueFor("property_Weight_BicepsCurlEZBar_Week_07", null)
    property real property_Weight_BicepsCurlEZBar_Week_08: _app.getValueFor("property_Weight_BicepsCurlEZBar_Week_08", null)

    property real property_Weight_BicepsCurlMachine_Week_01: _app.getValueFor("property_Weight_BicepsCurlMachine_Week_01", null)
    property real property_Weight_BicepsCurlMachine_Week_02: _app.getValueFor("property_Weight_BicepsCurlMachine_Week_02", null)
    property real property_Weight_BicepsCurlMachine_Week_03: _app.getValueFor("property_Weight_BicepsCurlMachine_Week_03", null)
    property real property_Weight_BicepsCurlMachine_Week_04: _app.getValueFor("property_Weight_BicepsCurlMachine_Week_04", null)
    property real property_Weight_BicepsCurlMachine_Week_05: _app.getValueFor("property_Weight_BicepsCurlMachine_Week_05", null)
    property real property_Weight_BicepsCurlMachine_Week_06: _app.getValueFor("property_Weight_BicepsCurlMachine_Week_06", null)
    property real property_Weight_BicepsCurlMachine_Week_07: _app.getValueFor("property_Weight_BicepsCurlMachine_Week_07", null)
    property real property_Weight_BicepsCurlMachine_Week_08: _app.getValueFor("property_Weight_BicepsCurlMachine_Week_08", null)

    property real property_Weight_CableBarTricepsPushdown_Week_01: _app.getValueFor("property_Weight_CableBarTricepsPushdown_Week_01", null)
    property real property_Weight_CableBarTricepsPushdown_Week_02: _app.getValueFor("property_Weight_CableBarTricepsPushdown_Week_02", null)
    property real property_Weight_CableBarTricepsPushdown_Week_03: _app.getValueFor("property_Weight_CableBarTricepsPushdown_Week_03", null)
    property real property_Weight_CableBarTricepsPushdown_Week_04: _app.getValueFor("property_Weight_CableBarTricepsPushdown_Week_04", null)
    property real property_Weight_CableBarTricepsPushdown_Week_05: _app.getValueFor("property_Weight_CableBarTricepsPushdown_Week_05", null)
    property real property_Weight_CableBarTricepsPushdown_Week_06: _app.getValueFor("property_Weight_CableBarTricepsPushdown_Week_06", null)
    property real property_Weight_CableBarTricepsPushdown_Week_07: _app.getValueFor("property_Weight_CableBarTricepsPushdown_Week_07", null)
    property real property_Weight_CableBarTricepsPushdown_Week_08: _app.getValueFor("property_Weight_CableBarTricepsPushdown_Week_08", null)

    property real property_Weight_CableTricepsRopePushdowns_Week_01: _app.getValueFor("property_Weight_CableTricepsRopePushdowns_Week_01", null)
    property real property_Weight_CableTricepsRopePushdowns_Week_02: _app.getValueFor("property_Weight_CableTricepsRopePushdowns_Week_02", null)
    property real property_Weight_CableTricepsRopePushdowns_Week_03: _app.getValueFor("property_Weight_CableTricepsRopePushdowns_Week_03", null)
    property real property_Weight_CableTricepsRopePushdowns_Week_04: _app.getValueFor("property_Weight_CableTricepsRopePushdowns_Week_04", null)
    property real property_Weight_CableTricepsRopePushdowns_Week_05: _app.getValueFor("property_Weight_CableTricepsRopePushdowns_Week_05", null)
    property real property_Weight_CableTricepsRopePushdowns_Week_06: _app.getValueFor("property_Weight_CableTricepsRopePushdowns_Week_06", null)
    property real property_Weight_CableTricepsRopePushdowns_Week_07: _app.getValueFor("property_Weight_CableTricepsRopePushdowns_Week_07", null)
    property real property_Weight_CableTricepsRopePushdowns_Week_08: _app.getValueFor("property_Weight_CableTricepsRopePushdowns_Week_08", null)

    property real property_Weight_ClockPushUps_Week_01: _app.getValueFor("property_Weight_ClockPushUps_Week_01", null)
    property real property_Weight_ClockPushUps_Week_02: _app.getValueFor("property_Weight_ClockPushUps_Week_02", null)
    property real property_Weight_ClockPushUps_Week_03: _app.getValueFor("property_Weight_ClockPushUps_Week_03", null)
    property real property_Weight_ClockPushUps_Week_04: _app.getValueFor("property_Weight_ClockPushUps_Week_04", null)
    property real property_Weight_ClockPushUps_Week_05: _app.getValueFor("property_Weight_ClockPushUps_Week_05", null)
    property real property_Weight_ClockPushUps_Week_06: _app.getValueFor("property_Weight_ClockPushUps_Week_06", null)
    property real property_Weight_ClockPushUps_Week_07: _app.getValueFor("property_Weight_ClockPushUps_Week_07", null)
    property real property_Weight_ClockPushUps_Week_08: _app.getValueFor("property_Weight_ClockPushUps_Week_08", null)

    property real property_Weight_DeficitDeadlifts_Week_01: _app.getValueFor("property_Weight_DeficitDeadlifts_Week_01", null)
    property real property_Weight_DeficitDeadlifts_Week_02: _app.getValueFor("property_Weight_DeficitDeadlifts_Week_02", null)
    property real property_Weight_DeficitDeadlifts_Week_03: _app.getValueFor("property_Weight_DeficitDeadlifts_Week_03", null)
    property real property_Weight_DeficitDeadlifts_Week_04: _app.getValueFor("property_Weight_DeficitDeadlifts_Week_04", null)
    property real property_Weight_DeficitDeadlifts_Week_05: _app.getValueFor("property_Weight_DeficitDeadlifts_Week_05", null)
    property real property_Weight_DeficitDeadlifts_Week_06: _app.getValueFor("property_Weight_DeficitDeadlifts_Week_06", null)
    property real property_Weight_DeficitDeadlifts_Week_07: _app.getValueFor("property_Weight_DeficitDeadlifts_Week_07", null)
    property real property_Weight_DeficitDeadlifts_Week_08: _app.getValueFor("property_Weight_DeficitDeadlifts_Week_08", null)

    property real property_Weight_DumbbellLungess_Week_01: _app.getValueFor("property_Weight_DumbbellLungess_Week_01", null)
    property real property_Weight_DumbbellLungess_Week_02: _app.getValueFor("property_Weight_DumbbellLungess_Week_02", null)
    property real property_Weight_DumbbellLungess_Week_03: _app.getValueFor("property_Weight_DumbbellLungess_Week_03", null)
    property real property_Weight_DumbbellLungess_Week_04: _app.getValueFor("property_Weight_DumbbellLungess_Week_04", null)
    property real property_Weight_DumbbellLungess_Week_05: _app.getValueFor("property_Weight_DumbbellLungess_Week_05", null)
    property real property_Weight_DumbbellLungess_Week_06: _app.getValueFor("property_Weight_DumbbellLungess_Week_06", null)
    property real property_Weight_DumbbellLungess_Week_07: _app.getValueFor("property_Weight_DumbbellLungess_Week_07", null)
    property real property_Weight_DumbbellLungess_Week_08: _app.getValueFor("property_Weight_DumbbellLungess_Week_08", null)

    property real property_Weight_FlatBarbellChestPress_Week_01: _app.getValueFor("property_Weight_FlatBarbellChestPress_Week_01", (property_Max_FlatBarbellChestPress / 100) * 75)
    property real property_Weight_FlatBarbellChestPress_Week_02: _app.getValueFor("property_Weight_FlatBarbellChestPress_Week_02", (property_Max_FlatBarbellChestPress / 100) * 80)
    property real property_Weight_FlatBarbellChestPress_Week_03: _app.getValueFor("property_Weight_FlatBarbellChestPress_Week_03", (property_Max_FlatBarbellChestPress / 100) * 85)
    property real property_Weight_FlatBarbellChestPress_Week_04: _app.getValueFor("property_Weight_FlatBarbellChestPress_Week_04", (property_Max_FlatBarbellChestPress / 100) * 90)
    property real property_Weight_FlatBarbellChestPress_Week_05: _app.getValueFor("property_Weight_FlatBarbellChestPress_Week_05", (property_Max_FlatBarbellChestPress / 100) * 95)
    property real property_Weight_FlatBarbellChestPress_Week_06: _app.getValueFor("property_Weight_FlatBarbellChestPress_Week_06", null)
    property real property_Weight_FlatBarbellChestPress_Week_07: _app.getValueFor("property_Weight_FlatBarbellChestPress_Week_07", (property_Max_FlatBarbellChestPress / 100) * 100)
    property real property_Weight_FlatBarbellChestPress_Week_08: _app.getValueFor("property_Weight_FlatBarbellChestPress_Week_08", (property_Max_FlatBarbellChestPress / 100) * 50)

    property real property_Weight_FlatCableFly_Week_01: _app.getValueFor("property_Weight_FlatCableFly_Week_01", null)
    property real property_Weight_FlatCableFly_Week_02: _app.getValueFor("property_Weight_FlatCableFly_Week_02", null)
    property real property_Weight_FlatCableFly_Week_03: _app.getValueFor("property_Weight_FlatCableFly_Week_03", null)
    property real property_Weight_FlatCableFly_Week_04: _app.getValueFor("property_Weight_FlatCableFly_Week_04", null)
    property real property_Weight_FlatCableFly_Week_05: _app.getValueFor("property_Weight_FlatCableFly_Week_05", null)
    property real property_Weight_FlatCableFly_Week_06: _app.getValueFor("property_Weight_FlatCableFly_Week_06", null)
    property real property_Weight_FlatCableFly_Week_07: _app.getValueFor("property_Weight_FlatCableFly_Week_07", null)
    property real property_Weight_FlatCableFly_Week_08: _app.getValueFor("property_Weight_FlatCableFly_Week_08", null)

    property real property_Weight_FlatDumbbellFly_Week_01: _app.getValueFor("property_Weight_FlatDumbbellFly_Week_01", null)
    property real property_Weight_FlatDumbbellFly_Week_02: _app.getValueFor("property_Weight_FlatDumbbellFly_Week_02", null)
    property real property_Weight_FlatDumbbellFly_Week_03: _app.getValueFor("property_Weight_FlatDumbbellFly_Week_03", null)
    property real property_Weight_FlatDumbbellFly_Week_04: _app.getValueFor("property_Weight_FlatDumbbellFly_Week_04", null)
    property real property_Weight_FlatDumbbellFly_Week_05: _app.getValueFor("property_Weight_FlatDumbbellFly_Week_05", null)
    property real property_Weight_FlatDumbbellFly_Week_06: _app.getValueFor("property_Weight_FlatDumbbellFly_Week_06", null)
    property real property_Weight_FlatDumbbellFly_Week_07: _app.getValueFor("property_Weight_FlatDumbbellFly_Week_07", null)
    property real property_Weight_FlatDumbbellFly_Week_08: _app.getValueFor("property_Weight_FlatDumbbellFly_Week_08", null)

    property real property_Weight_FlatDumbbellChestPress_Week_01: _app.getValueFor("property_Weight_FlatDumbbellChestPress_Week_01", null)
    property real property_Weight_FlatDumbbellChestPress_Week_02: _app.getValueFor("property_Weight_FlatDumbbellChestPress_Week_02", null)
    property real property_Weight_FlatDumbbellChestPress_Week_03: _app.getValueFor("property_Weight_FlatDumbbellChestPress_Week_03", null)
    property real property_Weight_FlatDumbbellChestPress_Week_04: _app.getValueFor("property_Weight_FlatDumbbellChestPress_Week_04", null)
    property real property_Weight_FlatDumbbellChestPress_Week_05: _app.getValueFor("property_Weight_FlatDumbbellChestPress_Week_05", null)
    property real property_Weight_FlatDumbbellChestPress_Week_06: _app.getValueFor("property_Weight_FlatDumbbellChestPress_Week_06", null)
    property real property_Weight_FlatDumbbellChestPress_Week_07: _app.getValueFor("property_Weight_FlatDumbbellChestPress_Week_07", null)
    property real property_Weight_FlatDumbbellChestPress_Week_08: _app.getValueFor("property_Weight_FlatDumbbellChestPress_Week_08", null)

    property real property_Weight_GluteHamRaise_Week_01: _app.getValueFor("property_Weight_GluteHamRaise_Week_01", null)
    property real property_Weight_GluteHamRaise_Week_02: _app.getValueFor("property_Weight_GluteHamRaise_Week_02", null)
    property real property_Weight_GluteHamRaise_Week_03: _app.getValueFor("property_Weight_GluteHamRaise_Week_03", null)
    property real property_Weight_GluteHamRaise_Week_04: _app.getValueFor("property_Weight_GluteHamRaise_Week_04", null)
    property real property_Weight_GluteHamRaise_Week_05: _app.getValueFor("property_Weight_GluteHamRaise_Week_05", null)
    property real property_Weight_GluteHamRaise_Week_06: _app.getValueFor("property_Weight_GluteHamRaise_Week_06", null)
    property real property_Weight_GluteHamRaise_Week_07: _app.getValueFor("property_Weight_GluteHamRaise_Week_07", null)
    property real property_Weight_GluteHamRaise_Week_08: _app.getValueFor("property_Weight_GluteHamRaise_Week_08", null)

    property real property_Weight_GobletSquats_Week_01: _app.getValueFor("property_Weight_GobletSquats_Week_01", null)
    property real property_Weight_GobletSquats_Week_02: _app.getValueFor("property_Weight_GobletSquats_Week_02", null)
    property real property_Weight_GobletSquats_Week_03: _app.getValueFor("property_Weight_GobletSquats_Week_03", null)
    property real property_Weight_GobletSquats_Week_04: _app.getValueFor("property_Weight_GobletSquats_Week_04", null)
    property real property_Weight_GobletSquats_Week_05: _app.getValueFor("property_Weight_GobletSquats_Week_05", null)
    property real property_Weight_GobletSquats_Week_06: _app.getValueFor("property_Weight_GobletSquats_Week_06", null)
    property real property_Weight_GobletSquats_Week_07: _app.getValueFor("property_Weight_GobletSquats_Week_07", null)
    property real property_Weight_GobletSquats_Week_08: _app.getValueFor("property_Weight_GobletSquats_Week_08", null)

    property real property_Weight_ChestDips_Week_01: _app.getValueFor("property_Weight_ChestDips_Week_01", null)
    property real property_Weight_ChestDips_Week_02: _app.getValueFor("property_Weight_ChestDips_Week_02", null)
    property real property_Weight_ChestDips_Week_03: _app.getValueFor("property_Weight_ChestDips_Week_03", null)
    property real property_Weight_ChestDips_Week_04: _app.getValueFor("property_Weight_ChestDips_Week_04", null)
    property real property_Weight_ChestDips_Week_05: _app.getValueFor("property_Weight_ChestDips_Week_05", null)
    property real property_Weight_ChestDips_Week_06: _app.getValueFor("property_Weight_ChestDips_Week_06", null)
    property real property_Weight_ChestDips_Week_07: _app.getValueFor("property_Weight_ChestDips_Week_07", null)
    property real property_Weight_ChestDips_Week_08: _app.getValueFor("property_Weight_ChestDips_Week_08", null)

    property real property_Weight_InclineBarbellChestPress_Week_01: _app.getValueFor("property_Weight_InclineBarbellChestPress_Week_01", null)
    property real property_Weight_InclineBarbellChestPress_Week_02: _app.getValueFor("property_Weight_InclineBarbellChestPress_Week_02", null)
    property real property_Weight_InclineBarbellChestPress_Week_03: _app.getValueFor("property_Weight_InclineBarbellChestPress_Week_03", null)
    property real property_Weight_InclineBarbellChestPress_Week_04: _app.getValueFor("property_Weight_InclineBarbellChestPress_Week_04", null)
    property real property_Weight_InclineBarbellChestPress_Week_05: _app.getValueFor("property_Weight_InclineBarbellChestPress_Week_05", null)
    property real property_Weight_InclineBarbellChestPress_Week_06: _app.getValueFor("property_Weight_InclineBarbellChestPress_Week_06", null)
    property real property_Weight_InclineBarbellChestPress_Week_07: _app.getValueFor("property_Weight_InclineBarbellChestPress_Week_07", null)
    property real property_Weight_InclineBarbellChestPress_Week_08: _app.getValueFor("property_Weight_InclineBarbellChestPress_Week_08", null)

    property real property_Weight_InclineBenchDumbbellRows_Week_01: _app.getValueFor("property_Weight_InclineBenchDumbbellRows_Week_01", null)
    property real property_Weight_InclineBenchDumbbellRows_Week_02: _app.getValueFor("property_Weight_InclineBenchDumbbellRows_Week_02", null)
    property real property_Weight_InclineBenchDumbbellRows_Week_03: _app.getValueFor("property_Weight_InclineBenchDumbbellRows_Week_03", null)
    property real property_Weight_InclineBenchDumbbellRows_Week_04: _app.getValueFor("property_Weight_InclineBenchDumbbellRows_Week_04", null)
    property real property_Weight_InclineBenchDumbbellRows_Week_05: _app.getValueFor("property_Weight_InclineBenchDumbbellRows_Week_05", null)
    property real property_Weight_InclineBenchDumbbellRows_Week_06: _app.getValueFor("property_Weight_InclineBenchDumbbellRows_Week_06", null)
    property real property_Weight_InclineBenchDumbbellRows_Week_07: _app.getValueFor("property_Weight_InclineBenchDumbbellRows_Week_07", null)
    property real property_Weight_InclineBenchDumbbellRows_Week_08: _app.getValueFor("property_Weight_InclineBenchDumbbellRows_Week_08", null)

    property real property_Weight_InclineDumbbellFly_Week_01: _app.getValueFor("property_Weight_InclineDumbbellFly_Week_01", null)
    property real property_Weight_InclineDumbbellFly_Week_02: _app.getValueFor("property_Weight_InclineDumbbellFly_Week_02", null)
    property real property_Weight_InclineDumbbellFly_Week_03: _app.getValueFor("property_Weight_InclineDumbbellFly_Week_03", null)
    property real property_Weight_InclineDumbbellFly_Week_04: _app.getValueFor("property_Weight_InclineDumbbellFly_Week_04", null)
    property real property_Weight_InclineDumbbellFly_Week_05: _app.getValueFor("property_Weight_InclineDumbbellFly_Week_05", null)
    property real property_Weight_InclineDumbbellFly_Week_06: _app.getValueFor("property_Weight_InclineDumbbellFly_Week_06", null)
    property real property_Weight_InclineDumbbellFly_Week_07: _app.getValueFor("property_Weight_InclineDumbbellFly_Week_07", null)
    property real property_Weight_InclineDumbbellFly_Week_08: _app.getValueFor("property_Weight_InclineDumbbellFly_Week_08", null)

    property real property_Weight_InclineDumbbellChestPress_Week_01: _app.getValueFor("property_Weight_InclineDumbbellChestPress_Week_01", null)
    property real property_Weight_InclineDumbbellChestPress_Week_02: _app.getValueFor("property_Weight_InclineDumbbellChestPress_Week_02", null)
    property real property_Weight_InclineDumbbellChestPress_Week_03: _app.getValueFor("property_Weight_InclineDumbbellChestPress_Week_03", null)
    property real property_Weight_InclineDumbbellChestPress_Week_04: _app.getValueFor("property_Weight_InclineDumbbellChestPress_Week_04", null)
    property real property_Weight_InclineDumbbellChestPress_Week_05: _app.getValueFor("property_Weight_InclineDumbbellChestPress_Week_05", null)
    property real property_Weight_InclineDumbbellChestPress_Week_06: _app.getValueFor("property_Weight_InclineDumbbellChestPress_Week_06", null)
    property real property_Weight_InclineDumbbellChestPress_Week_07: _app.getValueFor("property_Weight_InclineDumbbellChestPress_Week_07", null)
    property real property_Weight_InclineDumbbellChestPress_Week_08: _app.getValueFor("property_Weight_InclineDumbbellChestPress_Week_08", null)

    property real property_Weight_LegExtensions_Week_01: _app.getValueFor("property_Weight_LegExtensions_Week_01", null)
    property real property_Weight_LegExtensions_Week_02: _app.getValueFor("property_Weight_LegExtensions_Week_02", null)
    property real property_Weight_LegExtensions_Week_03: _app.getValueFor("property_Weight_LegExtensions_Week_03", null)
    property real property_Weight_LegExtensions_Week_04: _app.getValueFor("property_Weight_LegExtensions_Week_04", null)
    property real property_Weight_LegExtensions_Week_05: _app.getValueFor("property_Weight_LegExtensions_Week_05", null)
    property real property_Weight_LegExtensions_Week_06: _app.getValueFor("property_Weight_LegExtensions_Week_06", null)
    property real property_Weight_LegExtensions_Week_07: _app.getValueFor("property_Weight_LegExtensions_Week_07", null)
    property real property_Weight_LegExtensions_Week_08: _app.getValueFor("property_Weight_LegExtensions_Week_08", null)

    property real property_Weight_LegPressMachine_Week_01: _app.getValueFor("property_Weight_LegPressMachine_Week_01", null)
    property real property_Weight_LegPressMachine_Week_02: _app.getValueFor("property_Weight_LegPressMachine_Week_02", null)
    property real property_Weight_LegPressMachine_Week_03: _app.getValueFor("property_Weight_LegPressMachine_Week_03", null)
    property real property_Weight_LegPressMachine_Week_04: _app.getValueFor("property_Weight_LegPressMachine_Week_04", null)
    property real property_Weight_LegPressMachine_Week_05: _app.getValueFor("property_Weight_LegPressMachine_Week_05", null)
    property real property_Weight_LegPressMachine_Week_06: _app.getValueFor("property_Weight_LegPressMachine_Week_06", null)
    property real property_Weight_LegPressMachine_Week_07: _app.getValueFor("property_Weight_LegPressMachine_Week_07", null)
    property real property_Weight_LegPressMachine_Week_08: _app.getValueFor("property_Weight_LegPressMachine_Week_08", null)

    property real property_Weight_LyingBarbellTricepsExtensions_Week_01: _app.getValueFor("property_Weight_LyingBarbellTricepsExtensions_Week_01", null)
    property real property_Weight_LyingBarbellTricepsExtensions_Week_02: _app.getValueFor("property_Weight_LyingBarbellTricepsExtensions_Week_02", null)
    property real property_Weight_LyingBarbellTricepsExtensions_Week_03: _app.getValueFor("property_Weight_LyingBarbellTricepsExtensions_Week_03", null)
    property real property_Weight_LyingBarbellTricepsExtensions_Week_04: _app.getValueFor("property_Weight_LyingBarbellTricepsExtensions_Week_04", null)
    property real property_Weight_LyingBarbellTricepsExtensions_Week_05: _app.getValueFor("property_Weight_LyingBarbellTricepsExtensions_Week_05", null)
    property real property_Weight_LyingBarbellTricepsExtensions_Week_06: _app.getValueFor("property_Weight_LyingBarbellTricepsExtensions_Week_06", null)
    property real property_Weight_LyingBarbellTricepsExtensions_Week_07: _app.getValueFor("property_Weight_LyingBarbellTricepsExtensions_Week_07", null)
    property real property_Weight_LyingBarbellTricepsExtensions_Week_08: _app.getValueFor("property_Weight_LyingBarbellTricepsExtensions_Week_08", null)

    property real property_Weight_LyingDumbbellTricepsExtensions_Week_01: _app.getValueFor("property_Weight_LyingDumbbellTricepsExtensions_Week_01", null)
    property real property_Weight_LyingDumbbellTricepsExtensions_Week_02: _app.getValueFor("property_Weight_LyingDumbbellTricepsExtensions_Week_02", null)
    property real property_Weight_LyingDumbbellTricepsExtensions_Week_03: _app.getValueFor("property_Weight_LyingDumbbellTricepsExtensions_Week_03", null)
    property real property_Weight_LyingDumbbellTricepsExtensions_Week_04: _app.getValueFor("property_Weight_LyingDumbbellTricepsExtensions_Week_04", null)
    property real property_Weight_LyingDumbbellTricepsExtensions_Week_05: _app.getValueFor("property_Weight_LyingDumbbellTricepsExtensions_Week_05", null)
    property real property_Weight_LyingDumbbellTricepsExtensions_Week_06: _app.getValueFor("property_Weight_LyingDumbbellTricepsExtensions_Week_06", null)
    property real property_Weight_LyingDumbbellTricepsExtensions_Week_07: _app.getValueFor("property_Weight_LyingDumbbellTricepsExtensions_Week_07", null)
    property real property_Weight_LyingDumbbellTricepsExtensions_Week_08: _app.getValueFor("property_Weight_LyingDumbbellTricepsExtensions_Week_08", null)

    property real property_Weight_LyingHamstringCurls_Week_01: _app.getValueFor("property_Weight_LyingHamstringCurls_Week_01", null)
    property real property_Weight_LyingHamstringCurls_Week_02: _app.getValueFor("property_Weight_LyingHamstringCurls_Week_02", null)
    property real property_Weight_LyingHamstringCurls_Week_03: _app.getValueFor("property_Weight_LyingHamstringCurls_Week_03", null)
    property real property_Weight_LyingHamstringCurls_Week_04: _app.getValueFor("property_Weight_LyingHamstringCurls_Week_04", null)
    property real property_Weight_LyingHamstringCurls_Week_05: _app.getValueFor("property_Weight_LyingHamstringCurls_Week_05", null)
    property real property_Weight_LyingHamstringCurls_Week_06: _app.getValueFor("property_Weight_LyingHamstringCurls_Week_06", null)
    property real property_Weight_LyingHamstringCurls_Week_07: _app.getValueFor("property_Weight_LyingHamstringCurls_Week_07", null)
    property real property_Weight_LyingHamstringCurls_Week_08: _app.getValueFor("property_Weight_LyingHamstringCurls_Week_08", null)

    property real property_Weight_LyingInclineBarbellBicepsCurl_Week_01: _app.getValueFor("property_Weight_LyingInclineBarbellBicepsCurl_Week_01", null)
    property real property_Weight_LyingInclineBarbellBicepsCurl_Week_02: _app.getValueFor("property_Weight_LyingInclineBarbellBicepsCurl_Week_02", null)
    property real property_Weight_LyingInclineBarbellBicepsCurl_Week_03: _app.getValueFor("property_Weight_LyingInclineBarbellBicepsCurl_Week_03", null)
    property real property_Weight_LyingInclineBarbellBicepsCurl_Week_04: _app.getValueFor("property_Weight_LyingInclineBarbellBicepsCurl_Week_04", null)
    property real property_Weight_LyingInclineBarbellBicepsCurl_Week_05: _app.getValueFor("property_Weight_LyingInclineBarbellBicepsCurl_Week_05", null)
    property real property_Weight_LyingInclineBarbellBicepsCurl_Week_06: _app.getValueFor("property_Weight_LyingInclineBarbellBicepsCurl_Week_06", null)
    property real property_Weight_LyingInclineBarbellBicepsCurl_Week_07: _app.getValueFor("property_Weight_LyingInclineBarbellBicepsCurl_Week_07", null)
    property real property_Weight_LyingInclineBarbellBicepsCurl_Week_08: _app.getValueFor("property_Weight_LyingInclineBarbellBicepsCurl_Week_08", null)

    property real property_Weight_NarrowUnderhandGripLatPulldown_Week_01: _app.getValueFor("property_Weight_NarrowUnderhandGripLatPulldown_Week_01", null)
    property real property_Weight_NarrowUnderhandGripLatPulldown_Week_02: _app.getValueFor("property_Weight_NarrowUnderhandGripLatPulldown_Week_02", null)
    property real property_Weight_NarrowUnderhandGripLatPulldown_Week_03: _app.getValueFor("property_Weight_NarrowUnderhandGripLatPulldown_Week_03", null)
    property real property_Weight_NarrowUnderhandGripLatPulldown_Week_04: _app.getValueFor("property_Weight_NarrowUnderhandGripLatPulldown_Week_04", null)
    property real property_Weight_NarrowUnderhandGripLatPulldown_Week_05: _app.getValueFor("property_Weight_NarrowUnderhandGripLatPulldown_Week_05", null)
    property real property_Weight_NarrowUnderhandGripLatPulldown_Week_06: _app.getValueFor("property_Weight_NarrowUnderhandGripLatPulldown_Week_06", null)
    property real property_Weight_NarrowUnderhandGripLatPulldown_Week_07: _app.getValueFor("property_Weight_NarrowUnderhandGripLatPulldown_Week_07", null)
    property real property_Weight_NarrowUnderhandGripLatPulldown_Week_08: _app.getValueFor("property_Weight_NarrowUnderhandGripLatPulldown_Week_08", null)

    property real property_Weight_OneArmDumbbellRowOnBench_Week_01: _app.getValueFor("property_Weight_OneArmDumbbellRowOnBench_Week_01", null)
    property real property_Weight_OneArmDumbbellRowOnBench_Week_02: _app.getValueFor("property_Weight_OneArmDumbbellRowOnBench_Week_02", null)
    property real property_Weight_OneArmDumbbellRowOnBench_Week_03: _app.getValueFor("property_Weight_OneArmDumbbellRowOnBench_Week_03", null)
    property real property_Weight_OneArmDumbbellRowOnBench_Week_04: _app.getValueFor("property_Weight_OneArmDumbbellRowOnBench_Week_04", null)
    property real property_Weight_OneArmDumbbellRowOnBench_Week_05: _app.getValueFor("property_Weight_OneArmDumbbellRowOnBench_Week_05", null)
    property real property_Weight_OneArmDumbbellRowOnBench_Week_06: _app.getValueFor("property_Weight_OneArmDumbbellRowOnBench_Week_06", null)
    property real property_Weight_OneArmDumbbellRowOnBench_Week_07: _app.getValueFor("property_Weight_OneArmDumbbellRowOnBench_Week_07", null)
    property real property_Weight_OneArmDumbbellRowOnBench_Week_08: _app.getValueFor("property_Weight_OneArmDumbbellRowOnBench_Week_08", null)

    property real property_Weight_OneLegStiffDeadlift_Week_01: _app.getValueFor("property_Weight_OneLegStiffDeadlift_Week_01", null)
    property real property_Weight_OneLegStiffDeadlift_Week_02: _app.getValueFor("property_Weight_OneLegStiffDeadlift_Week_02", null)
    property real property_Weight_OneLegStiffDeadlift_Week_03: _app.getValueFor("property_Weight_OneLegStiffDeadlift_Week_03", null)
    property real property_Weight_OneLegStiffDeadlift_Week_04: _app.getValueFor("property_Weight_OneLegStiffDeadlift_Week_04", null)
    property real property_Weight_OneLegStiffDeadlift_Week_05: _app.getValueFor("property_Weight_OneLegStiffDeadlift_Week_05", null)
    property real property_Weight_OneLegStiffDeadlift_Week_06: _app.getValueFor("property_Weight_OneLegStiffDeadlift_Week_06", null)
    property real property_Weight_OneLegStiffDeadlift_Week_07: _app.getValueFor("property_Weight_OneLegStiffDeadlift_Week_07", null)
    property real property_Weight_OneLegStiffDeadlift_Week_08: _app.getValueFor("property_Weight_OneLegStiffDeadlift_Week_08", null)

    property real property_Weight_OverhandGripBarbellBentOverRows_Week_01: _app.getValueFor("property_Weight_OverhandGripBarbellBentOverRows_Week_01", null)
    property real property_Weight_OverhandGripBarbellBentOverRows_Week_02: _app.getValueFor("property_Weight_OverhandGripBarbellBentOverRows_Week_02", null)
    property real property_Weight_OverhandGripBarbellBentOverRows_Week_03: _app.getValueFor("property_Weight_OverhandGripBarbellBentOverRows_Week_03", null)
    property real property_Weight_OverhandGripBarbellBentOverRows_Week_04: _app.getValueFor("property_Weight_OverhandGripBarbellBentOverRows_Week_04", null)
    property real property_Weight_OverhandGripBarbellBentOverRows_Week_05: _app.getValueFor("property_Weight_OverhandGripBarbellBentOverRows_Week_05", null)
    property real property_Weight_OverhandGripBarbellBentOverRows_Week_06: _app.getValueFor("property_Weight_OverhandGripBarbellBentOverRows_Week_06", null)
    property real property_Weight_OverhandGripBarbellBentOverRows_Week_07: _app.getValueFor("property_Weight_OverhandGripBarbellBentOverRows_Week_07", null)
    property real property_Weight_OverhandGripBarbellBentOverRows_Week_08: _app.getValueFor("property_Weight_OverhandGripBarbellBentOverRows_Week_08", null)

    property real property_Weight_ReverseGripOneArmCableTricepsPushdowns_Week_01: _app.getValueFor("property_Weight_ReverseGripOneArmCableTricepsPushdowns_Week_01", null)
    property real property_Weight_ReverseGripOneArmCableTricepsPushdowns_Week_02: _app.getValueFor("property_Weight_ReverseGripOneArmCableTricepsPushdowns_Week_02", null)
    property real property_Weight_ReverseGripOneArmCableTricepsPushdowns_Week_03: _app.getValueFor("property_Weight_ReverseGripOneArmCableTricepsPushdowns_Week_03", null)
    property real property_Weight_ReverseGripOneArmCableTricepsPushdowns_Week_04: _app.getValueFor("property_Weight_ReverseGripOneArmCableTricepsPushdowns_Week_04", null)
    property real property_Weight_ReverseGripOneArmCableTricepsPushdowns_Week_05: _app.getValueFor("property_Weight_ReverseGripOneArmCableTricepsPushdowns_Week_05", null)
    property real property_Weight_ReverseGripOneArmCableTricepsPushdowns_Week_06: _app.getValueFor("property_Weight_ReverseGripOneArmCableTricepsPushdowns_Week_06", null)
    property real property_Weight_ReverseGripOneArmCableTricepsPushdowns_Week_07: _app.getValueFor("property_Weight_ReverseGripOneArmCableTricepsPushdowns_Week_07", null)
    property real property_Weight_ReverseGripOneArmCableTricepsPushdowns_Week_08: _app.getValueFor("property_Weight_ReverseGripOneArmCableTricepsPushdowns_Week_08", null)

    property real property_Weight_SeatedBarbbellBicepsCurl_Week_01: _app.getValueFor("property_Weight_SeatedBarbbellBicepsCurl_Week_01", null)
    property real property_Weight_SeatedBarbbellBicepsCurl_Week_02: _app.getValueFor("property_Weight_SeatedBarbbellBicepsCurl_Week_02", null)
    property real property_Weight_SeatedBarbbellBicepsCurl_Week_03: _app.getValueFor("property_Weight_SeatedBarbbellBicepsCurl_Week_03", null)
    property real property_Weight_SeatedBarbbellBicepsCurl_Week_04: _app.getValueFor("property_Weight_SeatedBarbbellBicepsCurl_Week_04", null)
    property real property_Weight_SeatedBarbbellBicepsCurl_Week_05: _app.getValueFor("property_Weight_SeatedBarbbellBicepsCurl_Week_05", null)
    property real property_Weight_SeatedBarbbellBicepsCurl_Week_06: _app.getValueFor("property_Weight_SeatedBarbbellBicepsCurl_Week_06", null)
    property real property_Weight_SeatedBarbbellBicepsCurl_Week_07: _app.getValueFor("property_Weight_SeatedBarbbellBicepsCurl_Week_07", null)
    property real property_Weight_SeatedBarbbellBicepsCurl_Week_08: _app.getValueFor("property_Weight_SeatedBarbbellBicepsCurl_Week_08", null)

    property real property_Weight_SeatedBarbellArnoldPress_Week_01: _app.getValueFor("property_Weight_SeatedBarbellArnoldPress_Week_01", null)
    property real property_Weight_SeatedBarbellArnoldPress_Week_02: _app.getValueFor("property_Weight_SeatedBarbellArnoldPress_Week_02", null)
    property real property_Weight_SeatedBarbellArnoldPress_Week_03: _app.getValueFor("property_Weight_SeatedBarbellArnoldPress_Week_03", null)
    property real property_Weight_SeatedBarbellArnoldPress_Week_04: _app.getValueFor("property_Weight_SeatedBarbellArnoldPress_Week_04", null)
    property real property_Weight_SeatedBarbellArnoldPress_Week_05: _app.getValueFor("property_Weight_SeatedBarbellArnoldPress_Week_05", null)
    property real property_Weight_SeatedBarbellArnoldPress_Week_06: _app.getValueFor("property_Weight_SeatedBarbellArnoldPress_Week_06", null)
    property real property_Weight_SeatedBarbellArnoldPress_Week_07: _app.getValueFor("property_Weight_SeatedBarbellArnoldPress_Week_07", null)
    property real property_Weight_SeatedBarbellArnoldPress_Week_08: _app.getValueFor("property_Weight_SeatedBarbellArnoldPress_Week_08", null)

    property real property_Weight_SeatedBarbellCalfRaises_Week_01: _app.getValueFor("property_Weight_SeatedBarbellCalfRaises_Week_01", null)
    property real property_Weight_SeatedBarbellCalfRaises_Week_02: _app.getValueFor("property_Weight_SeatedBarbellCalfRaises_Week_02", null)
    property real property_Weight_SeatedBarbellCalfRaises_Week_03: _app.getValueFor("property_Weight_SeatedBarbellCalfRaises_Week_03", null)
    property real property_Weight_SeatedBarbellCalfRaises_Week_04: _app.getValueFor("property_Weight_SeatedBarbellCalfRaises_Week_04", null)
    property real property_Weight_SeatedBarbellCalfRaises_Week_05: _app.getValueFor("property_Weight_SeatedBarbellCalfRaises_Week_05", null)
    property real property_Weight_SeatedBarbellCalfRaises_Week_06: _app.getValueFor("property_Weight_SeatedBarbellCalfRaises_Week_06", null)
    property real property_Weight_SeatedBarbellCalfRaises_Week_07: _app.getValueFor("property_Weight_SeatedBarbellCalfRaises_Week_07", null)
    property real property_Weight_SeatedBarbellCalfRaises_Week_08: _app.getValueFor("property_Weight_SeatedBarbellCalfRaises_Week_08", null)

    property real property_Weight_SeatedBarbellShoulderPress_Week_01: _app.getValueFor("property_Weight_SeatedBarbellShoulderPress_Week_01", null)
    property real property_Weight_SeatedBarbellShoulderPress_Week_02: _app.getValueFor("property_Weight_SeatedBarbellShoulderPress_Week_02", null)
    property real property_Weight_SeatedBarbellShoulderPress_Week_03: _app.getValueFor("property_Weight_SeatedBarbellShoulderPress_Week_03", null)
    property real property_Weight_SeatedBarbellShoulderPress_Week_04: _app.getValueFor("property_Weight_SeatedBarbellShoulderPress_Week_04", null)
    property real property_Weight_SeatedBarbellShoulderPress_Week_05: _app.getValueFor("property_Weight_SeatedBarbellShoulderPress_Week_05", null)
    property real property_Weight_SeatedBarbellShoulderPress_Week_06: _app.getValueFor("property_Weight_SeatedBarbellShoulderPress_Week_06", null)
    property real property_Weight_SeatedBarbellShoulderPress_Week_07: _app.getValueFor("property_Weight_SeatedBarbellShoulderPress_Week_07", null)
    property real property_Weight_SeatedBarbellShoulderPress_Week_08: _app.getValueFor("property_Weight_SeatedBarbellShoulderPress_Week_08", null)

    property real property_Weight_SeatedCableRow_Week_01: _app.getValueFor("property_Weight_SeatedCableRow_Week_01", null)
    property real property_Weight_SeatedCableRow_Week_02: _app.getValueFor("property_Weight_SeatedCableRow_Week_02", null)
    property real property_Weight_SeatedCableRow_Week_03: _app.getValueFor("property_Weight_SeatedCableRow_Week_03", null)
    property real property_Weight_SeatedCableRow_Week_04: _app.getValueFor("property_Weight_SeatedCableRow_Week_04", null)
    property real property_Weight_SeatedCableRow_Week_05: _app.getValueFor("property_Weight_SeatedCableRow_Week_05", null)
    property real property_Weight_SeatedCableRow_Week_06: _app.getValueFor("property_Weight_SeatedCableRow_Week_06", null)
    property real property_Weight_SeatedCableRow_Week_07: _app.getValueFor("property_Weight_SeatedCableRow_Week_07", null)
    property real property_Weight_SeatedCableRow_Week_08: _app.getValueFor("property_Weight_SeatedCableRow_Week_08", null)

    property real property_Weight_SeatedDumbbellBicepsHammerCurls_Week_01: _app.getValueFor("property_Weight_SeatedDumbbellBicepsHammerCurls_Week_01", null)
    property real property_Weight_SeatedDumbbellBicepsHammerCurls_Week_02: _app.getValueFor("property_Weight_SeatedDumbbellBicepsHammerCurls_Week_02", null)
    property real property_Weight_SeatedDumbbellBicepsHammerCurls_Week_03: _app.getValueFor("property_Weight_SeatedDumbbellBicepsHammerCurls_Week_03", null)
    property real property_Weight_SeatedDumbbellBicepsHammerCurls_Week_04: _app.getValueFor("property_Weight_SeatedDumbbellBicepsHammerCurls_Week_04", null)
    property real property_Weight_SeatedDumbbellBicepsHammerCurls_Week_05: _app.getValueFor("property_Weight_SeatedDumbbellBicepsHammerCurls_Week_05", null)
    property real property_Weight_SeatedDumbbellBicepsHammerCurls_Week_06: _app.getValueFor("property_Weight_SeatedDumbbellBicepsHammerCurls_Week_06", null)
    property real property_Weight_SeatedDumbbellBicepsHammerCurls_Week_07: _app.getValueFor("property_Weight_SeatedDumbbellBicepsHammerCurls_Week_07", null)
    property real property_Weight_SeatedDumbbellBicepsHammerCurls_Week_08: _app.getValueFor("property_Weight_SeatedDumbbellBicepsHammerCurls_Week_08", null)

    property real property_Weight_SeatedDumbbellShoulderPress_Week_01: _app.getValueFor("property_Weight_SeatedDumbbellShoulderPress_Week_01", null)
    property real property_Weight_SeatedDumbbellShoulderPress_Week_02: _app.getValueFor("property_Weight_SeatedDumbbellShoulderPress_Week_02", null)
    property real property_Weight_SeatedDumbbellShoulderPress_Week_03: _app.getValueFor("property_Weight_SeatedDumbbellShoulderPress_Week_03", null)
    property real property_Weight_SeatedDumbbellShoulderPress_Week_04: _app.getValueFor("property_Weight_SeatedDumbbellShoulderPress_Week_04", null)
    property real property_Weight_SeatedDumbbellShoulderPress_Week_05: _app.getValueFor("property_Weight_SeatedDumbbellShoulderPress_Week_05", null)
    property real property_Weight_SeatedDumbbellShoulderPress_Week_06: _app.getValueFor("property_Weight_SeatedDumbbellShoulderPress_Week_06", null)
    property real property_Weight_SeatedDumbbellShoulderPress_Week_07: _app.getValueFor("property_Weight_SeatedDumbbellShoulderPress_Week_07", null)
    property real property_Weight_SeatedDumbbellShoulderPress_Week_08: _app.getValueFor("property_Weight_SeatedDumbbellShoulderPress_Week_08", null)

    property real property_Weight_SeatedDumbbellTricepsExtensions_Week_01: _app.getValueFor("property_Weight_SeatedDumbbellTricepsExtensions_Week_01", null)
    property real property_Weight_SeatedDumbbellTricepsExtensions_Week_02: _app.getValueFor("property_Weight_SeatedDumbbellTricepsExtensions_Week_02", null)
    property real property_Weight_SeatedDumbbellTricepsExtensions_Week_03: _app.getValueFor("property_Weight_SeatedDumbbellTricepsExtensions_Week_03", null)
    property real property_Weight_SeatedDumbbellTricepsExtensions_Week_04: _app.getValueFor("property_Weight_SeatedDumbbellTricepsExtensions_Week_04", null)
    property real property_Weight_SeatedDumbbellTricepsExtensions_Week_05: _app.getValueFor("property_Weight_SeatedDumbbellTricepsExtensions_Week_05", null)
    property real property_Weight_SeatedDumbbellTricepsExtensions_Week_06: _app.getValueFor("property_Weight_SeatedDumbbellTricepsExtensions_Week_06", null)
    property real property_Weight_SeatedDumbbellTricepsExtensions_Week_07: _app.getValueFor("property_Weight_SeatedDumbbellTricepsExtensions_Week_07", null)
    property real property_Weight_SeatedDumbbellTricepsExtensions_Week_08: _app.getValueFor("property_Weight_SeatedDumbbellTricepsExtensions_Week_08", null)

    property real property_Weight_SeatedInclineDumbbellBicepsCurl_Week_01: _app.getValueFor("property_Weight_SeatedInclineDumbbellBicepsCurl_Week_01", null)
    property real property_Weight_SeatedInclineDumbbellBicepsCurl_Week_02: _app.getValueFor("property_Weight_SeatedInclineDumbbellBicepsCurl_Week_02", null)
    property real property_Weight_SeatedInclineDumbbellBicepsCurl_Week_03: _app.getValueFor("property_Weight_SeatedInclineDumbbellBicepsCurl_Week_03", null)
    property real property_Weight_SeatedInclineDumbbellBicepsCurl_Week_04: _app.getValueFor("property_Weight_SeatedInclineDumbbellBicepsCurl_Week_04", null)
    property real property_Weight_SeatedInclineDumbbellBicepsCurl_Week_05: _app.getValueFor("property_Weight_SeatedInclineDumbbellBicepsCurl_Week_05", null)
    property real property_Weight_SeatedInclineDumbbellBicepsCurl_Week_06: _app.getValueFor("property_Weight_SeatedInclineDumbbellBicepsCurl_Week_06", null)
    property real property_Weight_SeatedInclineDumbbellBicepsCurl_Week_07: _app.getValueFor("property_Weight_SeatedInclineDumbbellBicepsCurl_Week_07", null)
    property real property_Weight_SeatedInclineDumbbellBicepsCurl_Week_08: _app.getValueFor("property_Weight_SeatedInclineDumbbellBicepsCurl_Week_08", null)

    property real property_Weight_SeatedMachineChestPress_Week_01: _app.getValueFor("property_Weight_SeatedMachineChestPress_Week_01", null)
    property real property_Weight_SeatedMachineChestPress_Week_02: _app.getValueFor("property_Weight_SeatedMachineChestPress_Week_02", null)
    property real property_Weight_SeatedMachineChestPress_Week_03: _app.getValueFor("property_Weight_SeatedMachineChestPress_Week_03", null)
    property real property_Weight_SeatedMachineChestPress_Week_04: _app.getValueFor("property_Weight_SeatedMachineChestPress_Week_04", null)
    property real property_Weight_SeatedMachineChestPress_Week_05: _app.getValueFor("property_Weight_SeatedMachineChestPress_Week_05", null)
    property real property_Weight_SeatedMachineChestPress_Week_06: _app.getValueFor("property_Weight_SeatedMachineChestPress_Week_06", null)
    property real property_Weight_SeatedMachineChestPress_Week_07: _app.getValueFor("property_Weight_SeatedMachineChestPress_Week_07", null)
    property real property_Weight_SeatedMachineChestPress_Week_08: _app.getValueFor("property_Weight_SeatedMachineChestPress_Week_08", null)

    property real property_Weight_SeatedOverheadBarbellPress_Week_01: _app.getValueFor("property_Weight_SeatedOverheadBarbellPress_Week_01", null)
    property real property_Weight_SeatedOverheadBarbellPress_Week_02: _app.getValueFor("property_Weight_SeatedOverheadBarbellPress_Week_02", null)
    property real property_Weight_SeatedOverheadBarbellPress_Week_03: _app.getValueFor("property_Weight_SeatedOverheadBarbellPress_Week_03", null)
    property real property_Weight_SeatedOverheadBarbellPress_Week_04: _app.getValueFor("property_Weight_SeatedOverheadBarbellPress_Week_04", null)
    property real property_Weight_SeatedOverheadBarbellPress_Week_05: _app.getValueFor("property_Weight_SeatedOverheadBarbellPress_Week_05", null)
    property real property_Weight_SeatedOverheadBarbellPress_Week_06: _app.getValueFor("property_Weight_SeatedOverheadBarbellPress_Week_06", null)
    property real property_Weight_SeatedOverheadBarbellPress_Week_07: _app.getValueFor("property_Weight_SeatedOverheadBarbellPress_Week_07", null)
    property real property_Weight_SeatedOverheadBarbellPress_Week_08: _app.getValueFor("property_Weight_SeatedOverheadBarbellPress_Week_08", null)

    property real property_Weight_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_01: _app.getValueFor("property_Weight_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_01", null)
    property real property_Weight_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_02: _app.getValueFor("property_Weight_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_02", null)
    property real property_Weight_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_03: _app.getValueFor("property_Weight_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_03", null)
    property real property_Weight_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_04: _app.getValueFor("property_Weight_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_04", null)
    property real property_Weight_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_05: _app.getValueFor("property_Weight_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_05", null)
    property real property_Weight_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_06: _app.getValueFor("property_Weight_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_06", null)
    property real property_Weight_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_07: _app.getValueFor("property_Weight_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_07", null)
    property real property_Weight_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_08: _app.getValueFor("property_Weight_SeatedTwoArmOverheadDumbbellTricepsExtensions_Week_08", null)

    property real property_Weight_SingleLegBarbellHipThrust_Week_01: _app.getValueFor("property_Weight_SingleLegBarbellHipThrust_Week_01", null)
    property real property_Weight_SingleLegBarbellHipThrust_Week_02: _app.getValueFor("property_Weight_SingleLegBarbellHipThrust_Week_02", null)
    property real property_Weight_SingleLegBarbellHipThrust_Week_03: _app.getValueFor("property_Weight_SingleLegBarbellHipThrust_Week_03", null)
    property real property_Weight_SingleLegBarbellHipThrust_Week_04: _app.getValueFor("property_Weight_SingleLegBarbellHipThrust_Week_04", null)
    property real property_Weight_SingleLegBarbellHipThrust_Week_05: _app.getValueFor("property_Weight_SingleLegBarbellHipThrust_Week_05", null)
    property real property_Weight_SingleLegBarbellHipThrust_Week_06: _app.getValueFor("property_Weight_SingleLegBarbellHipThrust_Week_06", null)
    property real property_Weight_SingleLegBarbellHipThrust_Week_07: _app.getValueFor("property_Weight_SingleLegBarbellHipThrust_Week_07", null)
    property real property_Weight_SingleLegBarbellHipThrust_Week_08: _app.getValueFor("property_Weight_SingleLegBarbellHipThrust_Week_08", null)

    property real property_Weight_SingleLegDumbbellSplitSquat_Week_01: _app.getValueFor("property_Weight_SingleLegDumbbellSplitSquat_Week_01", null)
    property real property_Weight_SingleLegDumbbellSplitSquat_Week_02: _app.getValueFor("property_Weight_SingleLegDumbbellSplitSquat_Week_02", null)
    property real property_Weight_SingleLegDumbbellSplitSquat_Week_03: _app.getValueFor("property_Weight_SingleLegDumbbellSplitSquat_Week_03", null)
    property real property_Weight_SingleLegDumbbellSplitSquat_Week_04: _app.getValueFor("property_Weight_SingleLegDumbbellSplitSquat_Week_04", null)
    property real property_Weight_SingleLegDumbbellSplitSquat_Week_05: _app.getValueFor("property_Weight_SingleLegDumbbellSplitSquat_Week_05", null)
    property real property_Weight_SingleLegDumbbellSplitSquat_Week_06: _app.getValueFor("property_Weight_SingleLegDumbbellSplitSquat_Week_06", null)
    property real property_Weight_SingleLegDumbbellSplitSquat_Week_07: _app.getValueFor("property_Weight_SingleLegDumbbellSplitSquat_Week_07", null)
    property real property_Weight_SingleLegDumbbellSplitSquat_Week_08: _app.getValueFor("property_Weight_SingleLegDumbbellSplitSquat_Week_08", null)

    property real property_Weight_StandingAlternateDumbbellBicepsCurls_Week_01: _app.getValueFor("property_Weight_StandingAlternateDumbbellBicepsCurls_Week_01", null)
    property real property_Weight_StandingAlternateDumbbellBicepsCurls_Week_02: _app.getValueFor("property_Weight_StandingAlternateDumbbellBicepsCurls_Week_02", null)
    property real property_Weight_StandingAlternateDumbbellBicepsCurls_Week_03: _app.getValueFor("property_Weight_StandingAlternateDumbbellBicepsCurls_Week_03", null)
    property real property_Weight_StandingAlternateDumbbellBicepsCurls_Week_04: _app.getValueFor("property_Weight_StandingAlternateDumbbellBicepsCurls_Week_04", null)
    property real property_Weight_StandingAlternateDumbbellBicepsCurls_Week_05: _app.getValueFor("property_Weight_StandingAlternateDumbbellBicepsCurls_Week_05", null)
    property real property_Weight_StandingAlternateDumbbellBicepsCurls_Week_06: _app.getValueFor("property_Weight_StandingAlternateDumbbellBicepsCurls_Week_06", null)
    property real property_Weight_StandingAlternateDumbbellBicepsCurls_Week_07: _app.getValueFor("property_Weight_StandingAlternateDumbbellBicepsCurls_Week_07", null)
    property real property_Weight_StandingAlternateDumbbellBicepsCurls_Week_08: _app.getValueFor("property_Weight_StandingAlternateDumbbellBicepsCurls_Week_08", null)

    property real property_Weight_StandingBarbellFrontRaises_Week_01: _app.getValueFor("property_Weight_StandingBarbellFrontRaises_Week_01", null)
    property real property_Weight_StandingBarbellFrontRaises_Week_02: _app.getValueFor("property_Weight_StandingBarbellFrontRaises_Week_02", null)
    property real property_Weight_StandingBarbellFrontRaises_Week_03: _app.getValueFor("property_Weight_StandingBarbellFrontRaises_Week_03", null)
    property real property_Weight_StandingBarbellFrontRaises_Week_04: _app.getValueFor("property_Weight_StandingBarbellFrontRaises_Week_04", null)
    property real property_Weight_StandingBarbellFrontRaises_Week_05: _app.getValueFor("property_Weight_StandingBarbellFrontRaises_Week_05", null)
    property real property_Weight_StandingBarbellFrontRaises_Week_06: _app.getValueFor("property_Weight_StandingBarbellFrontRaises_Week_06", null)
    property real property_Weight_StandingBarbellFrontRaises_Week_07: _app.getValueFor("property_Weight_StandingBarbellFrontRaises_Week_07", null)
    property real property_Weight_StandingBarbellFrontRaises_Week_08: _app.getValueFor("property_Weight_StandingBarbellFrontRaises_Week_08", null)

    property real property_Weight_StandingBarbellPushPress_Week_01: _app.getValueFor("property_Weight_StandingBarbellPushPress_Week_01", null)
    property real property_Weight_StandingBarbellPushPress_Week_02: _app.getValueFor("property_Weight_StandingBarbellPushPress_Week_02", null)
    property real property_Weight_StandingBarbellPushPress_Week_03: _app.getValueFor("property_Weight_StandingBarbellPushPress_Week_03", null)
    property real property_Weight_StandingBarbellPushPress_Week_04: _app.getValueFor("property_Weight_StandingBarbellPushPress_Week_04", null)
    property real property_Weight_StandingBarbellPushPress_Week_05: _app.getValueFor("property_Weight_StandingBarbellPushPress_Week_05", null)
    property real property_Weight_StandingBarbellPushPress_Week_06: _app.getValueFor("property_Weight_StandingBarbellPushPress_Week_06", null)
    property real property_Weight_StandingBarbellPushPress_Week_07: _app.getValueFor("property_Weight_StandingBarbellPushPress_Week_07", null)
    property real property_Weight_StandingBarbellPushPress_Week_08: _app.getValueFor("property_Weight_StandingBarbellPushPress_Week_08", null)

    property real property_Weight_StandingBentOverLateralRaises_Week_01: _app.getValueFor("property_Weight_StandingBentOverLateralRaises_Week_01", null)
    property real property_Weight_StandingBentOverLateralRaises_Week_02: _app.getValueFor("property_Weight_StandingBentOverLateralRaises_Week_02", null)
    property real property_Weight_StandingBentOverLateralRaises_Week_03: _app.getValueFor("property_Weight_StandingBentOverLateralRaises_Week_03", null)
    property real property_Weight_StandingBentOverLateralRaises_Week_04: _app.getValueFor("property_Weight_StandingBentOverLateralRaises_Week_04", null)
    property real property_Weight_StandingBentOverLateralRaises_Week_05: _app.getValueFor("property_Weight_StandingBentOverLateralRaises_Week_05", null)
    property real property_Weight_StandingBentOverLateralRaises_Week_06: _app.getValueFor("property_Weight_StandingBentOverLateralRaises_Week_06", null)
    property real property_Weight_StandingBentOverLateralRaises_Week_07: _app.getValueFor("property_Weight_StandingBentOverLateralRaises_Week_07", null)
    property real property_Weight_StandingBentOverLateralRaises_Week_08: _app.getValueFor("property_Weight_StandingBentOverLateralRaises_Week_08", null)

    property real property_Weight_StandingBicepsCableCurl_Week_01: _app.getValueFor("property_Weight_StandingBicepsCableCurl_Week_01", null)
    property real property_Weight_StandingBicepsCableCurl_Week_02: _app.getValueFor("property_Weight_StandingBicepsCableCurl_Week_02", null)
    property real property_Weight_StandingBicepsCableCurl_Week_03: _app.getValueFor("property_Weight_StandingBicepsCableCurl_Week_03", null)
    property real property_Weight_StandingBicepsCableCurl_Week_04: _app.getValueFor("property_Weight_StandingBicepsCableCurl_Week_04", null)
    property real property_Weight_StandingBicepsCableCurl_Week_05: _app.getValueFor("property_Weight_StandingBicepsCableCurl_Week_05", null)
    property real property_Weight_StandingBicepsCableCurl_Week_06: _app.getValueFor("property_Weight_StandingBicepsCableCurl_Week_06", null)
    property real property_Weight_StandingBicepsCableCurl_Week_07: _app.getValueFor("property_Weight_StandingBicepsCableCurl_Week_07", null)
    property real property_Weight_StandingBicepsCableCurl_Week_08: _app.getValueFor("property_Weight_StandingBicepsCableCurl_Week_08", null)

    property real property_Weight_StandingCableBarLatPushdown_Week_01: _app.getValueFor("property_Weight_StandingCableBarLatPushdown_Week_01", null)
    property real property_Weight_StandingCableBarLatPushdown_Week_02: _app.getValueFor("property_Weight_StandingCableBarLatPushdown_Week_02", null)
    property real property_Weight_StandingCableBarLatPushdown_Week_03: _app.getValueFor("property_Weight_StandingCableBarLatPushdown_Week_03", null)
    property real property_Weight_StandingCableBarLatPushdown_Week_04: _app.getValueFor("property_Weight_StandingCableBarLatPushdown_Week_04", null)
    property real property_Weight_StandingCableBarLatPushdown_Week_05: _app.getValueFor("property_Weight_StandingCableBarLatPushdown_Week_05", null)
    property real property_Weight_StandingCableBarLatPushdown_Week_06: _app.getValueFor("property_Weight_StandingCableBarLatPushdown_Week_06", null)
    property real property_Weight_StandingCableBarLatPushdown_Week_07: _app.getValueFor("property_Weight_StandingCableBarLatPushdown_Week_07", null)
    property real property_Weight_StandingCableBarLatPushdown_Week_08: _app.getValueFor("property_Weight_StandingCableBarLatPushdown_Week_08", null)

    property real property_Weight_StandingCableRearDeltFly_Week_01: _app.getValueFor("property_Weight_StandingCableRearDeltFly_Week_01", null)
    property real property_Weight_StandingCableRearDeltFly_Week_02: _app.getValueFor("property_Weight_StandingCableRearDeltFly_Week_02", null)
    property real property_Weight_StandingCableRearDeltFly_Week_03: _app.getValueFor("property_Weight_StandingCableRearDeltFly_Week_03", null)
    property real property_Weight_StandingCableRearDeltFly_Week_04: _app.getValueFor("property_Weight_StandingCableRearDeltFly_Week_04", null)
    property real property_Weight_StandingCableRearDeltFly_Week_05: _app.getValueFor("property_Weight_StandingCableRearDeltFly_Week_05", null)
    property real property_Weight_StandingCableRearDeltFly_Week_06: _app.getValueFor("property_Weight_StandingCableRearDeltFly_Week_06", null)
    property real property_Weight_StandingCableRearDeltFly_Week_07: _app.getValueFor("property_Weight_StandingCableRearDeltFly_Week_07", null)
    property real property_Weight_StandingCableRearDeltFly_Week_08: _app.getValueFor("property_Weight_StandingCableRearDeltFly_Week_08", null)

    property real property_Weight_StandingCableRearDeltRopePulls_Week_01: _app.getValueFor("property_Weight_StandingCableRearDeltRopePulls_Week_01", null)
    property real property_Weight_StandingCableRearDeltRopePulls_Week_02: _app.getValueFor("property_Weight_StandingCableRearDeltRopePulls_Week_02", null)
    property real property_Weight_StandingCableRearDeltRopePulls_Week_03: _app.getValueFor("property_Weight_StandingCableRearDeltRopePulls_Week_03", null)
    property real property_Weight_StandingCableRearDeltRopePulls_Week_04: _app.getValueFor("property_Weight_StandingCableRearDeltRopePulls_Week_04", null)
    property real property_Weight_StandingCableRearDeltRopePulls_Week_05: _app.getValueFor("property_Weight_StandingCableRearDeltRopePulls_Week_05", null)
    property real property_Weight_StandingCableRearDeltRopePulls_Week_06: _app.getValueFor("property_Weight_StandingCableRearDeltRopePulls_Week_06", null)
    property real property_Weight_StandingCableRearDeltRopePulls_Week_07: _app.getValueFor("property_Weight_StandingCableRearDeltRopePulls_Week_07", null)
    property real property_Weight_StandingCableRearDeltRopePulls_Week_08: _app.getValueFor("property_Weight_StandingCableRearDeltRopePulls_Week_08", null)

    property real property_Weight_StandingCableRopeHammerCurl_Week_01: _app.getValueFor("property_Weight_StandingCableRopeHammerCurl_Week_01", null)
    property real property_Weight_StandingCableRopeHammerCurl_Week_02: _app.getValueFor("property_Weight_StandingCableRopeHammerCurl_Week_02", null)
    property real property_Weight_StandingCableRopeHammerCurl_Week_03: _app.getValueFor("property_Weight_StandingCableRopeHammerCurl_Week_03", null)
    property real property_Weight_StandingCableRopeHammerCurl_Week_04: _app.getValueFor("property_Weight_StandingCableRopeHammerCurl_Week_04", null)
    property real property_Weight_StandingCableRopeHammerCurl_Week_05: _app.getValueFor("property_Weight_StandingCableRopeHammerCurl_Week_05", null)
    property real property_Weight_StandingCableRopeHammerCurl_Week_06: _app.getValueFor("property_Weight_StandingCableRopeHammerCurl_Week_06", null)
    property real property_Weight_StandingCableRopeHammerCurl_Week_07: _app.getValueFor("property_Weight_StandingCableRopeHammerCurl_Week_07", null)
    property real property_Weight_StandingCableRopeHammerCurl_Week_08: _app.getValueFor("property_Weight_StandingCableRopeHammerCurl_Week_08", null)

    property real property_Weight_StandingCalfRaisesMachine_Week_01: _app.getValueFor("property_Weight_StandingCalfRaisesMachine_Week_01", null)
    property real property_Weight_StandingCalfRaisesMachine_Week_02: _app.getValueFor("property_Weight_StandingCalfRaisesMachine_Week_02", null)
    property real property_Weight_StandingCalfRaisesMachine_Week_03: _app.getValueFor("property_Weight_StandingCalfRaisesMachine_Week_03", null)
    property real property_Weight_StandingCalfRaisesMachine_Week_04: _app.getValueFor("property_Weight_StandingCalfRaisesMachine_Week_04", null)
    property real property_Weight_StandingCalfRaisesMachine_Week_05: _app.getValueFor("property_Weight_StandingCalfRaisesMachine_Week_05", null)
    property real property_Weight_StandingCalfRaisesMachine_Week_06: _app.getValueFor("property_Weight_StandingCalfRaisesMachine_Week_06", null)
    property real property_Weight_StandingCalfRaisesMachine_Week_07: _app.getValueFor("property_Weight_StandingCalfRaisesMachine_Week_07", null)
    property real property_Weight_StandingCalfRaisesMachine_Week_08: _app.getValueFor("property_Weight_StandingCalfRaisesMachine_Week_08", null)

    property real property_Weight_StandingDumbbellBicepsHammerCurls_Week_01: _app.getValueFor("property_Weight_StandingDumbbellBicepsHammerCurls_Week_01", null)
    property real property_Weight_StandingDumbbellBicepsHammerCurls_Week_02: _app.getValueFor("property_Weight_StandingDumbbellBicepsHammerCurls_Week_02", null)
    property real property_Weight_StandingDumbbellBicepsHammerCurls_Week_03: _app.getValueFor("property_Weight_StandingDumbbellBicepsHammerCurls_Week_03", null)
    property real property_Weight_StandingDumbbellBicepsHammerCurls_Week_04: _app.getValueFor("property_Weight_StandingDumbbellBicepsHammerCurls_Week_04", null)
    property real property_Weight_StandingDumbbellBicepsHammerCurls_Week_05: _app.getValueFor("property_Weight_StandingDumbbellBicepsHammerCurls_Week_05", null)
    property real property_Weight_StandingDumbbellBicepsHammerCurls_Week_06: _app.getValueFor("property_Weight_StandingDumbbellBicepsHammerCurls_Week_06", null)
    property real property_Weight_StandingDumbbellBicepsHammerCurls_Week_07: _app.getValueFor("property_Weight_StandingDumbbellBicepsHammerCurls_Week_07", null)
    property real property_Weight_StandingDumbbellBicepsHammerCurls_Week_08: _app.getValueFor("property_Weight_StandingDumbbellBicepsHammerCurls_Week_08", null)

    property real property_Weight_StandingDumbbellFrontRaises_Week_01: _app.getValueFor("property_Weight_StandingDumbbellFrontRaises_Week_01", null)
    property real property_Weight_StandingDumbbellFrontRaises_Week_02: _app.getValueFor("property_Weight_StandingDumbbellFrontRaises_Week_02", null)
    property real property_Weight_StandingDumbbellFrontRaises_Week_03: _app.getValueFor("property_Weight_StandingDumbbellFrontRaises_Week_03", null)
    property real property_Weight_StandingDumbbellFrontRaises_Week_04: _app.getValueFor("property_Weight_StandingDumbbellFrontRaises_Week_04", null)
    property real property_Weight_StandingDumbbellFrontRaises_Week_05: _app.getValueFor("property_Weight_StandingDumbbellFrontRaises_Week_05", null)
    property real property_Weight_StandingDumbbellFrontRaises_Week_06: _app.getValueFor("property_Weight_StandingDumbbellFrontRaises_Week_06", null)
    property real property_Weight_StandingDumbbellFrontRaises_Week_07: _app.getValueFor("property_Weight_StandingDumbbellFrontRaises_Week_07", null)
    property real property_Weight_StandingDumbbellFrontRaises_Week_08: _app.getValueFor("property_Weight_StandingDumbbellFrontRaises_Week_08", null)

    property real property_Weight_StandingDumbbellInnerBicepsCurl_Week_01: _app.getValueFor("property_Weight_StandingDumbbellInnerBicepsCurl_Week_01", null)
    property real property_Weight_StandingDumbbellInnerBicepsCurl_Week_02: _app.getValueFor("property_Weight_StandingDumbbellInnerBicepsCurl_Week_02", null)
    property real property_Weight_StandingDumbbellInnerBicepsCurl_Week_03: _app.getValueFor("property_Weight_StandingDumbbellInnerBicepsCurl_Week_03", null)
    property real property_Weight_StandingDumbbellInnerBicepsCurl_Week_04: _app.getValueFor("property_Weight_StandingDumbbellInnerBicepsCurl_Week_04", null)
    property real property_Weight_StandingDumbbellInnerBicepsCurl_Week_05: _app.getValueFor("property_Weight_StandingDumbbellInnerBicepsCurl_Week_05", null)
    property real property_Weight_StandingDumbbellInnerBicepsCurl_Week_06: _app.getValueFor("property_Weight_StandingDumbbellInnerBicepsCurl_Week_06", null)
    property real property_Weight_StandingDumbbellInnerBicepsCurl_Week_07: _app.getValueFor("property_Weight_StandingDumbbellInnerBicepsCurl_Week_07", null)
    property real property_Weight_StandingDumbbellInnerBicepsCurl_Week_08: _app.getValueFor("property_Weight_StandingDumbbellInnerBicepsCurl_Week_08", null)

    property real property_Weight_StandingDumbbellLateralRaises_Week_01: _app.getValueFor("property_Weight_StandingDumbbellLateralRaises_Week_01", null)
    property real property_Weight_StandingDumbbellLateralRaises_Week_02: _app.getValueFor("property_Weight_StandingDumbbellLateralRaises_Week_02", null)
    property real property_Weight_StandingDumbbellLateralRaises_Week_03: _app.getValueFor("property_Weight_StandingDumbbellLateralRaises_Week_03", null)
    property real property_Weight_StandingDumbbellLateralRaises_Week_04: _app.getValueFor("property_Weight_StandingDumbbellLateralRaises_Week_04", null)
    property real property_Weight_StandingDumbbellLateralRaises_Week_05: _app.getValueFor("property_Weight_StandingDumbbellLateralRaises_Week_05", null)
    property real property_Weight_StandingDumbbellLateralRaises_Week_06: _app.getValueFor("property_Weight_StandingDumbbellLateralRaises_Week_06", null)
    property real property_Weight_StandingDumbbellLateralRaises_Week_07: _app.getValueFor("property_Weight_StandingDumbbellLateralRaises_Week_07", null)
    property real property_Weight_StandingDumbbellLateralRaises_Week_08: _app.getValueFor("property_Weight_StandingDumbbellLateralRaises_Week_08", null)

    property real property_Weight_StandingDumbbellShoulderPress_Week_01: _app.getValueFor("property_Weight_StandingDumbbellShoulderPress_Week_01", null)
    property real property_Weight_StandingDumbbellShoulderPress_Week_02: _app.getValueFor("property_Weight_StandingDumbbellShoulderPress_Week_02", null)
    property real property_Weight_StandingDumbbellShoulderPress_Week_03: _app.getValueFor("property_Weight_StandingDumbbellShoulderPress_Week_03", null)
    property real property_Weight_StandingDumbbellShoulderPress_Week_04: _app.getValueFor("property_Weight_StandingDumbbellShoulderPress_Week_04", null)
    property real property_Weight_StandingDumbbellShoulderPress_Week_05: _app.getValueFor("property_Weight_StandingDumbbellShoulderPress_Week_05", null)
    property real property_Weight_StandingDumbbellShoulderPress_Week_06: _app.getValueFor("property_Weight_StandingDumbbellShoulderPress_Week_06", null)
    property real property_Weight_StandingDumbbellShoulderPress_Week_07: _app.getValueFor("property_Weight_StandingDumbbellShoulderPress_Week_07", null)
    property real property_Weight_StandingDumbbellShoulderPress_Week_08: _app.getValueFor("property_Weight_StandingDumbbellShoulderPress_Week_08", null)

    property real property_Weight_StandingFrontBarbellShrugs_Week_01: _app.getValueFor("property_Weight_StandingFrontBarbellShrugs_Week_01", null)
    property real property_Weight_StandingFrontBarbellShrugs_Week_02: _app.getValueFor("property_Weight_StandingFrontBarbellShrugs_Week_02", null)
    property real property_Weight_StandingFrontBarbellShrugs_Week_03: _app.getValueFor("property_Weight_StandingFrontBarbellShrugs_Week_03", null)
    property real property_Weight_StandingFrontBarbellShrugs_Week_04: _app.getValueFor("property_Weight_StandingFrontBarbellShrugs_Week_04", null)
    property real property_Weight_StandingFrontBarbellShrugs_Week_05: _app.getValueFor("property_Weight_StandingFrontBarbellShrugs_Week_05", null)
    property real property_Weight_StandingFrontBarbellShrugs_Week_06: _app.getValueFor("property_Weight_StandingFrontBarbellShrugs_Week_06", null)
    property real property_Weight_StandingFrontBarbellShrugs_Week_07: _app.getValueFor("property_Weight_StandingFrontBarbellShrugs_Week_07", null)
    property real property_Weight_StandingFrontBarbellShrugs_Week_08: _app.getValueFor("property_Weight_StandingFrontBarbellShrugs_Week_08", null)

    property real property_Weight_StandingOneArmDumbbellShoulderPress_Week_01: _app.getValueFor("property_Weight_StandingOneArmDumbbellShoulderPress_Week_01", null)
    property real property_Weight_StandingOneArmDumbbellShoulderPress_Week_02: _app.getValueFor("property_Weight_StandingOneArmDumbbellShoulderPress_Week_02", null)
    property real property_Weight_StandingOneArmDumbbellShoulderPress_Week_03: _app.getValueFor("property_Weight_StandingOneArmDumbbellShoulderPress_Week_03", null)
    property real property_Weight_StandingOneArmDumbbellShoulderPress_Week_04: _app.getValueFor("property_Weight_StandingOneArmDumbbellShoulderPress_Week_04", null)
    property real property_Weight_StandingOneArmDumbbellShoulderPress_Week_05: _app.getValueFor("property_Weight_StandingOneArmDumbbellShoulderPress_Week_05", null)
    property real property_Weight_StandingOneArmDumbbellShoulderPress_Week_06: _app.getValueFor("property_Weight_StandingOneArmDumbbellShoulderPress_Week_06", null)
    property real property_Weight_StandingOneArmDumbbellShoulderPress_Week_07: _app.getValueFor("property_Weight_StandingOneArmDumbbellShoulderPress_Week_07", null)
    property real property_Weight_StandingOneArmDumbbellShoulderPress_Week_08: _app.getValueFor("property_Weight_StandingOneArmDumbbellShoulderPress_Week_08", null)

    property real property_Weight_StandingOverheadBarbellPress_Week_01: _app.getValueFor("property_Weight_StandingOverheadBarbellPress_Week_01", null)
    property real property_Weight_StandingOverheadBarbellPress_Week_02: _app.getValueFor("property_Weight_StandingOverheadBarbellPress_Week_02", null)
    property real property_Weight_StandingOverheadBarbellPress_Week_03: _app.getValueFor("property_Weight_StandingOverheadBarbellPress_Week_03", null)
    property real property_Weight_StandingOverheadBarbellPress_Week_04: _app.getValueFor("property_Weight_StandingOverheadBarbellPress_Week_04", null)
    property real property_Weight_StandingOverheadBarbellPress_Week_05: _app.getValueFor("property_Weight_StandingOverheadBarbellPress_Week_05", null)
    property real property_Weight_StandingOverheadBarbellPress_Week_06: _app.getValueFor("property_Weight_StandingOverheadBarbellPress_Week_06", null)
    property real property_Weight_StandingOverheadBarbellPress_Week_07: _app.getValueFor("property_Weight_StandingOverheadBarbellPress_Week_07", null)
    property real property_Weight_StandingOverheadBarbellPress_Week_08: _app.getValueFor("property_Weight_StandingOverheadBarbellPress_Week_08", null)

    property real property_Weight_StandingWideGripUprightRows_Week_01: _app.getValueFor("property_Weight_StandingWideGripUprightRows_Week_01", null)
    property real property_Weight_StandingWideGripUprightRows_Week_02: _app.getValueFor("property_Weight_StandingWideGripUprightRows_Week_02", null)
    property real property_Weight_StandingWideGripUprightRows_Week_03: _app.getValueFor("property_Weight_StandingWideGripUprightRows_Week_03", null)
    property real property_Weight_StandingWideGripUprightRows_Week_04: _app.getValueFor("property_Weight_StandingWideGripUprightRows_Week_04", null)
    property real property_Weight_StandingWideGripUprightRows_Week_05: _app.getValueFor("property_Weight_StandingWideGripUprightRows_Week_05", null)
    property real property_Weight_StandingWideGripUprightRows_Week_06: _app.getValueFor("property_Weight_StandingWideGripUprightRows_Week_06", null)
    property real property_Weight_StandingWideGripUprightRows_Week_07: _app.getValueFor("property_Weight_StandingWideGripUprightRows_Week_07", null)
    property real property_Weight_StandingWideGripUprightRows_Week_08: _app.getValueFor("property_Weight_StandingWideGripUprightRows_Week_08", null)

    property real property_Weight_SumoDeadlift_Week_01: _app.getValueFor("property_Weight_SumoDeadlift_Week_01", null)
    property real property_Weight_SumoDeadlift_Week_02: _app.getValueFor("property_Weight_SumoDeadlift_Week_02", null)
    property real property_Weight_SumoDeadlift_Week_03: _app.getValueFor("property_Weight_SumoDeadlift_Week_03", null)
    property real property_Weight_SumoDeadlift_Week_04: _app.getValueFor("property_Weight_SumoDeadlift_Week_04", null)
    property real property_Weight_SumoDeadlift_Week_05: _app.getValueFor("property_Weight_SumoDeadlift_Week_05", null)
    property real property_Weight_SumoDeadlift_Week_06: _app.getValueFor("property_Weight_SumoDeadlift_Week_06", null)
    property real property_Weight_SumoDeadlift_Week_07: _app.getValueFor("property_Weight_SumoDeadlift_Week_07", null)
    property real property_Weight_SumoDeadlift_Week_08: _app.getValueFor("property_Weight_SumoDeadlift_Week_08", null)

    property real property_Weight_TBarRows_Week_01: _app.getValueFor("property_Weight_TBarRows_Week_01", null)
    property real property_Weight_TBarRows_Week_02: _app.getValueFor("property_Weight_TBarRows_Week_02", null)
    property real property_Weight_TBarRows_Week_03: _app.getValueFor("property_Weight_TBarRows_Week_03", null)
    property real property_Weight_TBarRows_Week_04: _app.getValueFor("property_Weight_TBarRows_Week_04", null)
    property real property_Weight_TBarRows_Week_05: _app.getValueFor("property_Weight_TBarRows_Week_05", null)
    property real property_Weight_TBarRows_Week_06: _app.getValueFor("property_Weight_TBarRows_Week_06", null)
    property real property_Weight_TBarRows_Week_07: _app.getValueFor("property_Weight_TBarRows_Week_07", null)
    property real property_Weight_TBarRows_Week_08: _app.getValueFor("property_Weight_TBarRows_Week_08", null)

    property real property_Weight_ThighAbductor_Week_01: _app.getValueFor("property_Weight_ThighAbductor_Week_01", null)
    property real property_Weight_ThighAbductor_Week_02: _app.getValueFor("property_Weight_ThighAbductor_Week_02", null)
    property real property_Weight_ThighAbductor_Week_03: _app.getValueFor("property_Weight_ThighAbductor_Week_03", null)
    property real property_Weight_ThighAbductor_Week_04: _app.getValueFor("property_Weight_ThighAbductor_Week_04", null)
    property real property_Weight_ThighAbductor_Week_05: _app.getValueFor("property_Weight_ThighAbductor_Week_05", null)
    property real property_Weight_ThighAbductor_Week_06: _app.getValueFor("property_Weight_ThighAbductor_Week_06", null)
    property real property_Weight_ThighAbductor_Week_07: _app.getValueFor("property_Weight_ThighAbductor_Week_07", null)
    property real property_Weight_ThighAbductor_Week_08: _app.getValueFor("property_Weight_ThighAbductor_Week_08", null)

    property real property_Weight_ThighAdductor_Week_01: _app.getValueFor("property_Weight_ThighAdductor_Week_01", null)
    property real property_Weight_ThighAdductor_Week_02: _app.getValueFor("property_Weight_ThighAdductor_Week_02", null)
    property real property_Weight_ThighAdductor_Week_03: _app.getValueFor("property_Weight_ThighAdductor_Week_03", null)
    property real property_Weight_ThighAdductor_Week_04: _app.getValueFor("property_Weight_ThighAdductor_Week_04", null)
    property real property_Weight_ThighAdductor_Week_05: _app.getValueFor("property_Weight_ThighAdductor_Week_05", null)
    property real property_Weight_ThighAdductor_Week_06: _app.getValueFor("property_Weight_ThighAdductor_Week_06", null)
    property real property_Weight_ThighAdductor_Week_07: _app.getValueFor("property_Weight_ThighAdductor_Week_07", null)
    property real property_Weight_ThighAdductor_Week_08: _app.getValueFor("property_Weight_ThighAdductor_Week_08", null)

    property real property_Weight_TricepsDips_Week_01: _app.getValueFor("property_Weight_TricepsDips_Week_01", null)
    property real property_Weight_TricepsDips_Week_02: _app.getValueFor("property_Weight_TricepsDips_Week_02", null)
    property real property_Weight_TricepsDips_Week_03: _app.getValueFor("property_Weight_TricepsDips_Week_03", null)
    property real property_Weight_TricepsDips_Week_04: _app.getValueFor("property_Weight_TricepsDips_Week_04", null)
    property real property_Weight_TricepsDips_Week_05: _app.getValueFor("property_Weight_TricepsDips_Week_05", null)
    property real property_Weight_TricepsDips_Week_06: _app.getValueFor("property_Weight_TricepsDips_Week_06", null)
    property real property_Weight_TricepsDips_Week_07: _app.getValueFor("property_Weight_TricepsDips_Week_07", null)
    property real property_Weight_TricepsDips_Week_08: _app.getValueFor("property_Weight_TricepsDips_Week_08", null)

    property real property_Weight_WeightTricepsDips_Week_01: _app.getValueFor("property_Weight_WeightTricepsDips_Week_01", null)
    property real property_Weight_WeightTricepsDips_Week_02: _app.getValueFor("property_Weight_WeightTricepsDips_Week_02", null)
    property real property_Weight_WeightTricepsDips_Week_03: _app.getValueFor("property_Weight_WeightTricepsDips_Week_03", null)
    property real property_Weight_WeightTricepsDips_Week_04: _app.getValueFor("property_Weight_WeightTricepsDips_Week_04", null)
    property real property_Weight_WeightTricepsDips_Week_05: _app.getValueFor("property_Weight_WeightTricepsDips_Week_05", null)
    property real property_Weight_WeightTricepsDips_Week_06: _app.getValueFor("property_Weight_WeightTricepsDips_Week_06", null)
    property real property_Weight_WeightTricepsDips_Week_07: _app.getValueFor("property_Weight_WeightTricepsDips_Week_07", null)
    property real property_Weight_WeightTricepsDips_Week_08: _app.getValueFor("property_Weight_WeightTricepsDips_Week_08", null)

    property real property_Weight_WeightWideGripOverhandChinUps_Week_01: _app.getValueFor("property_Weight_WeightWideGripOverhandChinUps_Week_01", null)
    property real property_Weight_WeightWideGripOverhandChinUps_Week_02: _app.getValueFor("property_Weight_WeightWideGripOverhandChinUps_Week_02", null)
    property real property_Weight_WeightWideGripOverhandChinUps_Week_03: _app.getValueFor("property_Weight_WeightWideGripOverhandChinUps_Week_03", null)
    property real property_Weight_WeightWideGripOverhandChinUps_Week_04: _app.getValueFor("property_Weight_WeightWideGripOverhandChinUps_Week_04", null)
    property real property_Weight_WeightWideGripOverhandChinUps_Week_05: _app.getValueFor("property_Weight_WeightWideGripOverhandChinUps_Week_05", null)
    property real property_Weight_WeightWideGripOverhandChinUps_Week_06: _app.getValueFor("property_Weight_WeightWideGripOverhandChinUps_Week_06", null)
    property real property_Weight_WeightWideGripOverhandChinUps_Week_07: _app.getValueFor("property_Weight_WeightWideGripOverhandChinUps_Week_07", null)
    property real property_Weight_WeightWideGripOverhandChinUps_Week_08: _app.getValueFor("property_Weight_WeightWideGripOverhandChinUps_Week_08", null)

    property real property_Weight_WideGripOverhandChinUps_Week_01: _app.getValueFor("property_Weight_WideGripOverhandChinUps_Week_01", null)
    property real property_Weight_WideGripOverhandChinUps_Week_02: _app.getValueFor("property_Weight_WideGripOverhandChinUps_Week_02", null)
    property real property_Weight_WideGripOverhandChinUps_Week_03: _app.getValueFor("property_Weight_WideGripOverhandChinUps_Week_03", null)
    property real property_Weight_WideGripOverhandChinUps_Week_04: _app.getValueFor("property_Weight_WideGripOverhandChinUps_Week_04", null)
    property real property_Weight_WideGripOverhandChinUps_Week_05: _app.getValueFor("property_Weight_WideGripOverhandChinUps_Week_05", null)
    property real property_Weight_WideGripOverhandChinUps_Week_06: _app.getValueFor("property_Weight_WideGripOverhandChinUps_Week_06", null)
    property real property_Weight_WideGripOverhandChinUps_Week_07: _app.getValueFor("property_Weight_WideGripOverhandChinUps_Week_07", null)
    property real property_Weight_WideGripOverhandChinUps_Week_08: _app.getValueFor("property_Weight_WideGripOverhandChinUps_Week_08", null)

    property real property_Weight_WideGripStandingBarbellBicepsCurl_Week_01: _app.getValueFor("property_Weight_WideGripStandingBarbellBicepsCurl_Week_01", null)
    property real property_Weight_WideGripStandingBarbellBicepsCurl_Week_02: _app.getValueFor("property_Weight_WideGripStandingBarbellBicepsCurl_Week_02", null)
    property real property_Weight_WideGripStandingBarbellBicepsCurl_Week_03: _app.getValueFor("property_Weight_WideGripStandingBarbellBicepsCurl_Week_03", null)
    property real property_Weight_WideGripStandingBarbellBicepsCurl_Week_04: _app.getValueFor("property_Weight_WideGripStandingBarbellBicepsCurl_Week_04", null)
    property real property_Weight_WideGripStandingBarbellBicepsCurl_Week_05: _app.getValueFor("property_Weight_WideGripStandingBarbellBicepsCurl_Week_05", null)
    property real property_Weight_WideGripStandingBarbellBicepsCurl_Week_06: _app.getValueFor("property_Weight_WideGripStandingBarbellBicepsCurl_Week_06", null)
    property real property_Weight_WideGripStandingBarbellBicepsCurl_Week_07: _app.getValueFor("property_Weight_WideGripStandingBarbellBicepsCurl_Week_07", null)
    property real property_Weight_WideGripStandingBarbellBicepsCurl_Week_08: _app.getValueFor("property_Weight_WideGripStandingBarbellBicepsCurl_Week_08", null)

    property real property_Weight_WideGripStandingEZBarCur_Week_01: _app.getValueFor("property_Weight_WideGripStandingEZBarCur_Week_01", null)
    property real property_Weight_WideGripStandingEZBarCur_Week_02: _app.getValueFor("property_Weight_WideGripStandingEZBarCur_Week_02", null)
    property real property_Weight_WideGripStandingEZBarCur_Week_03: _app.getValueFor("property_Weight_WideGripStandingEZBarCur_Week_03", null)
    property real property_Weight_WideGripStandingEZBarCur_Week_04: _app.getValueFor("property_Weight_WideGripStandingEZBarCur_Week_04", null)
    property real property_Weight_WideGripStandingEZBarCur_Week_05: _app.getValueFor("property_Weight_WideGripStandingEZBarCur_Week_05", null)
    property real property_Weight_WideGripStandingEZBarCur_Week_06: _app.getValueFor("property_Weight_WideGripStandingEZBarCur_Week_06", null)
    property real property_Weight_WideGripStandingEZBarCur_Week_07: _app.getValueFor("property_Weight_WideGripStandingEZBarCur_Week_07", null)
    property real property_Weight_WideGripStandingEZBarCur_Week_08: _app.getValueFor("property_Weight_WideGripStandingEZBarCur_Week_08", null)

    property real property_Weight_WideOverhandGripLatPulldown_Week_01: _app.getValueFor("property_Weight_WideOverhandGripLatPulldown_Week_01", null)
    property real property_Weight_WideOverhandGripLatPulldown_Week_02: _app.getValueFor("property_Weight_WideOverhandGripLatPulldown_Week_02", null)
    property real property_Weight_WideOverhandGripLatPulldown_Week_03: _app.getValueFor("property_Weight_WideOverhandGripLatPulldown_Week_03", null)
    property real property_Weight_WideOverhandGripLatPulldown_Week_04: _app.getValueFor("property_Weight_WideOverhandGripLatPulldown_Week_04", null)
    property real property_Weight_WideOverhandGripLatPulldown_Week_05: _app.getValueFor("property_Weight_WideOverhandGripLatPulldown_Week_05", null)
    property real property_Weight_WideOverhandGripLatPulldown_Week_06: _app.getValueFor("property_Weight_WideOverhandGripLatPulldown_Week_06", null)
    property real property_Weight_WideOverhandGripLatPulldown_Week_07: _app.getValueFor("property_Weight_WideOverhandGripLatPulldown_Week_07", null)
    property real property_Weight_WideOverhandGripLatPulldown_Week_08: _app.getValueFor("property_Weight_WideOverhandGripLatPulldown_Week_08", null)
    //**********************************************************************************************************************************************

    tabs: [

        // pouze zkouska pri nejake cinnosti
        /*Tab {
            id: tab_00
            title: qsTr("Reset all values") + Retranslate.onLanguageChanged

            Page {
                id: page

                titleBar: TitleBar {
                    title: "Reset all values"
                }

                Container {

                    Label {
                        horizontalAlignment: HorizontalAlignment.Center

                        multiline: true
                        text: "All values ​​are at default values."
                    }
                    Label {
                        horizontalAlignment: HorizontalAlignment.Center
                        multiline: true
                        text: "You can close this page."
                    }
                }
            }
        },*/

        Tab {
            id: tab_01
            title: qsTr("Week 1") + Retranslate.onLanguageChanged
            description: qsTr("75%") + Retranslate.onLanguageChanged + qsTr(" from max weight") + Retranslate.onLanguageChanged
            objectName: "Week_01"

            Page_Weeks {
            }
        },

        Tab {
            id: tab_02
            title: qsTr("Week 2") + Retranslate.onLanguageChanged
            description: qsTr("80%") + Retranslate.onLanguageChanged + qsTr(" from max weight") + Retranslate.onLanguageChanged
            objectName: "Week_02"

            Page_Weeks {
            }
        },

        Tab {
            id: tab_03
            title: qsTr("Week 3") + Retranslate.onLanguageChanged
            description: qsTr("85%") + Retranslate.onLanguageChanged + qsTr(" from max weight") + Retranslate.onLanguageChanged
            objectName: "Week_03"

            Page_Weeks {
            }
        },

        Tab {
            id: tab_04
            title: qsTr("Week 4") + Retranslate.onLanguageChanged
            description: qsTr("90%") + Retranslate.onLanguageChanged + qsTr(" from max weight") + Retranslate.onLanguageChanged
            objectName: "Week_04"

            Page_Weeks {
            }
        },

        Tab {
            id: tab_05
            title: qsTr("Week 5") + Retranslate.onLanguageChanged
            description: qsTr("95%") + Retranslate.onLanguageChanged + qsTr(" from max weight") + Retranslate.onLanguageChanged
            objectName: "Week_05"

            Page_Weeks {
            }
        },

        Tab {
            id: tab_06
            title: qsTr("Week 6") + Retranslate.onLanguageChanged
            objectName: "Week_06"

            Page_Weeks {
            }
        },

        Tab {
            id: tab_07
            title: qsTr("Week 7") + Retranslate.onLanguageChanged
            description: qsTr("100%") + Retranslate.onLanguageChanged + qsTr(" from max weight") + Retranslate.onLanguageChanged
            objectName: "Week_07"

            Page_Weeks {
            }
        },

        Tab {
            id: tab_08
            title: qsTr("Week 8") + Retranslate.onLanguageChanged
            description: qsTr("Deload") + Retranslate.onLanguageChanged
            objectName: "Week_08"

            Page_Weeks {
            }
        }
    ]

    onActiveTabChanged: {
        property_SelectedWeek = activeTab.title
        property_SelectedWeekObjectName = activeTab.objectName
        property_Description = activeTab.description

        // pouze zkouska pri nejake cinnosti
        //if (activeTab == tab_00) {
        //    Application.themeSupport.setVisualStyle(VisualStyle.Dark)
        //}
    }

    onCreationCompleted: {
        if (_device.isPassport()) {
            property_Device = "Passport"
        }
    }
}
