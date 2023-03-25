import bb.cascades 1.4
//********************

// import folder
import "../Pages"
//***************

Tab {
    title: "Games"
    description: "BlackBerry and android games"
    delegateActivationPolicy: TabDelegateActivationPolicy = tabbedPane.property_TabDelegateActivationPolicy

    delegate: Delegate {

        // page from "../Pages/Page_BlackWorld.qml"
        Page_BlackWorld {
            id: page_BlackWorld

            // property for "../JavaScripts/JavaScript_Page_BlackWorld.js"
            property string property_ActiveTab: tab_03.title
            //************************************************************

            // property for "../JavaScripts/JavaScript_Page_Result.js"
            property int property_VisualStyle: sheet_Settings.property_DropDown_VisualStyle_SelectedValue
            //*******************************************************************************************
        }
    }
}
