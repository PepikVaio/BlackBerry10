import bb.cascades 1.4

Container {
    
    ImageButton {
        //defaultImageSource: "asset:///blank.png"
        
        onTouch: {
            
            if (event.isDown()) {
                //backgroundImagePaint2.imageSource = "asset:///00.png"
                backgroundImagePaint2.imageSource = "asset:///v2 down.png"
            }
            
            if (event.isUp()) {
                //backgroundImagePaint2.imageSource = "asset:///00.png"
                backgroundImagePaint2.imageSource = "asset:///v2 center.png"
            }
        }
        
        onTouchExit: {
            //backgroundImagePaint2.imageSource = "asset:///00.png"
            backgroundImagePaint2.imageSource = "asset:///v2 center.png"
        }
        
        onTouchEnter: {
            //backgroundImagePaint2.imageSource = "asset:///00.png"
            backgroundImagePaint2.imageSource = "asset:///v2 down.png"
        }
    
    }

}
