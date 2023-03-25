import bb.cascades 1.4
import custom.Timer 1.0

import "../Custom/Labels"
import "../JavaScripts/JavaScript_main.js" as JS

Page {
    id: page

    property int property_count: 1
    property int property_second: 1
    property int property_minute: 1
    property int property_hour: 1

    titleBar: TitleBar {
        title: "Clicker"
    }

    Container {
        topPadding: ui.sdu(1.5)
        leftPadding: ui.sdu(2.5)
        rightPadding: ui.sdu(2.5)

        layout: GridLayout {
            columnCount: 1
        }

        Container {
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center

            Container {

                Header {
                    title: "minutes / seconds:"
                    mode: HeaderMode.Interactive
                    touchPropagationMode: TouchPropagationMode.None
                }
            }

            Container {
                topMargin: ui.sdu(3)
                horizontalAlignment: HorizontalAlignment.Center

                layout: StackLayout {
                    orientation: LayoutOrientation.LeftToRight
                }

                Custom_Label_01 {
                    id: customLabel_01
                }

                Custom_Label_02 {
                    id: customLabel_02
                }

                Custom_Label_01 {
                    id: customLabel_03
                }
            }
        }

        Container {

            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
            }

            Container {
                rightPadding: ui.sdu(2.5)
                horizontalAlignment: HorizontalAlignment.Center
                verticalAlignment: VerticalAlignment.Center

                Container {

                    Header {
                        title: "number:"
                        mode: HeaderMode.Interactive
                        touchPropagationMode: TouchPropagationMode.None
                    }
                }

                Container {
                    topMargin: ui.sdu(3)
                    horizontalAlignment: HorizontalAlignment.Center

                    Label {
                        id: label
                        text: "00"
                        textStyle.fontSize: FontSize.XXLarge
                    }
                }
            }

            Container {
                preferredHeight: ui.sdu(50)
                preferredWidth: ui.sdu(30)
                layout: DockLayout {
                }

                ImageView {
                    visible: false
                    id: imageView_01
                    imageSource: "asset:///Images/popeye_rest.png"
                    scalingMethod: ScalingMethod.AspectFit
                }

                ImageView {
                    visible: true
                    id: imageView_02
                    imageSource: "asset:///Images/popeye.png"
                    scalingMethod: ScalingMethod.AspectFit
                }
            }
        }
    }

    actions: [

        ActionItem {
            title: "Count"
            ActionBar.placement: ActionBarPlacement.Signature

            onTriggered: {
                imageView_01.visible = true
                imageView_02.visible = false
                
                JS.function_StopTimer_01()
                JS.function_ChageText_01()
                JS.function_ResetValue_01()

                JS.function_ChageText_02()
                JS.function_StartTimer_01()
            }
        },

        ActionItem {
            title: "Reset"
            ActionBar.placement: ActionBarPlacement.OnBar

            onTriggered: {
                imageView_01.visible = false
                imageView_02.visible = true

                JS.function_StopTimer_01()
                JS.function_ChageText_03()
                JS.function_ResetValue_02()
            }
        }
    ]

    attachedObjects: [

        Timer {
            id: timer
            interval: 100

            onTimeout: {
                if (page.property_second > 59) {
                    JS.function_ChageText_04()
                    JS.function_ResetValue_03()

                    JS.function_ChageText_05()
                } else {
                    JS.function_ChageText_06()
                }
            }
        }
    ]
}
