import bb.cascades 1.4
//********************

// import folder
import "../Containers"
//********************

// "DropDown" for "../Pages/Page_BlackWorld.qml"
Container_for_DropDowns {
    
    DropDown {
        id: dropDown
        title: "Sort"
        selectedIndex: 0
        
        Option {
            text: "Completed (default)"
        }
        Option {
            text: "Date"
        }
        Option {
            text: "Description"
        }
        Option {
            text: "Title"
        }
    }
}
