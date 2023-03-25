import bb.cascades 1.4
//********************

// import folder
import "../Custom/ActionItems"
//****************************

// import JavaScript
import "../JavaScripts/JavaScript_Page_Github.js" as JS
//*****************************************************
Page {

    ScrollView {
        id: scrollView
        scrollViewProperties.pinchToZoomEnabled: true
        scrollViewProperties.scrollMode: ScrollMode.Both

        WebView {
            id: webView
            // url: (get value from "../JavaScripts/JavaScript_Links.js")

            settings.viewport: {
                "initial-scale": 1.0
            }
        }
    }

    // actions from "../Custom/..."
    actions: [

        ActionItem_GoToBackward {
        },

        ActionItem_Home {
        },

        ActionItem_ScrollToTopWeb {
        },

        ActionItem_Reload {
        },

        ActionItem_GoToForward {
        },

        ActionItem_ScrollToBottomWeb {
        }
    ]

    onCreationCompleted: {
        // call funkction from "../JavaScripts/JavaScript..."
        JS.function_ChangeLink_02()
    }
}
