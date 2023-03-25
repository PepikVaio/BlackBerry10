import bb.cascades 1.4

TitleBar {

    kind: TitleBarKind.FreeForm
    kindProperties: FreeFormTitleBarKindProperties {

        Container {
            //background: Color.Yellow
            preferredHeight: ui.sdu(11)

            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
            }

            Container {
                property int aaa: 2
                topPadding: ui.sdu(aaa)
                bottomPadding: ui.sdu(aaa)
                leftPadding: ui.sdu(aaa)
                rightPadding: ui.sdu(aaa)

                //background: Color.Blue
                verticalAlignment: VerticalAlignment.Center

                layoutProperties: StackLayoutProperties {
                    spaceQuota: 1
                }

                Label {
                    text: "Mini for Strava"
                    textStyle.fontSize: FontSize.XLarge
                    textStyle.fontWeight: FontWeight.W400
                }
            }

            Container {
                property int aaa: 3
                topPadding: ui.sdu(aaa)
                bottomPadding: ui.sdu(aaa)
                leftPadding: ui.sdu(aaa)
                rightPadding: ui.sdu(aaa)
                //background: Color.Red
                verticalAlignment: VerticalAlignment.Center

                layoutProperties: StackLayoutProperties {
                    spaceQuota: -1
                }

                ImageView {
                    preferredWidth: ui.sdu(5)
                    preferredHeight: ui.sdu(5)

                    imageSource: "asset:///Images/reload.png"
                    horizontalAlignment: HorizontalAlignment.Center

                }

                gestureHandlers: TapHandler {
                    onTapped: {
                    }
                }
            }
        }
    }
}
