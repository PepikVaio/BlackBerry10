import bb.cascades 1.4

// import JavaScripts
import "asset:///JavaScripts/JavaScript_Page.js" as JS

// Slider for "asset://Pages/Page.qml"
Slider {
    fromValue: 1.0
    toValue: 10.0

    onImmediateValueChanged: {
        JS.function_ChangeSubtitle_01()
        JS.function_ChangeTitle_01()
    }
}
