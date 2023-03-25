// function for "ActionItem"
function function_ClearList_01() {
	systemListDialog_01.clearList();
}

// function for "ActionItem"
function function_ClearList_02() {
	systemListDialog_02.clearList();
}

// function for "ListView"
function function_CreationPage_01() {
	navigationPane.push(componentDefinition_01.createObject());
}

// function for "ActionItem"
function function_ChangeEnabled_01() {
	if (navigationPane.property_SelectedPlanId == "") {
		actionItem_02.enabled = false;
	} else {
		actionItem_02.enabled = true;;
	}
}

// function for TitleBar
function function_ChangeTitle_01() {
	if (navigationPane.property_SelectedWeek != "") {
		titleBar.title = navigationPane.property_SelectedWeek + " (" + navigationPane.property_SelectedPlan + ")";
	}
}

// function for "Container"
function function_ChangeVisible_01() {
	if (navigationPane.property_SelectedWeek != "") {
		container_01.visible = false;
	} else {
		container_01.visible = true;
	}
}

// function for "ActionItem"
function function_LoadXML_01() {
	var xmlContents = _xml.LoadXML("Data/Plans.xml", "plan", "title_" + tabbedPane.property_Language);
	for (var x = 0; x < xmlContents.length; x++) {
		systemListDialog_01.appendItem(xmlContents[x]["title_" + tabbedPane.property_Language]);
	}
}

// function for "ActionItem"
function function_LoadXML_02() {
	var xmlContents = _xml.LoadXML("Plans/" + navigationPane.property_SelectedPlanId + ".xml", "week", "title_" + tabbedPane.property_Language);
	for (var x = 0; x < xmlContents.length; x++) {
		systemListDialog_02.appendItem(xmlContents[x]["title_" + tabbedPane.property_Language]);
	}
}

// function for "SystemListDialog"
function function_SetValue_01() {
	var selectedPlan = systemListDialog_01.selectedIndices[0] + 1;
	if (selectedPlan < 10) {
		navigationPane.property_SelectedPlanId = "Plan_0" + selectedPlan;
	} else {
		navigationPane.property_SelectedPlanId = "Plan_" + selectedPlan;
	}
}

// function for "SystemListDialog"
function function_SetValue_02() {
	var selectedWeek = systemListDialog_02.selectedIndices[0] + 1;
	if (selectedWeek < 10) {
		navigationPane.property_SelectedWeekId_01 = "Week_0" + selectedWeek;
	} else {
		navigationPane.property_SelectedWeekId_01 = "Week_" + selectedWeek;
	}
}

// function for "SystemListDialog"
function function_SetValue_03() {
	var selectedWeek = systemListDialog_02.selectedIndices[0] + 1;
	navigationPane.property_SelectedWeek = qsTr("Week ") + Retranslate.onLanguageChanged + selectedWeek;
	navigationPane.property_SelectedWeekId_02 = systemListDialog_02.selectedIndices[0];
}

// function for "SystemListDialog"
function function_SetValue_04() {
    navigationPane.property_SelectedPlan = page.property_SelectedPlan;
}

// function for "SystemListDialog"
function function_SaveValue_01() {
	_app.saveValueFor("property_SelectedWeek", navigationPane.property_SelectedWeek);
	_app.saveValueFor("property_SelectedPlanId", navigationPane.property_SelectedPlanId);
	_app.saveValueFor("property_SelectedWeekId_01", navigationPane.property_SelectedWeekId_01);
	_app.saveValueFor("property_SelectedWeekId_02", navigationPane.property_SelectedWeekId_02);
}

// function for "ActionItem"
function function_ShowDialog_01() {
	systemListDialog_01.show();
}

// function for "ActionItem"
function function_ShowDialog_02() {
	systemListDialog_02.show();
}
