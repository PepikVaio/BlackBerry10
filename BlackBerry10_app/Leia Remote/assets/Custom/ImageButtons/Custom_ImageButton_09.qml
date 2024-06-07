import bb.cascades 1.4

// ImageButton for "asset:///CustomMerged/CustomMerged_ImageButtons_02.qml"
Container {

    ImageButton {
        preferredHeight: customMerged_NowPlaying.property_ButtonSize
        preferredWidth: customMerged_NowPlaying.property_ButtonSize
        defaultImageSource: "asset:///Images/Image_ImageButton_09.png"
        pressedImageSource: "asset:///Images/Image_Button_(down).png"

        onClicked: {
            page.setTitleBar(custom_TitleBar_02)
            custom_TitleBar_02.alias_TextField.resetText()
            custom_TitleBar_02.alias_TextField.requestFocus()
        }
    }
}
