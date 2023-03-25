// funkction for "../Sheets/Sheet_Settings.qml"


//funkction for "../Custom/ActionItems/ActionItem_Github.qml"
function function_CreatePage_02() {
    navigationPane.push(componentDefinition_for_Page_Github.createObject());
}
// *********************************************************************************

//funkction for "../Pages/Page_Github.qml
//funkction for "../Custom/ActionItems/ActionItem_Home.qml
function function_ChangeLink_02() {
  webView.url = page.property_GithubPath;
}
//**************************************************************

