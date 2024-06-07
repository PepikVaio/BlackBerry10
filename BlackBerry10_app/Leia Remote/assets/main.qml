import bb.cascades 1.4

// import folders
import "Custom/Menu"
import "Custom/SystemToasts"
import "Custom/Timers"
import "Pages"
import "Sheets/"
//**************************

// import JavaScripts
import "JavaScripts/JavaScript_main.js" as JS
//*******************************************

TabbedPane {
    id: tabbedPane
    activeTab: tab_01
    
    property int property_KodiConnection // (get data from "asset:///JavaScripts/JavaScript_main.js")
    
    // property for "Custom_SystemToast_01"
    // property for "Custom_SystemToast_02"
    //    property bool property_ShowSystemToast_01: true // (get data from "asset:///JavaScripts/JavaScript_main.js")
    //    property bool property_ShowSystemToast_02: true // (get data from "asset:///JavaScripts/JavaScript_main.js")
    //*********************************************
    
    // property for "asset:///Customs/CustomSystemToast_01.qml"
    property string property_KodiName: sheet_Settings.aliasTextField_01 // (get data from "asset:///Sheets/Sheet_Settings.qml")
    //*****************************************************************
    
    // property for "onCreationCompleted"
    // property for "asset:///Pages/Page_Remote.qml"
    property string property_KodiIpAdress: sheet_Settings.aliasTextField_02 // (get data from "asset:///Sheets/Sheet_Settings.qml")
    property string property_KodiPort: sheet_Settings.aliasTextField_03 // (get data from "asset:///Sheets/Sheet_Settings.qml")
    //*********************************************************************
    
    Menu.definition: Custom_MenuDefinition {
    }
    
    tabs: [
        
        Tab {
            id: tab_01
            title: qsTr("Remote") + Retranslate.onLanguageChanged
            
            Page_Remote {
                id: page_Remote
            }
        },
        
        Tab {
            id: tab_02
            title: qsTr("Movies") + Retranslate.onLanguageChanged
            
            Page {
                
                titleBar: TitleBar {
                    title: "Movies"
                }
            }
        },
        
        Tab {
            enabled: false
            id: tab_03
            title: qsTr("TV Shows") + Retranslate.onLanguageChanged
        },
        
        Tab {
            enabled: false
            id: tab_04
            title: qsTr("Music") + Retranslate.onLanguageChanged
        },
        
        Tab {
            enabled: false
            id: tab_05
            title: qsTr("Addons") + Retranslate.onLanguageChanged
        }
    ]
    
    attachedObjects: [
        
        Custom_SystemToast_01 {
            id: custom_SystemToast_01
        },
        
        Custom_SystemToast_02 {
            id: custom_SystemToast_02
        },
        
        Custom_Timer_01 {
            id: custom_Timer_01
        },
        
        Custom_Timer_02 {
            id: custom_Timer_02
        },
        
        Sheet_Settings {
            id: sheet_Settings
        }
    ]
    
    onCreationCompleted: {
        custom_Timer_01.alias_Timer_01.start()
    }
}

// GET
//http://192.168.1.5:8080/jsonrpc?request={"jsonrpc":"2.0","method":"JSONRPC.Ping","id":"1"}
// POST
//http://192.168.1.5:8080/jsonrpc
//Content-Type", "application/json
//{"jsonrpc":"2.0","method":"JSONRPC.Ping","id":"1"}
