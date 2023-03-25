// function for "Custom_Timer_01"
function function_ConnectionTest(property_KodiIpAdress, property_KodiPort, command, method, params, id) {
	var url = "";
	var jsonrpc = "";

	if (command == "GET") {
		url = "http://" + property_KodiIpAdress + ":" + property_KodiPort + "/jsonrpc?request=";
	} else if (command == "POST") {
		url = "http://" + property_KodiIpAdress + ":" + property_KodiPort + "/jsonrpc";
	}

	if (params == "{}") {
		jsonrpc = '{"jsonrpc":"2.0","method":"' + method + '","id":"' + id + '"}';
	} else if (params !== "{}") {
		jsonrpc = '{"jsonrpc":"2.0","method":"' + method + '","params":' + params + ',"id":"' + id + '"}';
	}

	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function() {
		if (xhr.readyState === XMLHttpRequest.DONE) {
			if (xhr.status === 200) {
				custom_Timer_02.alias_Timer_02.stop();
				//function_ShowNotification_01();



				if (tabbedPane.property_KodiConnection == 0 || tabbedPane.property_KodiConnection == 2) {
	            	tabbedPane.property_KodiConnection = 3;
	                function_ShowNotification_02X();
	            }
				
				
				
				
				if (tabbedPane.activeTab == tab_01) {
					page_Remote.signal_Page_Remote_01();
		        }
			}
		}
	};

	if (command == "GET") {
		xhr.open(command, url.concat(jsonrpc), true);
	} else if (command == "POST") {
		xhr.open(command, url, true);
	}

	xhr.setRequestHeader("Content-Type", "application/json");

	if (command == "GET") {
		xhr.send();
	} else if (command == "POST") {
		xhr.send(jsonrpc);
	}
}

// function for "function_ConnectionTest"
function function_ShowNotification_01() {
	if (tabbedPane.property_ShowSystemToast_01 == true) {
		custom_SystemToast_01.alias_SystemToast_01.show();
		tabbedPane.property_ShowSystemToast_01 = false;
		tabbedPane.property_ShowSystemToast_02 = true;

		// var for "function_ShowNotification_03"
		var command = "POST";
		var method = "GUI.ShowNotification";
		var params = '{"title":"LEIA REMOTE","message":"The Leia remote control is connected."}';
		var id = "0";
		//***************************************************************************************

		function_ShowNotification_03(property_KodiIpAdress, property_KodiPort, command, method, params, id);
	}
}


function function_ShowNotification_02X() {
	if (tabbedPane.property_KodiConnection == 1) {
		custom_SystemToast_02.alias_SystemToast_02.show();
		tabbedPane.property_KodiConnection = 2;

	}
	if (tabbedPane.property_KodiConnection == 3) {
		custom_SystemToast_01.alias_SystemToast_01.show();
		tabbedPane.property_KodiConnection = 4;

		// var for "function_ShowNotification_03"
		var command = "POST";
		var method = "GUI.ShowNotification";
		var params = '{"title":"LEIA REMOTE","message":"The Leia remote control is connected."}';
		var id = "0";
		//***************************************************************************************

		function_ShowNotification_03(property_KodiIpAdress, property_KodiPort, command, method, params, id);
}
	
	
	
}




// function for "function_ConnectionTest"
function function_ShowNotification_02() {
	if (tabbedPane.property_ShowSystemToast_02 == true) {
		custom_SystemToast_02.alias_SystemToast_02.show();
		tabbedPane.property_ShowSystemToast_01 = true;
		tabbedPane.property_ShowSystemToast_02 = false;
	}
}

// function for "function_ShowNotification_01"
function function_ShowNotification_03(property_KodiIpAdress, property_KodiPort, command, method, params, id) {
	var url = "";
	var jsonrpc = "";

	if (command == "GET") {
		url = "http://" + property_KodiIpAdress + ":" + property_KodiPort + "/jsonrpc?request=";
	} else if (command == "POST") {
		url = "http://" + property_KodiIpAdress + ":" + property_KodiPort + "/jsonrpc";
	}

	if (params == "{}") {
		jsonrpc = '{"jsonrpc":"2.0","method":"' + method + '","id":"' + id + '"}';
	} else if (params !== "{}") {
		jsonrpc = '{"jsonrpc":"2.0","method":"' + method + '","params":' + params + ',"id":"' + id + '"}';
	}

	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function() {
		if (xhr.readyState === XMLHttpRequest.DONE) {
			if (xhr.status === 200) {
				// some action ...
			}
		}
	};

	if (command == "GET") {
		xhr.open(command, url.concat(jsonrpc), true);
	} else if (command == "POST") {
		xhr.open(command, url, true);
	}

	xhr.setRequestHeader("Content-Type", "application/json");

	if (command == "GET") {
		xhr.send();
	} else if (command == "POST") {
		xhr.send(jsonrpc);
	}
}
