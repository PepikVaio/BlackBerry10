/*
 * Copyright (c) 2011-2014 BlackBerry Limited.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import bb.cascades 1.2
import bb.system 1.2

Page {
    property bool saved: false
    
    attachedObjects: [
        SystemToast {
            id: systemToast
            body: saved ? "The text was saved successfully!" : "The text wasn't saved..."
        }
    ]
    Container {
        TextField {
            id: textField
            hintText: "Write something"
        }
        Button {
            text: "Save to random file"
            onClicked: {
                saved = _fileSaver.save(textField.text)
                systemToast.show()
            }        
        }
        Container {
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
            }
            TextField {
                id: fileName
                hintText: "Enter a filename"
                onTextChanging: {
                    if (text == "")
                        button.enabled = false
                    else {
                        button.enabled = true
                        button.text = "Save to /documents/" + text
                    }
                }
            }
            Button {
                id: button
                text: "Save to /documents/" + fileName.text
                onClicked: {
                    saved = _fileSaver.save(textField.text, fileName.text)
                    systemToast.show()
                }
            }
        }
    }
}
