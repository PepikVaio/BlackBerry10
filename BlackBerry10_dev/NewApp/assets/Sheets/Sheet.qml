import bb.cascades 1.4

Sheet {
    id: sheet
    
    function function_SaveData(title, description, status) {

        var itemData = {
            "title": title,
            "description": description,
            "status": status
        }

        sqlDatabase.execute("INSERT INTO savedata (title, description, status) VALUES(:title, :description, :status)", itemData);
    }

    function function_AddData(title, description, status) {
        
        var itemData = {
            "title": title,
            "description": description,
            "status": status
        }
        
        groupDataModel.insert(itemData);
    }

    Page {

        titleBar: TitleBar {

            acceptAction: ActionItem {
                title: "Save"

                onTriggered: {
                    function_SaveData(textArea_01.text, textArea_02.text, textArea_03.text)
                    function_AddData(textArea_01.text, textArea_02.text, textArea_03.text)
                    sheet.close()
                }
            }
        }

        Container {

            TextArea {
                id: textArea_01
                hintText: qsTr("Title") + Retranslate.onLanguageChanged
            }

            TextField {
                id: textArea_02
                hintText: qsTr("Description") + Retranslate.onLanguageChanged
            }

            TextField {
                id: textArea_03
                hintText: qsTr("Status") + Retranslate.onLanguageChanged
            }
        }
    }
}
