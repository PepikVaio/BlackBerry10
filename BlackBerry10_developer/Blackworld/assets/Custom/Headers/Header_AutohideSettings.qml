import bb.cascades 1.4
//********************

// import folder
import "../Containers"
//********************

// Header for "../Sheets/Sheet_Settings.qml"
Container_for_Headers {

    Container {

        Header {
            title: "Autohide settings"
            subtitle: ""
        }
    }

    Container {
        topPadding: ui.sdu(-0.1)
        translationY: ui.sddu(-0.4)

        ImageView {
            imageSource: "asset:///Images/Image_CustomDivider_(blue).png"
        }
    }
}
