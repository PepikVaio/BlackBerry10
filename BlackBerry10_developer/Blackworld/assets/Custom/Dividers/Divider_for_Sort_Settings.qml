import bb.cascades 1.4
//********************

// import folder
import "../Containers"
//********************

// Dividet for "../Pages/Page_BlackWorld.qml"
Container {

    Container {

        Divider {

        }
    }

    Container {
        topPadding: ui.sdu(-0.3)
        translationY: ui.sddu(-0.2)

        ImageView {
            imageSource: "asset:///Images/Image_CustomDivider_(blue).png"
        }
    }
}
