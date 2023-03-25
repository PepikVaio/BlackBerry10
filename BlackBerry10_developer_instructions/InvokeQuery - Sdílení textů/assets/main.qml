import bb.cascades 1.0
Page {
    Container {
        Label {
            text: "What is your favorite food?"
        }
        TextField {
            id: field1
        }
        Label {
            text: "What is your favorite drink?"
        }
        TextField {
            id: field2
        }
    }

    actions: [
        ActionItem {
            title: "share"
            //imageSource: "asset:///images/share.png"
            ActionBar.placement: ActionBarPlacement.OnBar

            attachedObjects: [

                Invocation {
                    id: invoke

                    query: InvokeQuery {
                        id: invq
                        mimeType: "text/plain"
                        invokeActionId: "bb.action.SHARE"
                        invokerIncluded: true
                        data: "My favorite meal is " + field1.text + " and " + field2.text + "! Shared using Brian's Example app!"
                        onQueryChanged: invq.updateQuery()
                    }
                }
            ]
            onTriggered: {
                invoke.trigger("bb.action.SHARE")
            }
        }
    ]
}
