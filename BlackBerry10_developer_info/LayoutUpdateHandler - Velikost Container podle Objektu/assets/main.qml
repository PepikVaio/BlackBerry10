import bb.cascades 1.4

Page {

    Container {
        layout: AbsoluteLayout {
        }

        Container {
            preferredWidth: handler.layoutFrame.width
            preferredHeight: handler.layoutFrame.height 
            background: Color.Blue
        }
        
        ImageView {
            imageSource: "asset:///icon_back_to.png"

            attachedObjects: [
                LayoutUpdateHandler {
                    id: handler
                }
            ]
        }
    }

}
