import bb.cascades 1.4
//********************

// import folder
import "../Pages"
//***************

Tab {
    id: tab_01
    title: "News"
    description: "News and upcoming"
    delegateActivationPolicy: TabDelegateActivationPolicy = tabbedPane.property_TabDelegateActivationPolicy

    delegate: Delegate {

        Page_BlackWorld {
            id: page_BlackWorld

            // property for "../JavaScripts/JavaScript_Page_BlackWorld.js"
            property string property_ActiveTab: tab_01.title
            //************************************************************

            // property for "../JavaScripts/JavaScript_Page_Result.js"
            property int property_VisualStyle: sheet_Settings.property_DropDown_VisualStyle_SelectedValue
            //*******************************************************************************************

            onProperty_ToggleButton_ShowBetaOption_CheckedChanged: {
                // call funkction from "../Pages/Page_BlackWorld.qml"
                function_Command_01()
            }
        }
    }
}
