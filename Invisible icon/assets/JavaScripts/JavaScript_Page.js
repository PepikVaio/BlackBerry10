// function for "Custom_SystemToast_01"
function function_ChangeBody_01() {
	custom_SystemToast_01.alias_Id.body = qsTr("Number of icons added ") + Retranslate.onLanguageChanged + custom_Slider_01.immediateValue.toFixed();
}

// function for "Custom_Slider_01"
function function_ChangeSubtitle_01() {
	custom_Header_01.subtitle = qsTr("Number of icons: ") + Retranslate.onLanguageChanged + custom_Slider_01.immediateValue.toFixed();
}

// function for "Custom_Slider_01"
function function_ChangeTitle_01() {
	if (immediateValue.toFixed(0.1) == 1) {
		custom_ActionItem_01.title = qsTr("Create icon") + Retranslate.onLanguageChanged;
	} else {
		custom_ActionItem_01.title = qsTr("Create icons") + Retranslate.onLanguageChanged;
	}
}

// function for "Custom_ActionItem_01"
function function_Loop_01() {
	for (var i = 0; i < custom_Slider_01.value; i++) {
		custom_HomeScreen_01.alias_Id.addShortcut("asset:///Images/image_invisible.png", "\uFEFF", "bogusuri://");
	}
}

// function for "Custom_ActionItem_01"
function function_Show_01() {
	custom_SystemToast_01.alias_Id.show();
}
