import bb.cascades 1.4

Sheet {
    id: sheet

    property alias aliasTextField_01: textField_01.text
    property alias aliasTextField_02: textField_02.text
    property alias aliasTextField_03: textField_03.text

    Page {
        id: page

        titleBar: TitleBar {
            title: "Settings"

            acceptAction: ActionItem {
                title: "OK"

                onTriggered: {
                    sheet.close()
                }
            }
            dismissAction: ActionItem {
                title: "Cancel"

                onTriggered: {
                    sheet.close()
                }
            }
        }

        Container {

            layout: StackLayout {
                orientation: LayoutOrientation.TopToBottom
            }

            TextField {
                id: textField_01
                hintText: "name"
                text: "RaspBerry Pi 3B"
            }

            TextField {
                id: textField_02
                hintText: "Kodi IP Adress"
                //text: "192.168.1.5" // for RaspBerry Pi 3B
                text: "192.168.1.7" // MacBook
            }

            TextField {
                id: textField_03
                hintText: "Kodi Remote Port"
                text: "8080"
            }
        }
    }
}