import bb.cascades 1.4

Container {
    
    layout: StackLayout {
        orientation: LayoutOrientation.LeftToRight
    }
    
    ImageView {
        imageSource: "asset:///Images/Image_Volume_(down).png"
    }
    
    Slider {
    }
    
    ImageView {
        imageSource: "asset:///Images/Image_Volume_(up).png"
    }
}
