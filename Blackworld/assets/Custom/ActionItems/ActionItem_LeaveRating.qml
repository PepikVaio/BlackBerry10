import bb.cascades 1.4
//********************

// ActionItem for "../Pages/Page_Result.qml"
ActionItem {
    enabled: page.property_Enabled_02 // (get value from "../Pages/Page_Result.qml" "onSignal_from_Page")
    title: "Leave rating"
    imageSource: "asset:///Icons/Icon_Rate.png"
    ActionBar.placement: ActionBarPlacement.OnBar

    onTriggered: {
        invocation.trigger("bb.action.SENDEMAIL")
    }

    shortcuts: [

        SystemShortcut {
            type: SystemShortcuts.Reply
        }
    ]

    attachedObjects: [

        Invocation {
            id: invocation

            query: InvokeQuery {
                id: invokeQuery
                uri: "mailto:Wajsar.Josef@hotmail.com.?subject=Rating BlackWorld - " + page.property_Title + "!" //&body="
                onQueryChanged: invokeQuery.updateQuery()
            }
        }
    ]
}
