import bb.cascades 1.4

// import JavaScripts
import "asset:///JavaScripts/JavaScript_Page_Remote.js" as JS
//***********************************************************

// ImageButton for "asset:///Pages/Page_Remote.qml"
Container {

    horizontalAlignment: HorizontalAlignment.Center
    preferredWidth: layoutUpdateHandler.layoutFrame.height
    minWidth: layoutUpdateHandler.layoutFrame.height

    layoutProperties: StackLayoutProperties {
        spaceQuota: 1
    }

    layout: DockLayout {
    }

    Container {

        ImageButton {
            defaultImageSource: "asset:///Images/Image_ButtonMain_(up).png"
        }

        attachedObjects: [

            LayoutUpdateHandler {
                id: layoutUpdateHandler
            }
        ]
    }

    Container {
        preferredHeight: layoutUpdateHandler.layoutFrame.height
        preferredWidth: layoutUpdateHandler.layoutFrame.width

        layout: GridLayout {
            columnCount: 3
        }

        ImageButton {
            defaultImageSource: "asset:///Images/Image_Blank.png"
        }

        ImageButton {
            defaultImageSource: "asset:///Images/Image_Blank.png"

            onTouch: {

                // var for JS.function_SendRequest()
                if (event.isDown()) {
                    var command = "POST"
                    var method = "Input.Up"
                    var params = '{}';
                    var id = "1";

                    //custom_Timer_01.alias_Timer_01.start();
                    JS.function_SendRequest(tabbedPane.property_KodiIpAdress, tabbedPane.property_KodiPort, command, method, params, id)
                }

                if (event.isUp()) {
                }
            }
        }
        ImageButton {
            defaultImageSource: "asset:///Images/Image_Blank.png"
        }

        ImageButton {
            defaultImageSource: "asset:///Images/Image_Blank.png"

            onTouch: {

                if (event.isDown()) {

                    // var for JS.function_SendRequest()
                    var command = "POST"
                    var method = "Input.Left"
                    var params = '{}';
                    var id = "1";

                    //custom_Timer_01.alias_Timer_01.start();
                    JS.function_SendRequest(tabbedPane.property_KodiIpAdress, tabbedPane.property_KodiPort, command, method, params, id)
                }
            }
        }

        ImageButton {
            defaultImageSource: "asset:///Images/Image_Blank.png"

            onTouch: {

                if (event.isDown()) {
                    
                    // var for JS.function_SendRequest()
                    var command = "POST"
                    var method = "Input.Select"
                    var params = '{}';
                    var id = "1";
                    
                    //custom_Timer_01.alias_Timer_01.start();
                    JS.function_SendRequest(tabbedPane.property_KodiIpAdress, tabbedPane.property_KodiPort, command, method, params, id)
                }
            }
        }
        ImageButton {
            defaultImageSource: "asset:///Images/Image_Blank.png"

            onTouch: {

                if (event.isDown()) {
                    
                    // var for JS.function_SendRequest()
                    var command = "POST"
                    var method = "Input.Right"
                    var params = '{}';
                    var id = "1";
                    
                    //custom_Timer_01.alias_Timer_01.start();
                    JS.function_SendRequest(tabbedPane.property_KodiIpAdress, tabbedPane.property_KodiPort, command, method, params, id)
                }
            }
        }
        ImageButton {
            defaultImageSource: "asset:///Images/Image_Blank.png"
        }

        ImageButton {
            defaultImageSource: "asset:///Images/Image_Blank.png"

            onTouch: {

                if (event.isDown()) {
                    
                    // var for JS.function_SendRequest()
                    var command = "POST"
                    var method = "Input.Down"
                    var params = '{}';
                    var id = "1";
                    
                    //custom_Timer_01.alias_Timer_01.start();
                    JS.function_SendRequest(tabbedPane.property_KodiIpAdress, tabbedPane.property_KodiPort, command, method, params, id)
                }
            }
        }

        ImageButton {
            defaultImageSource: "asset:///Images/Image_Blank.png"
        }
    }
}
