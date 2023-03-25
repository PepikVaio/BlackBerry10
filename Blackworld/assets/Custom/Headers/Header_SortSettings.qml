import bb.cascades 1.4
//********************

// import folder
import "../Containers"
//********************

// Header for "../Pages/Page_BlackWorld.qml"
Container_for_Headers {

    Container {

        Header {
            title: "Sort settings"
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
