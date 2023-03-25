import bb.cascades 1.4

TitleBar {
    kind: TitleBarKind.FreeForm

    kindProperties: FreeFormTitleBarKindProperties {

        Container {

            layout: DockLayout {
            }

            Container {

                layout: DockLayout {
                }

                horizontalAlignment: HorizontalAlignment.Fill
                verticalAlignment: VerticalAlignment.Fill
                leftPadding: 20
                rightPadding: leftPadding

                Container {
                    id: leftButtons
                    horizontalAlignment: HorizontalAlignment.Left
                    verticalAlignment: VerticalAlignment.Center

                    ImageButton {
                        preferredHeight: 70
                        preferredWidth: 70
                        defaultImageSource: "asset:///Images/Image_Home.png"
                    }
                }

                Container {
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center

                    Label {
                        text: "Title"
                    }
                }

                Container {
                    id: rightButtons
                    horizontalAlignment: HorizontalAlignment.Right
                    verticalAlignment: VerticalAlignment.Center

                    ImageButton {
                        preferredHeight: 70
                        preferredWidth: 70
                        defaultImageSource: "asset:///Images/Image_Home.png"
                    }
                }
            }
        }
    }
}