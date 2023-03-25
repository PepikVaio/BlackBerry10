//    __              _   _             __         
//   / _|_  _ _ _  __| |_(_)___ _ _    / _|___ _ _ 
//  |  _| || | ' \/ _|  _| / _ \ ' \  |  _/ _ \ '_|
//  |_|  \_,_|_||_\__|\__|_\___/_||_| |_| \___/_|  
//                                                 
//              _                   _ 
//   _ __  __ _(_)_ _    __ _ _ __ | |
//  | '  \/ _` | | ' \ _/ _` | '  \| |
//  |_|_|_\__,_|_|_||_(_)__,_|_|_|_|_|
//                                    
//  

function function_ChangeSidebarState() {
	if (sidebarState == SidebarState.Hidden) {
		tabbedPane.property_SidebarState_Hidden = true;
	} else {
		tabbedPane.property_SidebarState_Hidden = false;
	}
}
// *****************************************************
