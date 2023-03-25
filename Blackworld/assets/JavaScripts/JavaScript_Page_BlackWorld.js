//    __              _   _             __         
//   / _|_  _ _ _  __| |_(_)___ _ _    / _|___ _ _ 
//  |  _| || | ' \/ _|  _| / _ \ ' \  |  _/ _ \ '_|
//  |_|  \_,_|_||_\__|\__|_\___/_||_| |_| \___/_|  
//                                                 
//   ___                 ___ _         _  __      __       _    _ 
//  | _ \__ _ __ _ ___  | _ ) |__ _ __| |_\ \    / /__ _ _| |__| |
//  |  _/ _` / _` / -_) | _ \ / _` / _| / /\ \/\/ / _ \ '_| / _` |
//  |_| \__,_\__, \___|_|___/_\__,_\__|_\_\ \_/\_/\___/_| |_\__,_|
//           |___/   |___|                                        
//

// main data
var config = {
	count_01 : 0,
	count_02 : 1,
};
// **************

// function for "../JavaScripts/JavaScript_Page_BlackWolrd.js"
// ***********************************************************
function function_AddOption_01() {
    option_News.text = "News";
	option_News.description = "news";
	option_News.value = (++config.count_01);
	titleBar.addOption(option_News);

	option_Upcoming.text = "Upcoming";
	option_Upcoming.description = "upcoming";
	option_Upcoming.value = (++config.count_01);
	titleBar.addOption(option_Upcoming);
}
// *********************************************

// function for "../JavaScripts/JavaScript_Page_BlackWolrd.js"
// ***********************************************************
function function_AddOption_02() {
	option_News.text = "News";
	option_News.description = "news";
	option_News.value = 1;
	titleBar.addOption(option_News);

	option_Upcoming.text = "Upcoming";
	option_Upcoming.description = "upcoming";
	option_Upcoming.value = 2;
	titleBar.addOption(option_Upcoming);

	option_Beta.text = "(Beta!)";
	option_Beta.description = "beta";
	option_Beta.value = 3;
	titleBar.addOption(option_Beta);
}
// ******************************************

// function for "../JavaScripts/JavaScript_Page_BlackWolrd.js"
// ***********************************************************
function function_AddOption_03() {
	var option = componentDefinition_for_Options.createObject();
	option.text = "All";
	option.value = (++config.count_01);
	titleBar.addOption(option);

	var option = componentDefinition_for_Options.createObject();
	option.text = "Native";
	option.value = (++config.count_01);
	titleBar.addOption(option);

	var option = componentDefinition_for_Options.createObject();
	option.text = "Web";
	option.value = (++config.count_01);
	titleBar.addOption(option);

	var option = componentDefinition_for_Options.createObject();
	option.text = "Android";
	option.value = (++config.count_01);
	titleBar.addOption(option);
}
// *************************************************************

function function_CreatePage_01() {
	navigationPane.push(componentDefinition_for_Page_Result.createObject());
}
// *************************************************************************

// function for "../JavaScripts/JavaScript_Page_BlackWolrd.js"
// ***********************************************************
function function_GetContent() {
	listView_for_Pages.property_GroupDataModel.clear();
	
	var xhr = new XMLHttpRequest();

	xhr.onreadystatechange = function() {
		if (xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {

			var response = JSON.parse(xhr.responseText);
			var lenght = response[navigationPane.property_OptionDescription].length;

			for (var i = 0; i < lenght; i++) {
				var results = response[navigationPane.property_OptionDescription][i];

				if (navigationPane.property_ActiveTab == "News") {
					if (titleBar.selectedValue == 1 || titleBar.selectedValue == 3) {
						// call function from "../JavaScripts/JavaScript_Page_BlackWorld.js"
						function_GetDescriptions();
					} else if (titleBar.selectedValue == 2) {
						// call function from "../JavaScripts/JavaScript_Page_BlackWorld.js"
						function_GetDescriptions_02();
					}
				} else if (navigationPane.property_ActiveTab == "Apps" || navigationPane.property_ActiveTab == "Games") {
					if (titleBar.selectedValue == 1) {
						// call function from "../JavaScripts/JavaScript_Page_BlackWorld.js"
						function_GetDescriptions();
					} else if (titleBar.selectedValue == 2 && results.description == "native") {
						// call function from "../JavaScripts/JavaScript_Page_BlackWorld.js"
						function_GetDescriptions();
					} else if (titleBar.selectedValue == 3 && results.description == "web") {
						// call function from "../JavaScripts/JavaScript_Page_BlackWorld.js"
						function_GetDescriptions();
					} else if (titleBar.selectedValue == 4 && results.description == "android") {
						// call function from "../JavaScripts/JavaScript_Page_BlackWorld.js"
						function_GetDescriptions();
					}
				} else if (navigationPane.property_ActiveTab == "My world") {
					// ...
				}

				// function for "../JavaScripts/JavaScript_Page_BlackWorld.js"
				function function_GetDescriptions() {
					listView_for_Pages.property_GroupDataModel.insert({
						"date" : results.date,
						"id" : results.id,
						"version" : "ver.: " + results.version,
						"description" : results.description,
						"title" : results.title,
						"overview" : results.overview,
						"icon" : "https://i.postimg.cc/" + results.icon_path + "/icon-300x300.png",
						"url" : "http://my-json-server.typicode.com/pepikvaio/" + results.url_path + "/db",
					});
				}

				// function for "../JavaScripts/JavaScript_Page_BlackWorld.js"
				function function_GetDescriptions_02() {
					listView_for_Pages.property_GroupDataModel.insert({
						"date" : results.date,
						"id" : results.id,
						"version" : results.completed,
						"description" : results.description,
						"title" : results.title,
						"overview" : results.overview,
						"icon" : "https://i.postimg.cc/" + results.icon_path + "/icon-300x300.png",
						"url" : "http://my-json-server.typicode.com/pepikvaio/" + results.url_path + "/db",
					});
				}
			}

			if (navigationPane.property_ActiveTab == "Apps" || navigationPane.property_ActiveTab == "Games") {

				var lenght = response.next.length;
				for (var i = 0; i < lenght; i++) {

					var results = response.next[i];
					if (results.url_path == "http://my-json-server.typicode.com/pepikvaio/json_blackworldapps_" + (++config.count_02) + "/db") {
						// call function from "../JavaScripts/JavaScript_Page_BlackWorld.js"
						config.url_Apps = function_ChangeVar_01();
						config.count_02 = function_ChangeVar_02();
						function_Loop_01();
					} else {
						// call function from "../JavaScripts/JavaScript_Page_BlackWorld.js"
						config.url_Apps = function_ResetVar_01();
						config.count_02 = function_ResetVar_02();
					}
				}
			}
		}
	};

	xhr.open("GET", navigationPane.property_JsonUrl, true);
	xhr.send();
}
// *********************************************************************************************************************************************

function function_ChangeActionMenuVisualState() {
	if (page.actionMenuVisualState == ActionMenuVisualState.AnimatingToHidden) {
		function_RequestFocus_01();
	}
}

function function_ChangeContent_01() {
	if (navigationPane.property_ActiveTab == "News") {
		navigationPane.property_OptionDescription = titleBar.selectedOption.description;
		navigationPane.property_JsonUrl = "http://my-json-server.typicode.com/pepikvaio/json_blackworldnews/db";
	} else if (navigationPane.property_ActiveTab == "Apps") {
		navigationPane.property_OptionDescription = "apps";
		navigationPane.property_JsonUrl = "http://my-json-server.typicode.com/pepikvaio/json_blackworldapps_1/db";
	} else if (navigationPane.property_ActiveTab == "Games") {
		navigationPane.property_OptionDescription = "games";
		navigationPane.property_JsonUrl = "http://my-json-server.typicode.com/pepikvaio/json_blackworldgames_1/db";
	} else if (navigationPane.property_ActiveTab == "My world") {
		// ...
	}
	
	// call function from "../JavaScripts/JavaScript_Page_BlackWorld.js
	function_GetContent();
}
// ****************************************************************************************************************

// function for "../Custom/ActionItems/ActionItem_ChangeLayou.qml"
// ***************************************************************
function function_ChangeImage_01() {
    if (navigationPane.property_ActionItem_ChangeLayout_ImageSource == "asset:///Icons/Icon_GridView.png") {
        navigationPane.property_ActionItem_ChangeLayout_ImageSource = "asset:///Icons/Icon_ListView.png";
    } else {
        navigationPane.property_ActionItem_ChangeLayout_ImageSource = "asset:///Icons/Icon_GridView.png";
    }
}

// function for "../Custom/ActionItems/ActionItem_Sort.qml"
// ********************************************************
function function_ChangeImage_02() {
    if (navigationPane.property_ActionItem_Sort_ImageSource == "asset:///Icons/Icon_Sort_(show).png") {
        navigationPane.property_ActionItem_Sort_ImageSource = "asset:///Icons/Icon_Sort_(hide).png";
    } else {
        navigationPane.property_ActionItem_Sort_ImageSource = "asset:///Icons/Icon_Sort_(show).png";
    }
}

// function for "../Custom/ActionItems/ActionItem_ChangeLayout.qml"
// ****************************************************************
function function_ChangeLayout_01() {
	if (navigationPane.property_ListView_for_Pages_Layout == listView_for_Pages.property_StackListLayout) {
		navigationPane.property_ListView_for_Pages_Layout =  listView_for_Pages.property_GridListLayout;
	} else {
		navigationPane.property_ListView_for_Pages_Layout = listView_for_Pages.property_StackListLayout;
	}
}
// ********************************************************************************************************

// function for "../Custom/ActionItems/ActionItem_ChangeLayou.qml"
// ***************************************************************
function function_ChangeTitle_01() {
    if (navigationPane.property_ActionItem_ChangeLayout_Title == "Grid view") {
        navigationPane.property_ActionItem_ChangeLayout_Title = "List view";
    } else {
        navigationPane.property_ActionItem_ChangeLayout_Title = "Grid view";
    }
}
// ****************************************************************************

// function for "../Custom/ActionItems/ActionItem_Sort.qml"
// ********************************************************
function function_ChangeTitle_02() {
    if (navigationPane.property_ActionItem_Sort_Title == "Show sort") {
        navigationPane.property_ActionItem_Sort_Title = "Hide sort";
    } else {
        navigationPane.property_ActionItem_Sort_Title = "Show sort";
    }
}
// ********************************************************************

// function for "../JavaScripts/JavaScript_Page_BlackWorld.js"
// ***********************************************************
function function_ChangeVar_01() {
	return "http://my-json-server.typicode.com/pepikvaio/json_blackworldapps_" + config.count_02 + "/db";
}
// ******************************************************************************************************

// function for "../JavaScripts/JavaScript_Page_BlackWorld.js"
// ***********************************************************
function function_ChangeVar_02() {
	return (++config.count_02);
}
// **********************************************************

// function for "../Custom/ActionItems/ActionItem_Sort.qml.qml"
function function_ChangeVisibility_01() {
	if (navigationPane.property_TitleBar_Visibility == "Visible") {
		navigationPane.property_TitleBar_Visibility = "Hidden";
	} else {
		navigationPane.property_TitleBar_Visibility = "Visible";
	}
}
// ****************************************************************

// function for "../Custom/ActionItems/ActionItem_ChangeLayout.qml"
// ****************************************************************
function function_ChangeVisible_01() {
    if (navigationPane.property_Container_Visible_01 == true || navigationPane.property_Container_Visible_02 == false) {
        navigationPane.property_Container_Visible_01 = false;
        navigationPane.property_Container_Visible_02 = true;
    } else {
        navigationPane.property_Container_Visible_01 = true;
        navigationPane.property_Container_Visible_02 = false;
    }
}
// *********************************************************************************************************************

// function for "../Custom/ActionItems/ActionItem_Sort.qml.qml"
// ************************************************************
function function_ChangeVisible_02() {
	if (navigationPane.property_Menu_for_SortSettings_Visible == false) {
		navigationPane.property_Menu_for_SortSettings_Visible = true;
	} else {
		navigationPane.property_Menu_for_SortSettings_Visible = false;
	}
}
// **********************************************************************

function function_CheckModelName_01() {
	if (_hardware.modelName() == "Classic") {
		property_Indentation_01 = 1;
		property_Indentation_02 = 0;
	} else {
		property_Indentation_01 = 0;
		property_Indentation_02 = 2;
	}
}
// ******************************************

function function_LoadOption_01() {
	if (navigationPane.property_ActiveTab == "News" && navigationPane.property_ToggleButton_ShowBetaOption_Checked == false) {
        // call function from "../JavaScripts/JavaScript_Page_BlackWorld.js"
		function_AddOption_01();
	} else if (navigationPane.property_ActiveTab == "News" && navigationPane.property_ToggleButton_ShowBetaOption_Checked == true) {
        // call function from "../JavaScripts/JavaScript_Page_BlackWorld.js"
		function_AddOption_02();
	} else if (navigationPane.property_ActiveTab == "Apps" || navigationPane.property_ActiveTab == "Games") {
        // call function from "../JavaScripts/JavaScript_Page_BlackWorld.js"
		function_AddOption_03();
	} else if (navigationPane.property_ActiveTab == "My world") {
		// ...
	}
}
// *********************************************************************************************************************************

function function_LoadOption_02() {
	if (navigationPane.property_ToggleButton_ShowBetaOption_Checked == true) {
        // call function from "../JavaScripts/JavaScript_Page_BlackWorld.js"
		function_AddOption_02();
	} else {
        // call function from "../JavaScripts/JavaScript_Page_BlackWorld.js"
		function_RemoveOption_01();
	}
}
// ****************************************************************************

// function for "../JavaScripts/JavaScript_Page_BlackWorld.js"
// ***********************************************************
function function_Loop_01() {

	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function() {
		if (xhr.readyState === XMLHttpRequest.DONE) {
			if (xhr.status === 200) {

				var response = JSON.parse(xhr.responseText);
				var lenght = response.apps.length;
				for (var i = 0; i < lenght; i++) {

					var results = response.apps[i];
					if (titleBar.selectedValue == 1) {
						// call function from "../JavaScripts/JavaScript_Page_BlackWorld.js"
						function_GetDescriptions();
					} else if (titleBar.selectedValue == 2) {
						if (results.description === "native") {
							// call function from "../JavaScripts/JavaScript_Page_BlackWorld.js"
							function_GetDescriptions();
						}
					} else if (titleBar.selectedValue == 3) {
						if (results.description === "web") {
							// call function from "../JavaScripts/JavaScript_Page_BlackWorld.js"
							function_GetDescriptions();
						}
					} else if (titleBar.selectedValue == 4) {
						if (results.description === "android") {
							// call function from "../JavaScripts/JavaScript_Page_BlackWorld.js"
							function_GetDescriptions();
						}
					}

					// function for "../JavaScripts/JavaScript_Page_BlackWorld.js"
					function function_GetDescriptions() {
						listView_for_Pages.property_GroupDataModel.insert({
									"id" : results.id,
									"version" : "ver.: " + results.version,
									"description" : results.description + " app",
									"title" : results.title,
									"overview" : results.overview,
									"icon" : "https://i.postimg.cc/" + results.icon_path + "/icon-300x300.png",
									"url" : "http://my-json-server.typicode.com/pepikvaio/" + results.url_path + "/db"
								});
					}
				}

				var lenght = response.next.length;
				for (var i = 0; i < lenght; i++) {
					var results = response.next[i];

					if (results.url_path == "http://my-json-server.typicode.com/pepikvaio/json_blackworldapps_" + config.count_02 + "/db") {
						// call function from "../JavaScripts/JavaScript_Page_BlackWorld.js"
						config.url_Apps = function_ChangeVar_01();
						config.count_02 = function_ChangeVar_02();
						function_Loop_01();
					} else {
						// call function from "../JavaScripts/JavaScript_Page_BlackWorld.js"
						config.url_Apps = function_ResetVar_01();
						config.count_02 = function_ResetVar_02();
					}
				}
			}
		}
	};

	xhr.open("GET", config.url_Apps, true);
	xhr.send();
}
// *****************************************************************************************************************************************

// function for "../JavaScripts/JavaScript_Page_BlackWolrd.js"
// ***********************************************************
function function_RemoveOption_01() {
	titleBar.removeOption(option_Beta);
}
// ************************************

function function_RequestFocus_01() {
	
    if (_hardware.modelName() == "Passport") {
    	if (navigationPane.property_Menu_for_SortSettings_Visible == false) {
    		listView_for_Pages.requestFocus();
    	} else {
    		menu_for_FilterSettings.requestFocus();
    	}
    }
}
// **********************************************************************

// function for "../JavaScripts/JavaScript_Page_BlackWorld.js"
// ***********************************************************
function function_ResetVar_01() {
	return "http://my-json-server.typicode.com/pepikvaio/json_blackworldapps_1/db";
}
// ********************************************************************************

// function for "../JavaScripts/JavaScript_Page_BlackWorld.js"
// ***********************************************************
function function_ResetVar_02() {
	return 1;
}
// ***********************************************************

function function_SetValue_01() {
	if (navigationPane.property_ToggleButton_ShowBetaOption_Checked == false) {
		navigationPane.property_Beta_02 = false;
	} else {
		navigationPane.property_Beta_02 = true;
	}
}
// ****************************************************************************

function function_SetValue_02() {
	if (navigationPane.property_ActiveTab == "News") {
		if (titleBar.selectedValue == 1 || titleBar.selectedValue == 3) {
			navigationPane.property_Grouping = "None";
			navigationPane.property_SortedAscending = false;
			navigationPane.property_SortingKeys = "date";
		} else {
			navigationPane.property_Grouping = "None";
			navigationPane.property_SortedAscending = false;
			navigationPane.property_SortingKeys = "completed";
		}
	} else if (navigationPane.property_ActiveTab == "Apps" || navigationPane.property_ActiveTab == "Games") {
		navigationPane.property_Grouping = "None";
		navigationPane.property_SortedAscending = true;
		navigationPane.property_SortingKeys = "title";
	} else if (navigationPane.property_ActiveTab == "My world") {
		// ...
	}
}
//***********************************************************************************************************
