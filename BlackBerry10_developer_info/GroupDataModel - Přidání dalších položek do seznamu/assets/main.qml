import bb.cascades 1.4
Page {
    id: page
    
    property string property_Sort: "id"
    property bool property_Ascending: true
    //property string property_Group: "None"

    function function_GetApps() {
        arrayDataModel.clear();
      //  var url = "http://my-json-server.typicode.com/pepikvaio/json_blackworldapps_1/db"
          var url = "http://my-json-server.typicode.com/pepikvaio/json_blackworldnews/db"
        var xhr = new XMLHttpRequest();

        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {

                    var response = JSON.parse(xhr.responseText);

                    // START 01
                    var lenght = response.news.length;
                    for (var i = 0; i < lenght; i ++) {
                        var results = response.news[i];

                        arrayDataModel.insert({
                                "id": results.id,
                                "description": results.description,// + " app",
                                "version": "ver.: " + results.version,
                                "title": results.title,
                                "overview": results.overview,
                                "icon": "https://i.postimg.cc/" + results.icon_path + "/icon-300x300.png",
                                "url": "http://my-json-server.typicode.com/pepikvaio/" + results.url_path + "/db"
                            });
                    }
                    // END 01

                    // START 02
                    var lenght = response.next.length;
                    for (var i = 0; i < lenght; i ++) {
                        var results = response.next[i];

                        //if (results.url_path = "http://my-json-server.typicode.com/pepikvaio/json_blackworldapps_" + (++ config.count) + "/db") {
                        //config.url_Apps = function_ChangeVar_01();
                        //config.count = function_ChangeVar_02();
                        //function_Loop_01();
                        //}
                    }
                    // END 02
                }
            }
        };

        xhr.open("GET", url, true);
        xhr.send();
    }

    function function_GetApps2() {
        var url = "http://my-json-server.typicode.com/pepikvaio/json_blackworldapps_2/db"
        var xhr = new XMLHttpRequest();

        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {

                    var response = JSON.parse(xhr.responseText);

                    // START 01
                    var lenght = response.apps.length;
                    for (var i = 0; i < lenght; i ++) {
                        var results = response.apps[i];

                        arrayDataModel.insert({
                                "id": results.id,
                                "version": "ver.: " + results.version,
                                "description": results.description + " app",
                                "title": results.title,
                                "overview": results.overview,
                                "icon": "https://i.postimg.cc/" + results.icon_path + "/icon-300x300.png",
                                "url": "http://my-json-server.typicode.com/pepikvaio/" + results.url_path + "/db"
                            });
                    }
                    // END 01

                    // START 02
                    var lenght = response.next.length;
                    for (var i = 0; i < lenght; i ++) {
                        var results = response.next[i];

                        //if (results.url_path = "http://my-json-server.typicode.com/pepikvaio/json_blackworldapps_" + (++ config.count) + "/db") {
                        //config.url_Apps = function_ChangeVar_01();
                        //config.count = function_ChangeVar_02();
                        //function_Loop_01();
                        //}
                    }
                    // END 02
                }
            }
        };

        xhr.open("GET", url, true);
        xhr.send();
    }

    Container {

        ListView {

            dataModel: GroupDataModel {
                id: arrayDataModel
                sortingKeys: property_Sort
                grouping: ItemGrouping.None
                sortedAscending: property_Ascending
            }

            listItemComponents: [

                ListItemComponent {
                    type: "item"

                    StandardListItem {
                        title: ListItemData.title //description// + " - " + ListItemData.title
                    }
                }
            ]
        }

    }

    actions: [

        ActionItem {
            title: "Sort by title"
            ActionBar.placement: ActionBarPlacement.Signature
            
            onTriggered: {
                if (title == "Sort Title") {
                    property_Sort = "title"
                    title = "Sort by type"

                    arrayDataModel.grouping = ItemGrouping.None
                    actionItem_Group.enabled = false
                    actionItem_Group.imageSource = "asset:///Icons/icon_group_none.png"

                } else {
                    property_Sort = "description"
                    title = "Sort Title"
                    actionItem_Group.enabled = true

                    arrayDataModel.grouping = ItemGrouping.ByFullValue
                    actionItem_Group.enabled = true
                    actionItem_Group.title = "Group. none"
                    actionItem_Group.imageSource = "asset:///Icons/icon_group_none.png"
                }
            }
        },

        ActionItem {
            enabled: false
            id: actionItem_Group
            title: "Group. by type"
            imageSource: "asset:///Icons/icon_group.png"
            ActionBar.placement: ActionBarPlacement.OnBar

            onTriggered: {
                if (title == "Group. by type") {
                    arrayDataModel.grouping = ItemGrouping.ByFullValue
                    title = "Grouping none"
                } else {
                    arrayDataModel.grouping = ItemGrouping.None
                    title = "Group. by type"
                }
            }
        },
        ActionItem {
            title: "Asc. switch"
            ActionBar.placement: ActionBarPlacement.OnBar

            onTriggered: {
                if (property_Ascending == true) {
                    property_Ascending = false
                } else {
                    property_Ascending = true
                }
            }
        },
        ActionItem {
            title: "Load"
            ActionBar.placement: ActionBarPlacement.InOverflow

            onTriggered: {
                function_GetApps2()
            }
        }
    ]

    onCreationCompleted: {
        function_GetApps()
    }
}
