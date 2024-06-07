import bb.cascades 1.4
//import custom.Device 1.0
//import custom.Settings 1.0
import custom.SqlDatabase 1.0
import custom.Timer 1.0
import custom.WebImageView 1.0
//import custom.XmlReader 1.0

Page {
    id: test_Page

    property string theme_style1: _settings.getValueFor(theme_style_DropDown.objectName, "bright")
    property string dropdown_value: _settings.getValueFor(value_DropDown.objectName, "R")

    Container {

        Container {

            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
            }

            DropDown {
                id: theme_style_DropDown
                title: "Theme style1"
                objectName: "theme_style1"

                Option {
                    id: option_Bright
                    text: "Bright (default)"
                    value: "bright"
                }
                Option {
                    id: dropDown_Dark
                    text: "Dark"
                    value: "dark"
                }

                onSelectedValueChanged: {
                    if (selectedValue == "bright") {
                        Application.themeSupport.setVisualStyle(VisualStyle.Bright);
                        _settings.saveValueFor(theme_style_DropDown.objectName, test_Page.theme_style1 = "bright");
                    } else if (selectedValue == "dark") {
                        Application.themeSupport.setVisualStyle(VisualStyle.Dark);
                        _settings.saveValueFor(theme_style_DropDown.objectName, test_Page.theme_style1 = "dark");
                    }
                }
            }

            DropDown {
                id: value_DropDown
                title: "Theme style2"
                objectName: "dropdown_value"

                Option {
                    id: option_Red
                    text: "Red (default)"
                    value: "R"
                }
                Option {
                    id: option_Blue
                    text: "Blue"
                    value: "B"
                }

                onSelectedValueChanged: {
                    if (selectedValue == "R") {
                        _settings.saveValueFor(value_DropDown.objectName, test_Page.dropdown_value = "R");
                    } else if (selectedValue == "B") {
                        _settings.saveValueFor(value_DropDown.objectName, test_Page.dropdown_value = "B");
                    }
                }
            }

            DropDown {
                id: exampleDropDown
            }
        }

        Container {
            preferredHeight: 900

            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
            }

            WebImageView {

                layoutProperties: StackLayoutProperties {
                    spaceQuota: 2
                }

                horizontalAlignment: HorizontalAlignment.Center
                verticalAlignment: VerticalAlignment.Center
                url: "http://www.tgear.cz/wp-content/uploads/Lancie_16.jpg"
                scalingMethod: ScalingMethod.AspectFit
            }

            ListView {
                id: listView

                layoutProperties: StackLayoutProperties {
                    spaceQuota: 1
                }

                dataModel: GroupDataModel {
                    id: groupDataModel
                    grouping: ItemGrouping.ByFirstChar
                    sortingKeys: [ "title", "description", "status" ]
                }

                listItemComponents: [

                    ListItemComponent {
                        type: "item"

                        StandardListItem {
                            title: ListItemData.title
                            description: ListItemData.description
                            status: ListItemData.status
                        }
                    },

                    ListItemComponent {
                        type: "header"

                        Header {
                            title: ListItemData
                        }
                    }
                ]
            }
        }

        Divider {
        }

        Container {
            horizontalAlignment: HorizontalAlignment.Center

            ActivityIndicator {
                id: test_activityIndicator
                running: true
            }
        }
    }

    actions: [

        ActionItem {
            ActionBar.placement: ActionBarPlacement.OnBar

            onTriggered: {
                var sheet = componentDefinition.createObject();
                sheet.open();
            }
        }
    ]

    attachedObjects: [

        SqlDatabase {
            id: sqlDatabase
            source: "JSON + SQL + XML/Data/Database.db"
            query: "SELECT * FROM savedata"
            //query: "SELECT * FROM aaa ORDER BY firstname LIMIT 10"

            onDataLoaded: {
                groupDataModel.insertList(data);
            }
        },

        ComponentDefinition {
            id: componentDefinition
            source: "../Sheets/Sheet.qml"
        },

        ComponentDefinition {
            id: option

            Option {
            }
        },

        Timer {
            id: test_Timer
            interval: 1000

            onTimeout: {
                test_Timer.stop()
                
                if (theme_style_DropDown.selectedOption == option_Bright) {
                    theme_style_DropDown.selectedOption = dropDown_Dark
                    value_DropDown.selectedOption = option_Red
                } else {
                    theme_style_DropDown.selectedOption = option_Bright
                    value_DropDown.selectedOption = option_Blue
                }
            }
        }
    ]

    onCreationCompleted: {
        sqlDatabase.load();

        exampleDropDown.removeAll();

        var xmlContents = _xml.LoadXML("Data/Data.xml", "data", "title_en");
        for (var x = 0; x < xmlContents.length; x ++) {
            //console.log("entry: " + x);
            //console.log(xmlContents[x].title_en);

            var opt = option.createObject();
            opt.text = xmlContents[x].title_en;

            exampleDropDown.add(opt);
        }

        test_Timer.start()

        if (test_Page.theme_style1 == "bright") {
            theme_style_DropDown.selectedOption = option_Bright
        } else if (test_Page.theme_style1 == "dark") {
            theme_style_DropDown.selectedOption = dropDown_Dark
        }

        if (test_Page.dropdown_value == "R") {
            value_DropDown.selectedOption = option_Red
        } else if (test_Page.dropdown_value == "B") {
            value_DropDown.selectedOption = option_Blue
        }

        if (_device.isQ10_Q5_Classic()) {
            test_activityIndicator.preferredWidth = ui.sdu(8)
        } else {
            test_activityIndicator.preferredWidth = ui.sdu(16)
        }
    }
}
