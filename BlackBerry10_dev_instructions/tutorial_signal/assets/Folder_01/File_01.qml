import bb.cascades 1.4

Page {

    // funkce signal na teto strance
    signal signal_From_Page()

    titleBar: TitleBar {
        title: "Page 01"
    }

    Container {

        Button {
            text: "Button 01"

            onClicked: {
                // vysle signal
                signal_From_Page()
            }
        }
    }
}
