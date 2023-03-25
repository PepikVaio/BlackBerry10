// main.qml
import bb.cascades 1.4
import "Folder_01"
import "Folder_02"

TabbedPane {

    tabs: [

        Tab {
            title: "Tab 01"

            File_01 {
                id: file_01
                
                // funkce ze stranky "file_01"
                onSignal_From_Page: {
                }
            }
        },

        Tab {
            title: "Tab 02"

            File_02 {
                id: file_02
            }
        }
    ]
}
