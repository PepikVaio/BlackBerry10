import bb.cascades 1.4
//********************

// MenuDefinition for "../main.qml"
MenuDefinition {
    
    settingsAction: SettingsActionItem {
        
        onTriggered: {
            sheet_Settings.open()
        }
    }
}
