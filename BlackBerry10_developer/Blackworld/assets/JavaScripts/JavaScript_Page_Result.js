// funkctions for "asset://JavaScripts/JavaScript_Page_BlackWorld.js"

function function_CancelSystemToast_01() {
    systemToast_for_Exit_01.cancel();
}
//****************************************

function function_CloseDialog_01() {
    dialog_for_Icon.close();
}
//**********************************

function function_GetImages() {
	var url = navigationPane.property_ResultUrl;
	var xhr = new XMLHttpRequest();

	xhr.onreadystatechange = function() {
		if (xhr.readyState === XMLHttpRequest.DONE) {
			if (xhr.status === 200) {

				var response = JSON.parse(xhr.responseText);

				var lenght = response.result.images.length;
				for (var i = 0; i < lenght; i++) {
					var results = response.result.images[i];

					groupDataModel.append({
						"image" : results.images_path
					});
				}
			}
		}
	};

	xhr.open("GET", url, true);
	xhr.send();
}
//***********************************************************

function function_GetInfo() {
	customListView_Info.alias_ArrayDataModel.clear();
	customListView_Review.alias_ArrayDataModel.clear();
	
	var url = navigationPane.property_ResultUrl;
	var xhr = new XMLHttpRequest();

	xhr.onreadystatechange = function() {
		if (xhr.readyState === XMLHttpRequest.DONE) {
			if (xhr.status === 200) {

				var response = JSON.parse(xhr.responseText);
				var result = response.result;

				page.property_DownloadPath = result.download_path;
				page.property_GithubPath = result.github_path;
				page.property_Title = result.title;
				page.property_UrlPath = result.url_path;

				page.titleBar.title = result.title + page.property_EmptyText;
				

				// pro zjisteni typu aplikace
				if (result.description == "android app") {
					acceptActionItem.title = "Dovnload";
				} else {
					acceptActionItem.title = "Send to email";
				}

				
				signal_from_Page();

				webImageView.url = result.icon_path;
				
				customHeader_01.subtitle = result.version;
				customHeader_02.subtitle = result.developer;
				customHeader_03.subtitle = result.download_size;
				customHeader_04.subtitle = result.date_of_publication;

				customTextArea_01_01.text = result.overview;
				customTextArea_01_02.text = result.features;

				customActionItem_SearchMore.title = "More from: " + result.developer;

				var lenght = response.result.images.length;
				for (var i = 0; i < lenght; i++) {
					var results = response.result.images[i];

					customListView_Info.alias_ArrayDataModel.append({
						"image" : results.images_path
					});
				}

				var lenght = response.reviews.length;
				for (var i = 0; i < lenght; i++) {
					var results = response.reviews[i];

					customListView_Review.alias_ArrayDataModel.append({
						"name" : results.name,
						"stars" : results.stars + " stars",
						"review" : results.review
					});
				}
			}
		}
	};

	xhr.open("GET", url, true);
	xhr.send();
}
//***********************************************************************************

function function_ChangeAccess_01() {
	if (page.property_DownloadPath == "") {
		page.property_Enabled_01 = false;
	} else {
		page.property_Enabled_01 = true;
	}
}
//*****************************************

function function_ChangeAccess_011() {
	if (titleBar.title == page.property_LoadingText + page.property_EmptyText) {
		page.property_Enabled_02 = false;
	} else {
		page.property_Enabled_02 = true;
    }
}
//******************************************************************************

function function_ChangeAccess_03() {
    if (page.property_Exit_01 == true) {
        page.property_Exit_01 = false;
    }
}
// *************************************

function function_ChangeAccess_04() {
	if (navigationPane.property_ToggleButton_ShowBetaOption_Checked == true && property_GithubPath != "") {
		customActionItem_Github.enabled = true;
	} else {
        customActionItem_Github.enabled = false;
	}
}
//*********************************************************************************************************

function function_ChangeColor_01() {
	if (page.property_LoadingFinished_01 == true) {
		if (page_BlackWorld.property_VisualStyle == 0) {
			mainContainer_for_Pages.background = Color.Black;
		} else {
			mainContainer_for_Pages.background = Color.White;
		}
	}
}
// *****************************************************************

function function_ChangeDeviceScreen_01() {
	if (_display.asClassic_Q5_Q10()) {
		page.property_Widht = 720;
		page.property_Height = 720;
	} else if (_display.asPassport()) {
		page.property_Widht = 1440;
		page.property_Height = 1440;
	} else if (_display.isZ10()) {
		page.property_Widht = 768;
		page.property_Height = 1280;
	} else if (_display.isZ3_Z30()) {
		page.property_Widht = 720;
		page.property_Height = 1280;
	}
}
//*****************************************

// funkction for "asset/Custom/ActionItems/CustomActionItems_Download.qml"
function function_ChangeLink_01() {
	webView.url = property_DownloadPath;
}
//************************************************************************

function function_ChangeOpacity_01() {
	mainContainer_for_Pages.opacity = 0.5;
}
//***********************************************

function function_ChangeVisibility_01() {
	page.actionBarVisibility = ChromeVisibility.Hidden;
	navigationPane.property_TitleBar_Visibility = "Hidden";
}
//*****************************************************

function function_ChangeVisible_01() {
    if (segmentedControl.selectedValue == 1) {
        container_01.visible = true;
        container_02.visible = false;
    } else if (segmentedControl.selectedValue == 2) {
        container_01.visible = false;
        container_02.visible = true;
    }
}
//***************************************************

function function_OpenDialog_01() {
	dialog_for_Icon.open();
}
// ********************************

function function_OpenSheet_01() {
    if (page.property_LoadingFinished_02 == true) {
        sheet_Images.open();
    }
}
// ************************************************

function function_SaveValue_01() {
    if (systemToast_for_Exit_01.result == SystemUiResult.ButtonSelection) {
        _settings.saveValueFor("property_Exit_01", false);
    }
}
// ************************************************************************

function function_SaveValue_02() {
    if (systemToast_for_GitHub.result == SystemUiResult.ButtonSelection) {
        _settings.saveValueFor("property_Exit_02", false);
    }
}
// ************************************************************************


function function_SetValue_01() {
	page.property_LoadingFinished_01 = true;
}
// *****************************************

function function_SetValue_02() {
    navigationPane.peekEnabled = false;
}
// ************************************

function function_SetValue_03() {
    navigationPane.peekEnabled = true;
}
// ***********************************

function function_SetValue_04() {
	navigationPane.property_TitleBar_Visibility = "Visible";
    mainContainer_for_Pages.background = Color.Transparent;
    mainContainer_for_Pages.opacity = 1.0;
    page.actionBarVisibility = ChromeVisibility.Visible;
}
// ***************************************************************

function function_ShowSystemToast_01() {
    if (page.property_Exit_01 == true) {
        systemToast_for_Exit_01.show();
    }
}
// *************************************

//funkction for "asset://Pages/Page_Result.qml"
function function_StartTimer_01() {
	customTimer_for_ActivityIndicator_Running.alias_timer.start();
}
// *************************************************************
