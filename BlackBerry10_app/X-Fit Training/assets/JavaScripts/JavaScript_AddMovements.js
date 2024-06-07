//function for "ActionItem"
    function function_Add_SaveData(title, description, status, date, descriptions, note) {

        var itemData = {
            "title": title,
            "description": description,
            "status": status,
            "date": date,
            "descriptions": descriptions,
            "note": note
        };

        groupDataModel.insert(itemData);
        sqlDatabase.execute("INSERT INTO savedata (title, description, status, date, descriptions, note) VALUES(:title, :description, :status, :date, :descriptions, :note)", itemData);
    }

//function for "DateTimePicker"
//function for "onCreationCompleted"
function function_SetDate() {
    page.property_DayId = dateTimePicker.value.getDay();
    page.property_MonthId = dateTimePicker.value.getMonth() + 1;
}

//function for "onCreationCompleted"
function function_SetCurrentDate() {
    page.property_CurrentDay = dateTimePicker.value.getDay();
    page.property_CurrentDate = dateTimePicker.value.getDate();
    page.property_CurrentMonth = dateTimePicker.value.getMonth() + 1;
    page.property_CurrentYear = dateTimePicker.value.getFullYear();
}

//function for "onCreationCompleted"
function function_AddOption_01() {
    var xmlContents = _xml.LoadXML("Data/MaxRepExcercise.xml", "excercise", "title_" + tabbedPane.property_Language);
    for (var x = 0; x < xmlContents.length; x ++) {
        var option = componentDefinition.createObject();
        option.text = xmlContents[x]["title_" + tabbedPane.property_Language];
        dropDown_01.add(option);
    }
}

//function for "onCreationCompleted"
function function_AddOption_02() {
    for (var x = 0; x < page.property_MaxSeries; x ++) {
        var option = componentDefinition.createObject();
        option.text = page.property_TitleSeries;
        dropDown_02.add(option);
        page.property_TitleSeries == page.property_TitleSeries ++;
    }
}

//function for "onCreationCompleted"
function function_AddOption_03() {
    for (var x = 0; x < page.property_MaxRepetitions; x ++) {
        var option = componentDefinition.createObject();
        option.text = page.property_TitleRepetitions;
        dropDown_03.add(option);
        page.property_TitleRepetitions == page.property_TitleRepetitions ++;
    }
}

//function for "onCreationCompleted"
function function_AddOption_04() {
    var numberWeight = page.property_MaxWeight - page.property_MinWeight + 1;
    for (var x = 0; x < numberWeight; x ++) {;
        var option = componentDefinition.createObject();
        option.text = page.property_MinWeight + tabbedPane.property_MetricUnits;
        dropDown_04.add(option);
        page.property_MinWeight == page.property_MinWeight ++;
    }
}

//function for "onproperty_CurrentDayChanged"
function function_Convert_01() {
    if (property_CurrentDay == "1") {
        property_CurrentDay = qsTr("Monday") + Retranslate.onLanguageChanged;
    } else if (property_CurrentDay == "2") {
        property_CurrentDay = qsTr("Tuesday") + Retranslate.onLanguageChanged;
    } else if (property_CurrentDay == "3") {
        property_CurrentDay = qsTr("Wednsday") + Retranslate.onLanguageChanged;
    } else if (property_CurrentDay == "4") {
        property_CurrentDay = qsTr("Thursday") + Retranslate.onLanguageChanged;
    } else if (property_CurrentDay == "5") {
        property_CurrentDay = qsTr("Friday") + Retranslate.onLanguageChanged;
    } else if (property_CurrentDay == "6") {
        property_CurrentDay = qsTr("Saturday") + Retranslate.onLanguageChanged;
    } else if (property_CurrentDay == "0") {
        property_CurrentDay = qsTr("Sunday") + Retranslate.onLanguageChanged;
    }
}

//function for "onproperty_CurrentMonthChanged"
function function_Convert_02() {
    if (property_CurrentMonth == "1") {
        property_CurrentMonth = qsTr("January") + Retranslate.onLanguageChanged;
    } else if (property_CurrentMonth == "2") {
        property_CurrentMonth = qsTr("February") + Retranslate.onLanguageChanged;
    } else if (property_CurrentMonth == "3") {
        property_CurrentMonth = qsTr("March") + Retranslate.onLanguageChanged;
    } else if (property_CurrentMonth == "4") {
        property_CurrentMonth = qsTr("April") + Retranslate.onLanguageChanged;
    } else if (property_CurrentMonth == "5") {
        property_CurrentMonth = qsTr("May") + Retranslate.onLanguageChanged;
    } else if (property_CurrentMonth == "6") {
        property_CurrentMonth = qsTr("June") + Retranslate.onLanguageChanged;
    } else if (property_CurrentMonth == "7") {
        property_CurrentMonth = qsTr("July") + Retranslate.onLanguageChanged;
    } else if (property_CurrentMonth == "8") {
        property_CurrentMonth = qsTr("August") + Retranslate.onLanguageChanged;
    } else if (property_CurrentMonth == "9") {
        property_CurrentMonth = qsTr("September") + Retranslate.onLanguageChanged;
    } else if (property_CurrentMonth == "10") {
        property_CurrentMonth = qsTr("October") + Retranslate.onLanguageChanged;
    } else if (property_CurrentMonth == "11") {
        property_CurrentMonth = qsTr("November") + Retranslate.onLanguageChanged;
    } else if (property_CurrentMonth == "12") {
        property_CurrentMonth = qsTr("December") + Retranslate.onLanguageChanged;
    }
}

//function for "onProperty_DayIdChanged"
function function_Convert_03() {
    if (property_DayId == "1") {
    	property_DayId = qsTr("Monday") + Retranslate.onLanguageChanged;
    } else if (property_DayId == "2") {
    	property_DayId = qsTr("Tuesday") + Retranslate.onLanguageChanged;
    } else if (property_DayId == "3") {
    	property_DayId = qsTr("Wednsday") + Retranslate.onLanguageChanged;
    } else if (property_DayId == "4") {
    	property_DayId = qsTr("Thursday") + Retranslate.onLanguageChanged;
    } else if (property_DayId == "5") {
    	property_DayId = qsTr("Friday") + Retranslate.onLanguageChanged;
    } else if (property_DayId == "6") {
    	property_DayId = qsTr("Saturday") + Retranslate.onLanguageChanged;
    } else if (property_DayId == "0") {
    	property_DayId = qsTr("Sunday") + Retranslate.onLanguageChanged;
    }
}

//function for "onProperty_MonthIdChanged"
function function_Convert_04() {
    if (property_MonthId == "1") {
        property_MonthId = qsTr("January") + Retranslate.onLanguageChanged;
    } else if (property_MonthId == "2") {
        property_MonthId = qsTr("February") + Retranslate.onLanguageChanged;
    } else if (property_MonthId == "3") {
        property_MonthId = qsTr("March") + Retranslate.onLanguageChanged;
    } else if (property_MonthId == "4") {
        property_MonthId = qsTr("April") + Retranslate.onLanguageChanged;
    } else if (property_MonthId == "5") {
        property_MonthId = qsTr("May") + Retranslate.onLanguageChanged;
    } else if (property_MonthId == "6") {
        property_MonthId = qsTr("June") + Retranslate.onLanguageChanged;
    } else if (property_MonthId == "7") {
        property_MonthId = qsTr("July") + Retranslate.onLanguageChanged;
    } else if (property_MonthId == "8") {
        property_MonthId = qsTr("August") + Retranslate.onLanguageChanged;
    } else if (property_MonthId == "9") {
        property_MonthId = qsTr("September") + Retranslate.onLanguageChanged;
    } else if (property_MonthId == "10") {
        property_MonthId = qsTr("October") + Retranslate.onLanguageChanged;
    } else if (property_MonthId == "11") {
        property_MonthId = qsTr("November") + Retranslate.onLanguageChanged;
    } else if (property_MonthId == "12") {
        property_MonthId = qsTr("December") + Retranslate.onLanguageChanged;
    }
}












