import bb.cascades 1.4
import custom.WebImageView 1.0

// WebImageView for "asset:///CustomMerged/Custom_NowPlaying.qml"
Container {
    horizontalAlignment: HorizontalAlignment.Center
    verticalAlignment: VerticalAlignment.Center
    rightMargin: property_Margin
    maxWidth: ui.sdu(40)
    preferredHeight: property_PreferredHeight

    layout: DockLayout {

    }

    ImageView {
        imageSource: "asset:///Images/Image_Poster_(empty).png"
        scalingMethod: ScalingMethod.AspectFit
    }

    WebImageView {
        url: page.property_Thumbnail
        scalingMethod: ScalingMethod.AspectFit
    }
}
