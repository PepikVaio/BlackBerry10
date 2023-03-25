import bb.cascades 1.4

// MenuDefinition for "asset:///main.qml"
MenuDefinition {

    helpAction: HelpActionItem {
    }

    actions: [
        ActionItem {
            enabled: false
        },
        ActionItem {
            enabled: false
        },
        ActionItem {
            enabled: false
        }
    ]

    settingsAction: SettingsActionItem {
        onTriggered: {
            sheet_Settings.open()
        }
    }
}
