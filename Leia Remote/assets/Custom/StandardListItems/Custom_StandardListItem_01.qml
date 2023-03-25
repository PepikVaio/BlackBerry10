import bb.cascades 1.4

// StandardListItem for "asset:///CustomMerged/Custom_NowPlaying.qml"
Container {
    topMargin: property_Margin
    bottomMargin: property_Margin
    
    // alias for "StandardListItem"
    property alias alias_StandardListItem: standardListItem
    //*****************************************************

    StandardListItem {
        id: standardListItem
        title: page.property_Title
        description: page.property_OriginalTitle
        status: page.property_Runtime //(page.property_Runtime / 60).toFixed(0) + " min."
    }
}
