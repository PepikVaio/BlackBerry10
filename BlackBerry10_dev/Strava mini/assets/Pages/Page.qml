import bb.cascades 1.4
import "asset:///Custom/TitleBars"

Page {

    property int property_VisibleContainer: 1

    titleBar: TitleBar {
        title: "Mini for Strava"
        visibility: ChromeVisibility.Overlay
    }

    Container {

        layout: DockLayout {
        }

        ScrollView {
            id: scrollView

            Container {

                //visible
                Container {
                    id: container_01

                    //url
                    WebView {
                        id: webView_01

                        onLoadingChanged: {
                            if (loadRequest.status == WebLoadStatus.Succeeded) {
                                translationY = ui.sdu(-25)
                            }

                            if (webView_02.url == "") {
                                webView_02.url = "https://www.strava.com/dashboard?feed_type=my_activity"
                            }
                        }
                    }
                }

                //visible
                Container {
                    id: container_02

                    //url
                    WebView {
                        id: webView_02

                        onLoadingChanged: {
                            if (loadRequest.status == WebLoadStatus.Succeeded) {
                                translationY = ui.sdu(-25)
                            }

                            if (webView_01.url == "") {
                                webView_01.url = "https://www.strava.com/dashboard?feed_type=my_activity"
                            }
                        }
                    }
                }
            }
        }

        Container {
            topPadding: ui.sdu(11.4)
            background: Color.White

            Header {
                id: header
                title: "Dashboard"
                mode: HeaderMode.Interactive
                subtitle: "Your Activities"

                onClicked: {
                    if (header.subtitle == "Your Activities") {
                        header.subtitle = "Following"

                        if (webView_02.url == "") {
                            webView_02.url = "https://www.strava.com/dashboard?feed_type=my_activity"
                        }

                        container_01.visible = false
                        container_02.visible = true

                    } else {
                        header.subtitle = "Your Activities"

                        if (webView_01.url == "") {
                            webView_01.url = "https://www.strava.com/dashboard?feed_type=following"
                        }

                        container_02.visible = false
                        container_01.visible = true
                    }

                    scrollView.scrollToPoint(0, 0)
                }
            }
        }
    }

    actions: [

        /* ActionItem {
         * id: actionItem
         * title: "Reload"
         * ActionBar.placement: ActionBarPlacement.Signature
         * 
         * onTriggered: {
         * 
         * if (container_01.visible == true) {
         * webView_01.reload()
         * webView_01.translationY = ui.sdu(0)
         * }
         * 
         * if (container_02.visible == true) {
         * webView_02.reload()
         * webView_02.translationY = ui.sdu(0)
         * }
         * }
         * }
         */
    ]

    onCreationCompleted: {

        if (property_VisibleContainer == 1) {
            container_01.visible = true
            container_02.visible = false
            webView_01.url = "https://www.strava.com/dashboard?feed_type=following"
        } else {
            container_01.visible = false
            container_02.visible = true
            webView_02.url = "https://www.strava.com/dashboard?feed_type=my_activity"
        }
    }
}
