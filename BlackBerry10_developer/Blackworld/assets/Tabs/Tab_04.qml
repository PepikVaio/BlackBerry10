import bb.cascades 1.4
//********************

// import folder
import "../Pages"
//***************

Tab {
    title: "My world"
    description: "(next update)"
    delegateActivationPolicy: TabDelegateActivationPolicy = tabbedPane.property_TabDelegateActivationPolicy

    delegate: Delegate {

        Page_BlackWorld {

            // property for "../JavaScripts/JavaScript_Page_BlackWorld.js"
            property string property_ActiveTab: tab_04.title
            //************************************************************
        }
    }
}
