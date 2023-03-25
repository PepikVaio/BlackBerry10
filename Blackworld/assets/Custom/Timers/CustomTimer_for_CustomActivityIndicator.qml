import bb.cascades 1.4
import custom.Timer 1.0 // for "Timer"
//************************************

// "Timer" for "../Custom/CustomListItemComponent_for_HorizontalWebImageView.qml"
Container {

property alias alias_timer: timer

    Timer {
        id: timer
        interval: 500

        onTimeout: {
            timer.stop()
            activityIndicator_Rnning.running = false
        }
    }
}
