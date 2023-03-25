import bb.cascades 1.4
//********************

// ActionItem for "../Pages/Page_Result.qml"
ActionItem {
    enabled: page.property_Enabled_02 // (get value from "../Pages/Page_Result.qml" "onSignal_from_Page")
    title: "Share"
    imageSource: "asset:///Icons/Icon_Share.png"
    ActionBar.placement: ActionBarPlacement.OnBar

    onTriggered: {
        invocation.trigger("bb.action.SHARE")
    }

    attachedObjects: [

        Invocation {
            id: invocation

            query: InvokeQuery {
                id: invokeQuery
                mimeType: "text/plain"
                data: "Hi, check out this app, you might be interested: " + page.property_UrlPath

                onQueryChanged: {
                    invokeQuery.updateQuery()
                }
            }
        }
    ]
}
