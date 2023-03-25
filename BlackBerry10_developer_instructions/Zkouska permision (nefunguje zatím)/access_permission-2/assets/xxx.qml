import bb.cascades 1.4
import bb.system 1.2
import custom.Timer 1.0

Page {
    id: page
    
    // property for "onCreationCompleted"
    property string propertyImei
    
    titleBar: TitleBar {
        title: "Access permission"
    }
    
    Container {
    }
    
    attachedObjects: [
        
        SystemToast {
            id: systemToast_01
            body: "Great, your (IMEI) device number have access to the application, enjoy this."
        },
        
        SystemToast {
            id: systemToast_02
            body: "Your (IMEI) device number does not have access to the application, please contact the developer."
            
            onFinished: {
                systemToast_03.show()
            }
        },
        
        SystemToast {
            id: systemToast_03
            body: "The application will be soon terminated."
        },
        
        Timer {
            id: timer_01
            interval: 8000
            
            onTimeout: {
                timer_01.stop()
                Application.quit()
            }
        }
    ]
    
    onCreationCompleted: {
        //var data = app.myFunction();
        console.log(_javascript.function_CheckPermission_01())
        
        //propertyImei = _device.getImei()
        //function_GetImei()
    }
    
    function function_GetImei() {
        var url = "http://my-json-server.typicode.com/pepikvaio/try/db"
        var xhr = new XMLHttpRequest();
        
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    
                    var jsonData = JSON.parse(xhr.responseText);
                    var imeiNumber = jsonData.imei_numbers
                    var result = imeiNumber.indexOf(page.propertyImei);
                    
                    if (result !== -1) {
                        console.log("access allowed")
                        systemToast_01.show()
                    } else {
                        
                        try {
                            console.log("access denied")
                            timer_01.start()
                            systemToast_02.show()
                        }
                        catch(err) {
                            Application.quit()
                        }
                        
                        
                        
                        //                        console.log("access denied")
                        //                        timer_01.start()
                        //                        systemToast_02.show()
                    }
                    
                    //if (jsonData.hasOwnProperty("imei_numbers")) {
                    //console.log("OK")
                    //} else {
                    //console.log("N O K")
                    //}
                }
            }
        };
        
        xhr.open("GET", url, true);
        xhr.send();
    }
    
    function function_GetImeiwwww() {
        var url = "http://my-json-server.typicode.com/pepikvaio/json_blackworldnews/db"
        var xhr = new XMLHttpRequest();
        
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    // some action ...
                    var json = JSON.parse(xhr.responseText);
                    //var results = json.results;
                    //var count = results.length;
                    
                    //textArea.text = JSON.parse(xhr.responseText)
                    //console.log("There are " + count + " results :");
                }
            }
        };
        
        xhr.open("GET", url, true);
        xhr.send();
    }
}