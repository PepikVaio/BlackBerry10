# Config.pri file version 2.0. Auto-generated by IDE. Any changes made by user will be lost!
BASEDIR = $$quote($$_PRO_FILE_PWD_)

device {
    CONFIG(debug, debug|release) {
        profile {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        } else {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        }

    }

    CONFIG(release, debug|release) {
        !profile {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        }
    }
}

simulator {
    CONFIG(debug, debug|release) {
        !profile {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        }
    }
}

config_pri_assets {
    OTHER_FILES += \
        $$quote($$BASEDIR/assets/Custom/TitleBars/CustomTitleBar.qml) \
        $$quote($$BASEDIR/assets/Images/reload.png) \
        $$quote($$BASEDIR/assets/Pages/Page.qml) \
        $$quote($$BASEDIR/assets/main.qml)
}

config_pri_source_group1 {
    SOURCES += \
        $$quote($$BASEDIR/src/Settings/settings.cpp) \
        $$quote($$BASEDIR/src/SqlDatabase/sqldatabase.cpp) \
        $$quote($$BASEDIR/src/Timer/timer.cpp) \
        $$quote($$BASEDIR/src/WebImageView/webimageview.cpp) \
        $$quote($$BASEDIR/src/XmlReader/xmlreader.cpp) \
        $$quote($$BASEDIR/src/applicationui.cpp) \
        $$quote($$BASEDIR/src/main.cpp)

    HEADERS += \
        $$quote($$BASEDIR/src/Settings/settings.hpp) \
        $$quote($$BASEDIR/src/SqlDatabase/sqldatabase.hpp) \
        $$quote($$BASEDIR/src/Timer/timer.hpp) \
        $$quote($$BASEDIR/src/WebImageView/webimageview.hpp) \
        $$quote($$BASEDIR/src/XmlReader/xmlreader.hpp) \
        $$quote($$BASEDIR/src/applicationui.hpp)
}

CONFIG += precompile_header

PRECOMPILED_HEADER = $$quote($$BASEDIR/precompiled.h)

lupdate_inclusion {
    SOURCES += \
        $$quote($$BASEDIR/../src/*.c) \
        $$quote($$BASEDIR/../src/*.c++) \
        $$quote($$BASEDIR/../src/*.cc) \
        $$quote($$BASEDIR/../src/*.cpp) \
        $$quote($$BASEDIR/../src/*.cxx) \
        $$quote($$BASEDIR/../src/Settings/*.c) \
        $$quote($$BASEDIR/../src/Settings/*.c++) \
        $$quote($$BASEDIR/../src/Settings/*.cc) \
        $$quote($$BASEDIR/../src/Settings/*.cpp) \
        $$quote($$BASEDIR/../src/Settings/*.cxx) \
        $$quote($$BASEDIR/../src/SqlDatabase/*.c) \
        $$quote($$BASEDIR/../src/SqlDatabase/*.c++) \
        $$quote($$BASEDIR/../src/SqlDatabase/*.cc) \
        $$quote($$BASEDIR/../src/SqlDatabase/*.cpp) \
        $$quote($$BASEDIR/../src/SqlDatabase/*.cxx) \
        $$quote($$BASEDIR/../src/Timer/*.c) \
        $$quote($$BASEDIR/../src/Timer/*.c++) \
        $$quote($$BASEDIR/../src/Timer/*.cc) \
        $$quote($$BASEDIR/../src/Timer/*.cpp) \
        $$quote($$BASEDIR/../src/Timer/*.cxx) \
        $$quote($$BASEDIR/../src/WebImageView/*.c) \
        $$quote($$BASEDIR/../src/WebImageView/*.c++) \
        $$quote($$BASEDIR/../src/WebImageView/*.cc) \
        $$quote($$BASEDIR/../src/WebImageView/*.cpp) \
        $$quote($$BASEDIR/../src/WebImageView/*.cxx) \
        $$quote($$BASEDIR/../src/XmlReader/*.c) \
        $$quote($$BASEDIR/../src/XmlReader/*.c++) \
        $$quote($$BASEDIR/../src/XmlReader/*.cc) \
        $$quote($$BASEDIR/../src/XmlReader/*.cpp) \
        $$quote($$BASEDIR/../src/XmlReader/*.cxx) \
        $$quote($$BASEDIR/../assets/*.qml) \
        $$quote($$BASEDIR/../assets/*.js) \
        $$quote($$BASEDIR/../assets/*.qs) \
        $$quote($$BASEDIR/../assets/Custom/*.qml) \
        $$quote($$BASEDIR/../assets/Custom/*.js) \
        $$quote($$BASEDIR/../assets/Custom/*.qs) \
        $$quote($$BASEDIR/../assets/Custom/TitleBars/*.qml) \
        $$quote($$BASEDIR/../assets/Custom/TitleBars/*.js) \
        $$quote($$BASEDIR/../assets/Custom/TitleBars/*.qs) \
        $$quote($$BASEDIR/../assets/Images/*.qml) \
        $$quote($$BASEDIR/../assets/Images/*.js) \
        $$quote($$BASEDIR/../assets/Images/*.qs) \
        $$quote($$BASEDIR/../assets/JSON + SQL + XML/*.qml) \
        $$quote($$BASEDIR/../assets/JSON + SQL + XML/*.js) \
        $$quote($$BASEDIR/../assets/JSON + SQL + XML/*.qs) \
        $$quote($$BASEDIR/../assets/JSON + SQL + XML/Data/*.qml) \
        $$quote($$BASEDIR/../assets/JSON + SQL + XML/Data/*.js) \
        $$quote($$BASEDIR/../assets/JSON + SQL + XML/Data/*.qs) \
        $$quote($$BASEDIR/../assets/Pages/*.qml) \
        $$quote($$BASEDIR/../assets/Pages/*.js) \
        $$quote($$BASEDIR/../assets/Pages/*.qs) \
        $$quote($$BASEDIR/../assets/Sheets/*.qml) \
        $$quote($$BASEDIR/../assets/Sheets/*.js) \
        $$quote($$BASEDIR/../assets/Sheets/*.qs)

    HEADERS += \
        $$quote($$BASEDIR/../src/*.h) \
        $$quote($$BASEDIR/../src/*.h++) \
        $$quote($$BASEDIR/../src/*.hh) \
        $$quote($$BASEDIR/../src/*.hpp) \
        $$quote($$BASEDIR/../src/*.hxx)
}

TRANSLATIONS = $$quote($${TARGET}.ts)
