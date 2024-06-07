// function for "onCreationCompleted"
function function_ChangeLayout_01() {
	if (_device.isPassport() || _device.isQ10_Q5_Classic()) {
		stackLayout_01.orientation = LayoutOrientation.LeftToRight;
		stackLayout_02.orientation = LayoutOrientation.TopToBottom;
	} else {
		stackLayout_01.orientation = LayoutOrientation.TopToBottom;
		stackLayout_02.orientation = LayoutOrientation.BottomToTop;
	}
}

function function_CheckKodiConnection(property_KodiIpAdress, property_KodiPort, command, method, params, id) {
    if (tabbedPane.property_KodiConnection == false) {
        JS2.function_ShowNotification_01();
	} else {
		function_SendRequest(tabbedPane.property_KodiIpAdress, tabbedPane.property_KodiPort, command, method, params, id);
	}
}


// function for "onSignal_JavaScriptMain_01"
function function_GetActivePlayers(property_KodiIpAdress, property_KodiPort, command, method, params, id) {
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
				var jsonParse = JSON.parse(xhr.responseText);
				var result = jsonParse.result[0];

				if (result == undefined) {
					page.property_OriginalTitle = "";
					page.property_Runtime = "";
					page.property_Thumbnail = ""; 
					page.property_Title = "Playback is stoped";
				} else {
					var result = jsonParse.result[0].playerid;
					if (result == 0) {
						// var for "function_GetItem"
						var command = "";
						var method = "";
						var params = '{}';
						var id = "AudioGetItem";
						//***************************

						function_GetItem(property_KodiIpAdress, property_KodiPort, command, method, params, id);
					} else if (result == 1) {
						// var for "function_GetItem"
						var command = "POST";
						var method = "Player.GetItem";
						var params = '{"properties": ["runtime", "thumbnail", "originaltitle"], "playerid":' + result + '}';
						var id = "VideoGetItem";
						//**************************************************************************************************

						function_GetItem(property_KodiIpAdress, property_KodiPort, command, method, params, id);
					} else if (result == 2) {
						// var for "function_GetItem"
						var command = "";
						var method = "";
						var params = '{}';
						var id = "ImageGetItem";
						//***************************

						function_GetItem(property_KodiIpAdress, property_KodiPort, command, method, params, id);
					}
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

// function for "function_GetActivePlayers"
function function_GetItem(property_KodiIpAdress, property_KodiPort, command, method, params, id) {
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
				var jsonParse = JSON.parse(xhr.responseText);
				var result = jsonParse.result.item;

				property_OriginalTitle = result.originaltitle;
				property_Runtime = (result.runtime / 60).toFixed(0) + " min";
				property_Thumbnail = "http://" + property_KodiIpAdress + ":" + property_KodiPort + "/image/" + result.thumbnail;
				property_Title = result.label;
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

// function for "actions" && "ImageButtons"
function function_SendRequest(property_KodiIpAdress, property_KodiPort, command, method, params, id) {
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
