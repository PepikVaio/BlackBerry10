import bb.cascades 1.4

// MenuDefinition for "../Pages/Page.qml"
MenuDefinition {

    helpAction: HelpActionItem {
        enabled: false
    }

    actions: [

        ActionItem {
            enabled: false
            title: qsTr("About app") + Retranslate.onLanguageChanged
        },

        ActionItem {
            enabled: false
            title: qsTr("Other apps") + Retranslate.onLanguageChanged
        },

        ActionItem {
            enabled: false
            title: qsTr("Action 3") + Retranslate.onLanguageChanged
        }
    ]

    settingsAction: SettingsActionItem {
        enabled: false
    }
}
