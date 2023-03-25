//    __              _   _             __         
//   / _|_  _ _ _  __| |_(_)___ _ _    / _|___ _ _ 
//  |  _| || | ' \/ _|  _| / _ \ ' \  |  _/ _ \ '_|
//  |_|  \_,_|_||_\__|\__|_\___/_||_| |_| \___/_|  
//                                                 
//   ___ _            _     ___      _   _   _                           _ 
//  / __| |_  ___ ___| |_  / __| ___| |_| |_(_)_ _  __ _ ___  __ _ _ __ | |
//  \__ \ ' \/ -_) -_)  _| \__ \/ -_)  _|  _| | ' \/ _` (_-<_/ _` | '  \| |
//  |___/_||_\___\___|\__|_|___/\___|\__|\__|_|_||_\__, /__(_)__, |_|_|_|_|
//                      |___|                      |___/        |_|        
//  

// funkction for "../JavaScripts/JavaScript_Sheet_Settings.js"
// ***********************************************************
function function_CancelSystemProgressToast_01() {
	systemProgressToast_Reset.alias_Id.cancel();
}

// function for ../main.qml
// ************************
function function_CancelSystemToast_01() {
	sheet_Settings.alias_SystemToast_Reset.alias_Id.cancel();
}
// **********************************************************

function function_CloseSheet_01() {
	sheet.close();
}
// ********************************

function function_ChangeAccess_01() {
	if (sheet.property_DismissActionItem_Enabled == true) {
		if (sheet.property_AcceptActionItem_Title == "Default") {
			if (toggleButton_AdaptiveTheme.alias_Checked != false) {
				property_AcceptActionItem_Enabled = true;
			} else if (dropDown_VisualStyle.alias_SelectedValue != 0) {
				property_AcceptActionItem_Enabled = true;
			} else if (toggleButton_ShowTabsOnActionBar.alias_Checked != false) {
				property_AcceptActionItem_Enabled = true;
			} else if (dropDown_ActiveTab.alias_SelectedValue != 0) {
				property_AcceptActionItem_Enabled = true;
			} else if (dropDown_TabDelegateActivationPolicy.alias_SelectedValue != 0) {
				property_AcceptActionItem_Enabled = true;
			} else if (toggleButton_ShowBetaOption.alias_Checked != false) {
				property_AcceptActionItem_Enabled = true;
			} else {
				property_AcceptActionItem_Enabled = false;
			}
		} else if (sheet.property_AcceptActionItem_Title == "Reset") {
			property_AcceptActionItem_Enabled = true;
		}
	}
}
// ************************************************************************************

function function_ChangeAccess_02() {
	if (toggleButton_AdaptiveTheme.alias_Checked == false) {
		dropDown_VisualStyle.alias_Enabled = true;
	} else {
		dropDown_VisualStyle.alias_Enabled = false;
	}
}
// *********************************************************

function function_ChangeAccess_03() {
	if (systemDialog_Warning_02.alias_Id.result == 2) {
		sheet.property_DismissActionItem_Enabled = false;
		property_AcceptActionItem_Enabled = false;
	}
}
// ******************************************************

// funkction for "../JavaScripts/JavaScript_Sheet_Settings.js"
// ***********************************************************
function function_ChangeAccess_04() {
	sheet.property_DismissActionItem_Enabled = true;
	property_AcceptActionItem_Enabled = false;
}
// *************************************************

// function for ../main.qml
// ************************
function function_ChangeAccess_05() {
	if (sheet_Settings.property_ToggleButton_AdaptiveTheme_Checked != false) {
		sheet_Settings.property_AcceptActionItem_Enabled = true;
	} else if (sheet_Settings.property_DropDown_VisualStyle_SelectedValue != 0) {
		sheet_Settings.property_AcceptActionItem_Enabled = true;
	} else if (sheet_Settings.property_ToggleButton_ShowTabsOnActionBar_Checked != false) {
		sheet_Settings.property_AcceptActionItem_Enabled = true;
	} else if (sheet_Settings.property_DropDown_ActiveTab_SelectedValue != 0) {
		sheet_Settings.property_AcceptActionItem_Enabled = true;
	} else if (sheet_Settings.property_DropDown_TabDelegateActivation_SelectedValue != 0) {
		sheet_Settings.property_AcceptActionItem_Enabled = true;
	} else if (sheet_Settings.property_ToggleButton_ShowBetaOption_Checked != false) {
		sheet_Settings.property_AcceptActionItem_Enabled = true;
	} else {
		sheet_Settings.property_AcceptActionItem_Enabled = false;
	}
}
// ****************************************************************************************

function function_ChangeActiveTab() {
	if (dropDown_ActiveTab.alias_SelectedValue == 0) {
		tabbedPane.activeTab = tab_01;
	} else if (dropDown_ActiveTab.alias_SelectedValue == 1) {
		tabbedPane.activeTab = tab_02;
	} else if (dropDown_ActiveTab.alias_SelectedValue == 2) {
		tabbedPane.activeTab = tab_03;
	} else if (dropDown_ActiveTab.alias_SelectedValue == 3) {
		tabbedPane.activeTab = tab_04;
	}
}
// **********************************************************

function function_ChangeDelegateActivationPolicy() {
	if (dropDown_TabDelegateActivationPolicy.alias_SelectedValue == 0) {
		tabbedPane.property_TabDelegateActivationPolicy = "ActivatedWhileSelected";
	} else if (dropDown_TabDelegateActivationPolicy.alias_SelectedValue == 1) {
		tabbedPane.property_TabDelegateActivationPolicy = "ActivateWhenSelected";
	} else if (dropDown_TabDelegateActivationPolicy.alias_SelectedValue == 2) {
		tabbedPane.property_TabDelegateActivationPolicy = "ActivateImmediately";
	}
}
// ********************************************************************************

function function_ChangeImage_01() {
	if (dropDown_VisualStyle.alias_SelectedValue == 0) {
		if (toggleButton_AdaptiveTheme.alias_Checked == false) {
			toggleButton_AdaptiveTheme.alias_ImageSource = "asset:///Icons/Icon_AdaptiveTheme_(white).png";
		} else {
			toggleButton_AdaptiveTheme.alias_ImageSource = "asset:///Icons/Icon_AdaptiveTheme_(sun).png";
		}
		if (toggleButton_ShowTabsOnActionBar.alias_Checked == false) {
			toggleButton_ShowTabsOnActionBar.alias_ImageSource = "asset:///Icons/Icon_ShowTabsOnActionbar_(white_false).png";
		} else {
			toggleButton_ShowTabsOnActionBar.alias_ImageSource = "asset:///Icons/Icon_ShowTabsOnActionbar_(white_true).png";
		}
	} else {
		if (toggleButton_AdaptiveTheme.alias_Checked == false) {
			toggleButton_AdaptiveTheme.alias_ImageSource = "asset:///Icons/Icon_AdaptiveTheme_(black).png";
		} else {
			toggleButton_AdaptiveTheme.alias_ImageSource = "asset:///Icons/Icon_AdaptiveTheme_(sky).png";
		}
		if (toggleButton_ShowTabsOnActionBar.alias_Checked == false) {
			toggleButton_ShowTabsOnActionBar.alias_ImageSource = "asset:///Icons/Icon_ShowTabsOnActionbar_(black_false).png";
		} else {
			toggleButton_ShowTabsOnActionBar.alias_ImageSource = "asset:///Icons/Icon_ShowTabsOnActionbar_(black_true).png";
		}
	}
}
// **************************************************************************************************************************

function function_ChangeImage_02() {
	if (toggleButton_ShowBetaOption.alias_Checked == false) {
		toggleButton_ShowBetaOption.alias_ImageSource = "asset:///Icons/Icon_DevelopmentMode_(gray).png";
	} else {
		toggleButton_ShowBetaOption.alias_ImageSource = "asset:///Icons/Icon_DevelopmentMode_(pink).png";
	}
}
// ******************************************************************************************************

function function_ChangeShowTabsOnActionBar() {
	if (toggleButton_ShowTabsOnActionBar.alias_Checked == false) {
		tabbedPane.showTabsOnActionBar = false;
	} else {
		tabbedPane.showTabsOnActionBar = true;
	}
}
// ***************************************************************

function function_ChangeTitle_01() {
	if (sheet.property_DismissActionItem_Enabled == true) {
		if (sheet.property_ToggleButton_AdaptiveTheme_Checked != toggleButton_AdaptiveTheme.alias_Checked) {
			sheet.property_DismissActionItem_Title = "Save";
		} else if (sheet.property_DropDown_VisualStyle_SelectedValue != dropDown_VisualStyle.alias_SelectedValue) {
			sheet.property_DismissActionItem_Title = "Save";
		} else if (sheet.property_ToggleButton_ShowTabsOnActionBar_Checked != toggleButton_ShowTabsOnActionBar.alias_Checked) {
			sheet.property_DismissActionItem_Title = "Save";
		} else if (sheet.property_DropDown_ActiveTab_SelectedValue != dropDown_ActiveTab.alias_SelectedValue) {
			sheet.property_DismissActionItem_Title = "Save";
		} else if (sheet.property_DropDown_TabDelegateActivation_SelectedValue != dropDown_TabDelegateActivationPolicy.alias_SelectedValue) {
			sheet.property_DismissActionItem_Title = "Save";
		} else {
			sheet.property_DismissActionItem_Title = "Close";
		}
	}
}
// ******************************************************************************************************************************************

function function_ChangeTitle_02() {
	if (sheet.property_DismissActionItem_Enabled == true) {
		if (sheet.property_ToggleButton_AdaptiveTheme_Checked != toggleButton_AdaptiveTheme.alias_Checked) {
			sheet.property_AcceptActionItem_Title = "Reset";
		} else if (sheet.property_DropDown_VisualStyle_SelectedValue != dropDown_VisualStyle.alias_SelectedValue) {
			sheet.property_AcceptActionItem_Title = "Reset";
		} else if (sheet.property_ToggleButton_ShowTabsOnActionBar_Checked != toggleButton_ShowTabsOnActionBar.alias_Checked) {
			sheet.property_AcceptActionItem_Title = "Reset";
		} else if (sheet.property_DropDown_ActiveTab_SelectedValue != dropDown_ActiveTab.alias_SelectedValue) {
			sheet.property_AcceptActionItem_Title = "Reset";
		} else if (sheet.property_DropDown_TabDelegateActivation_SelectedValue != dropDown_TabDelegateActivationPolicy.alias_SelectedValue) {
			sheet.property_AcceptActionItem_Title = "Reset";
		} else if (sheet.property_ToggleButton_ShowBetaOption_Checked != toggleButton_ShowBetaOption.alias_Checked) {
			sheet.property_AcceptActionItem_Title = "Reset";
		} else {
			sheet.property_AcceptActionItem_Title = "Default";
		}
	}
}
// ******************************************************************************************************************************************

// function for ../main.qml
// ************************
function function_ChangeTitle_03() {
	sheet_Settings.property_AcceptActionItem_Title = "Default";
	sheet_Settings.property_DismissActionItem_Title = "Close";
}
// ************************************************************

function function_ChangeVisualStyle() {
	if (dropDown_VisualStyle.alias_SelectedValue == 0) {
		Application.themeSupport.setVisualStyle(VisualStyle.Dark);
	} else
		Application.themeSupport.setVisualStyle(VisualStyle.Bright);
}
// *****************************************************************

function function_ResetValue_01() {
	if (sheet.property_AcceptActionItem_Title == "Default") {
		systemDialog_Warning_02.alias_Id.show();
	} else {
		toggleButton_AdaptiveTheme.alias_Checked = sheet.property_ToggleButton_AdaptiveTheme_Checked;
		toggleButton_ShowTabsOnActionBar.alias_Checked = sheet.property_ToggleButton_ShowTabsOnActionBar_Checked;
		toggleButton_ShowBetaOption.alias_Checked = sheet.property_ToggleButton_ShowBetaOption_Checked;
		dropDown_VisualStyle.alias_SelectedValue = sheet.property_DropDown_VisualStyle_SelectedValue;
		dropDown_ActiveTab.alias_SelectedValue = sheet.property_DropDown_ActiveTab_SelectedValue;
		dropDown_TabDelegateActivationPolicy.alias_SelectedValue = sheet.property_DropDown_TabDelegateActivation_SelectedValue;
	}
}
// ****************************************************************************************************************************

// funkction for "../JavaScripts/JavaScript_Sheet_Settings.js"
// ***********************************************************
function function_SaveValue_01() {
	_settings.saveValueFor("ToggleButton_AdaptiveTheme_Checked", sheet.property_ToggleButton_AdaptiveTheme_Checked);
	_settings.saveValueFor("DropDown_VisualStyle_SelectedValue", sheet.property_DropDown_VisualStyle_SelectedValue);
	_settings.saveValueFor("ToggleButton_ShowTabsOnActionBar_Checked", sheet.property_ToggleButton_ShowTabsOnActionBar_Checked);
	_settings.saveValueFor("DropDown_ActiveTab_SelectedValue", sheet.property_DropDown_ActiveTab_SelectedValue);
	_settings.saveValueFor("DropDown_TabDelegateActivation_SelectedValue", sheet.property_DropDown_TabDelegateActivation_SelectedValue);
}
// ********************************************************************************************************************************

// funkction for "../JavaScripts/JavaScript_Sheet_Settings.js"
// ***********************************************************
function function_SetValue_01() {
	sheet.property_ToggleButton_AdaptiveTheme_Checked = toggleButton_AdaptiveTheme.alias_Checked;
	sheet.property_DropDown_VisualStyle_SelectedValue = dropDown_VisualStyle.alias_SelectedValue;
	sheet.property_ToggleButton_ShowTabsOnActionBar_Checked = toggleButton_ShowTabsOnActionBar.alias_Checked;
	sheet.property_DropDown_ActiveTab_SelectedValue = dropDown_ActiveTab.alias_SelectedValue;
	sheet.property_DropDown_TabDelegateActivation_SelectedValue = dropDown_TabDelegateActivationPolicy.alias_SelectedValue;
	sheet.property_ToggleButton_ShowBetaOption_Checked = toggleButton_ShowBetaOption.alias_Checked;
}
// ************************************************************************************************************************

function function_SetValue_02() {
	if (toggleButton_AdaptiveTheme.alias_Checked != false) {
		toggleButton_AdaptiveTheme.alias_Checked = false;
	} else if (dropDown_VisualStyle.alias_SelectedValue != 0) {
		dropDown_VisualStyle.alias_SelectedValue = 0;
	} else if (toggleButton_ShowTabsOnActionBar.alias_Checked != false) {
		toggleButton_ShowTabsOnActionBar.alias_Checked = false;
	} else if (dropDown_ActiveTab.alias_SelectedValue != 0) {
		dropDown_ActiveTab.alias_SelectedValue = 0;
	} else if (dropDown_TabDelegateActivationPolicy.alias_SelectedValue != 0) {
		dropDown_TabDelegateActivationPolicy.alias_SelectedValue = 0;
	} else if (toggleButton_ShowBetaOption.alias_Checked != 0) {
		toggleButton_ShowBetaOption.alias_Checked = 0;
	} else {
		// call funkction from "../JavaScripts/JavaScript_Sheet_Settings.js"
		JS.function_StopTimer_01();
		JS.function_ChangeAccess_04();
		JS.function_CancelSystemProgressToast_01();
		JS.function_ShowSystemToast_01();
		JS.function_SetValue_01();
		JS.function_SaveValue_01();
	}
}
// ****************************************************************************

function function_SetValue_03() {
	if (systemDialog_Warning_01.alias_Id.result == 3) {
		toggleButton_ShowBetaOption.alias_Checked = false;
	}
}
// *******************************************************

function function_ShowSystemDialog_01() {
	if (toggleButton_ShowBetaOption.alias_Checked == true) {
		systemDialog_Warning_01.alias_Id.show();
	}
}
// *********************************************************

function function_ShowSystemProgressToast_01() {
	if (systemDialog_Warning_02.alias_Id.result == 2) {
		systemProgressToast_Reset.alias_Id.show();
	}
}
// ****************************************************

function function_ShowSystemProgressToast_02() {
	systemProgressToast_Reset.alias_Id.show();
}
// *********************************************

// funkction for "../JavaScripts/JavaScript_Sheet_Settings.js"
// ***********************************************************
function function_ShowSystemToast_01() {
	systemToast_Reset.alias_Id.show();
}
// *************************************

function function_StartTimer_01() {
	if (systemDialog_Warning_02.alias_Id.result == 2) {
		timer_1000_01.alias_Id.start();
	}
}
// ****************************************************

// funkction for "../JavaScripts/JavaScript_Sheet_Settings.js"
// ***********************************************************
function function_StopTimer_01() {
	timer_1000_01.alias_Id.stop();
}
// *******************************
