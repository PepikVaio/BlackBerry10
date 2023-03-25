import bb.cascades 1.4
//********************

// import folder
import "../Containers"
//********************

// "DropDown" for "../Pages/Page_BlackWorld.qml"
Container_for_DropDowns {
    
    DropDown {
        id: dropDown
        title: "Group"
        selectedIndex: 0
        
        Option {
            text: "False (default)"
        }
        Option {
            text: "True"
        }
    }
}
