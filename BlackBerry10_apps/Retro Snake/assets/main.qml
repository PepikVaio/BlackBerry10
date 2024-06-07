import QtQuick 1.0
import bb.cascades 1.4

Page {
    id: page

    function aaa() {
        translation.play()
    }

    function property_ChangeDirectionMovementLeft() {
        if (property_DirectionOfMovement == "Up") {
            property_DirectionOfMovement = "Left"
        } else if (property_DirectionOfMovement == "Down") {
            property_DirectionOfMovement = "Right"
        } else if (property_DirectionOfMovement == "Left") {
            property_DirectionOfMovement = "Down"
        } else if (property_DirectionOfMovement == "Right") {
            property_DirectionOfMovement = "Up"
        }
    }

    function property_ChangeDirectionMovementRight() {
        if (property_DirectionOfMovement == "Up") {
            property_DirectionOfMovement = "Right"
        } else if (property_DirectionOfMovement == "Down") {
            property_DirectionOfMovement = "Left"
        } else if (property_DirectionOfMovement == "Left") {
            property_DirectionOfMovement = "Up"
        } else if (property_DirectionOfMovement == "Right") {
            property_DirectionOfMovement = "Down"
        }
    }

    function function_PlayTranslateTransition() {
        if (property_DirectionOfMovement == "Up") {
            translateTransition_Up_01.play()
        } else if (property_DirectionOfMovement == "Down") {
            translateTransition_Down_01.play()
        } else if (property_DirectionOfMovement == "Left") {
            translateTransition_Left_01.play()
        } else if (property_DirectionOfMovement == "Right") {
            translateTransition_Right_01.play()
        }
    }

    function function_StopMoves() {
        translateTransition_Up_01.stop()
        translateTransition_Up_02.stop()

        translateTransition_Down_01.stop()
        translateTransition_Down_02.stop()

        translateTransition_Left_01.stop()
        translateTransition_Left_02.stop()

        translateTransition_Right_01.stop()
        translateTransition_Right_02.stop()
    }

    function function_SpeedConversion() {

        if (property_DirectionOfMovement == "Up") {
            function_SpeedConversionUp()
        }

        if (property_DirectionOfMovement == "Down") {
            function_SpeedConversionDown()
        }

        if (property_DirectionOfMovement == "Left") {
            function_SpeedConversionLeft()
        }

        if (property_DirectionOfMovement == "Right") {
            function_SpeedConversionRight()
        }
    }

    function function_SpeedConversionUp() {

        if (container_Black.translationY == - Math.abs(property_Snake)) {
            property_SpeedConverted = property_SpeedDefault
        } else if (container_Black.translationY <= property_DeviceHeight) {
            property_SpeedConverted = (container_Black.translationY + property_Snake) * (property_SpeedDefault / property_DeviceHeight)
        }

        text3.text = "Speed = " + property_SpeedConverted
    }

    function function_SpeedConversionDown() {

        if (container_Black.translationY == property_DeviceHeight) {
            property_SpeedConverted = property_SpeedDefault
        } else if (container_Black.translationY < property_DeviceHeight) {
            property_SpeedConverted = property_SpeedDefault - (container_Black.translationY * (property_SpeedDefault / property_DeviceHeight))
        }

        text3.text = "Speed = " + property_SpeedConverted
    }

    function function_SpeedConversionLeft() {

        if (container_Black.translationX == - Math.abs(property_Snake)) {
            property_SpeedConverted = property_SpeedDefault
        } else if (container_Black.translationX <= property_DeviceWidth) {
            property_SpeedConverted = (container_Black.translationX + property_Snake) * (property_SpeedDefault / property_DeviceWidth)
        }

        text3.text = "Speed = " + property_SpeedConverted
    }

    function function_SpeedConversionRight() {

        if (container_Black.translationX == property_DeviceWidth) {
            property_SpeedConverted = property_SpeedDefault
        } else if (container_Black.translationX < property_DeviceWidth) {
            property_SpeedConverted = property_SpeedDefault - (container_Black.translationX * (property_SpeedDefault / property_DeviceWidth))
        }

        text3.text = "Speed = " + property_SpeedConverted
    }

    // velikost pole
    property int property_DeviceWidth: 1440 // 500
    property int property_DeviceHeight: 950 // 500

    // velikost hada
    // rychlost hada defaultni
    // rychlost hada prevedena
    property int property_Snake: 50 // 50
    property int property_SpeedDefault: 3000 // 5000
    property int property_SpeedConverted: property_SpeedDefault

    // startovni pozice hada
    property real propertyTranslationX: 0
    property real propertyTranslationY: property_DeviceHeight / 2 - property_Snake / 2

    // smer hada
    property string property_DirectionOfMovement: "Right"

    titleBar: TitleBar {
        title: qsTr("Snake") + Retranslate.onLanguageChanged
    }

    Container {

        layout: DockLayout {
        }

        Container {

            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
            }

            TextField {
                id: text
                hintText: "Position X:"
                touchPropagationMode: TouchPropagationMode.None
            }

            TextField {
                id: text2
                hintText: "Position Y:"
                touchPropagationMode: TouchPropagationMode.None
            }

            TextField {
                id: text3
                hintText: "Speed:"
                touchPropagationMode: TouchPropagationMode.None
            }
        }

        Container {
            id: container_yellow
            background: Color.Yellow

            preferredWidth: property_DeviceWidth
            preferredHeight: property_DeviceHeight

            verticalAlignment: VerticalAlignment.Center
            horizontalAlignment: HorizontalAlignment.Center

            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
            }
        }
    }

    actions: [

        ActionItem {
            ActionBar.placement: ActionBarPlacement.OnBar
            title: qsTr("Turn left") + Retranslate.onLanguageChanged

            onTriggered: {

                function_StopMoves()
                timer_01.start()
            }
        },

        ActionItem {
            title: qsTr("Play") + Retranslate.onLanguageChanged
            ActionBar.placement: ActionBarPlacement.Signature

            onTriggered: {

                if (title == "Play") {
                    title = qsTr("Pause") + Retranslate.onLanguageChanged
                    function_SpeedConversion()
                    function_PlayTranslateTransition()
                } else {
                    title = qsTr("Play") + Retranslate.onLanguageChanged
                    function_StopMoves()
                }
            }
        },

        ActionItem {
            ActionBar.placement: ActionBarPlacement.OnBar
            title: qsTr("Turn right") + Retranslate.onLanguageChanged

            onTriggered: {

                function_StopMoves()
                timer_02.start()
            }
        }
    ]

    attachedObjects: [

        Timer {
            id: timer_01
            interval: 20
            repeat: false

            onTriggered: {
                property_ChangeDirectionMovementLeft()
                function_SpeedConversion()
                function_PlayTranslateTransition()
            }
        },

        Timer {
            id: timer_02
            interval: 20
            repeat: false

            onTriggered: {
                property_ChangeDirectionMovementRight()
                function_SpeedConversion()
                function_PlayTranslateTransition()
            }
        },

        Container {
            id: container_Black2
            background: Color.Red
            preferredWidth: property_Snake
            preferredHeight: property_Snake

            translationX: propertyTranslationX
            translationY: propertyTranslationY

            animations: [
                TranslateTransition {
                    id: translation
                    duration: 1
                    toX: container_Black.translationX
                    toY: container_Black.translationY
                    easingCurve: StockCurve.Linear
                    //repeatCount: AnimationRepeatCount.Forever

                }
            ]
        },

        Container {
            id: container_Black
            background: Color.Black

            preferredWidth: property_Snake
            preferredHeight: property_Snake

            translationX: propertyTranslationX
            translationY: propertyTranslationY

            animations: [

                TranslateTransition {
                    id: translateTransition_Up_01
                    duration: property_SpeedConverted
                    // fromY: (from acual position)
                    toY: - Math.abs(property_Snake)
                    easingCurve: StockCurve.Linear

                    onStarted: {
                        property_DirectionOfMovement = "Up"
                    }

                    onEnded: {
                        function_SpeedConversion()
                        translateTransition_Up_02.play()
                    }
                },

                TranslateTransition {
                    id: translateTransition_Up_02
                    duration: property_SpeedConverted
                    fromY: property_DeviceHeight
                    toY: - Math.abs(property_Snake)
                    easingCurve: StockCurve.Linear
                    repeatCount: AnimationRepeatCount.Forever
                },

                TranslateTransition {
                    id: translateTransition_Down_01
                    duration: property_SpeedConverted
                    // fromY: (from acual position)
                    toY: property_DeviceHeight
                    easingCurve: StockCurve.Linear

                    onStarted: {
                        property_DirectionOfMovement = "Down"
                    }

                    onEnded: {
                        function_SpeedConversion()
                        translateTransition_Down_02.play()
                    }
                },

                TranslateTransition {
                    id: translateTransition_Down_02
                    duration: property_SpeedConverted
                    fromY: - Math.abs(property_Snake)
                    toY: property_DeviceHeight
                    easingCurve: StockCurve.Linear
                    repeatCount: AnimationRepeatCount.Forever
                },

                TranslateTransition {
                    id: translateTransition_Left_01
                    duration: property_SpeedConverted
                    // fromX: (from acual position)
                    toX: - Math.abs(property_Snake)
                    easingCurve: StockCurve.Linear

                    onStarted: {
                        property_DirectionOfMovement = "Left"

                    }

                    onEnded: {
                        function_SpeedConversion()
                        translateTransition_Left_02.play()
                    }
                },

                TranslateTransition {
                    id: translateTransition_Left_02
                    duration: property_SpeedConverted
                    fromX: property_DeviceWidth
                    toX: - Math.abs(property_Snake)
                    easingCurve: StockCurve.Linear
                    repeatCount: AnimationRepeatCount.Forever
                },

                TranslateTransition {
                    id: translateTransition_Right_01
                    duration: property_SpeedConverted
                    // fromX: (from acual position)
                    toX: property_DeviceWidth
                    easingCurve: StockCurve.Linear

                    onStarted: {
                        property_DirectionOfMovement = "Right"
                    }
                    onEnded: {
                        function_SpeedConversion()
                        translateTransition_Right_02.play()
                    }
                },

                TranslateTransition {
                    id: translateTransition_Right_02
                    duration: property_SpeedConverted
                    fromX: - Math.abs(property_Snake)
                    toX: property_DeviceWidth
                    easingCurve: StockCurve.Linear
                    repeatCount: AnimationRepeatCount.Forever
                }
            ]

            onTranslationXChanging: {
                text.text = "Position X = " + translationX.toFixed(3)
                //translation.play()
            }

            onTranslationYChanging: {
                text2.text = "Positon Y = " + translationY.toFixed(3)
            }
        }
    ]

    onCreationCompleted: {
        container_yellow.add(container_Black2)
        container_yellow.add(container_Black)
    }
}
