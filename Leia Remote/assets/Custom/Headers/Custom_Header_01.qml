import bb.cascades 1.4

// Header for "asset:///CustomMerged/CustomMerged_NowPlaying.qml"
Container {

    Header {
        title: "Now playing"
        mode: HeaderMode.Interactive
        subtitle: qsTr("More info") + Retranslate.onLanguageChanged

        onTouch: {
            // action ...
        }
    }
}
