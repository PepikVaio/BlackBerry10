import bb.cascades 1.4

Page {

    Container {

        Container {
            horizontalAlignment: HorizontalAlignment.Center
            translationY: ui.sdu(0)

            SegmentedControl {
                options: Option {text: "Info"}
            }

            animations: [

                TranslateTransition {
                    id: u1
                    duration: 400
                    fromY: ui.sdu(0)
                    toY: ui.sdu(-15)
                    easingCurve: StockCurve.Linear
                },

                TranslateTransition {
                    id: d1
                    duration: 400
                    fromY: ui.sdu(-15)
                    toY: ui.sdu(0)
                    easingCurve: StockCurve.Linear
                }
            ]
        }

        Container {
            id: container
            visible: false

            translationY: ui.sdu(-9)

            bottomMargin: ui.sdu(1.5)
            horizontalAlignment: HorizontalAlignment.Center

            DropDown {
                title: "Drop"
            }

            DropDown {
                title: "Drop"
            }

            animations: [

                TranslateTransition {
                    id: u2
                    duration: 400
                    fromY: ui.sdu(-35)
                    toY: ui.sdu(-12)
                    easingCurve: StockCurve.Linear
                },

                TranslateTransition {
                    id: d2
                    duration: 400
                    fromY: ui.sdu(-35)
                    toY: ui.sdu(-12)
                    easingCurve: StockCurve.Linear
                }
            ]
        }

        Container {
            bottomMargin: ui.sdu(1.5)
            horizontalAlignment: HorizontalAlignment.Center

            translationY: ui.sdu(0)

            Button {
                id: button
                text: "Button"
            }

            animations: [

                TranslateTransition {
                    id: u3
                    duration: 400
                    fromY: ui.sdu(0)
                    toY: ui.sdu(-9)
                    easingCurve: StockCurve.Linear
                },

                TranslateTransition {
                    id: d3
                    duration: 400
                    fromY: ui.sdu(0)
                    toY: ui.sdu(-15)
                    easingCurve: StockCurve.Linear
                }
            ]
        }
    }

    actions: [

        ActionItem {
            id: actionItem
            title: "Filter ON"
            ActionBar.placement: ActionBarPlacement.OnBar

            onTriggered: {
                if (title == "Filter ON") {
                    title = "Filter OFF"
                    u1.play()
                    //d2.play()
                    d3.play()
                    container.visible = true
                } else {
                    title = "Filter ON"
                    d1.play()
                    //u2.play()
                    //u3.play()
                    container.visible = false
                }
            }
        }
    ]
}
