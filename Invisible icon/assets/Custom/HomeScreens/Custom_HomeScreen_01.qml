import bb.cascades 1.4
import bb.platform 1.3

// HomeScreen for "asset://Pages/Page.qml"
Container {

    // alias for "HomeScreen"
    property alias alias_Id: homeScreen
    //*********************************

    attachedObjects: [

        HomeScreen {
            id: homeScreen
        }
    ]
}