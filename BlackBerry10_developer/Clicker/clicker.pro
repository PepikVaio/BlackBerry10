APP_NAME = clicker

CONFIG += qt warn_on cascades10
QT += network

LIBS   += -lbbdata


LIBS   += -lbb -lbbdevice

include(config.pri)

# Add qml subfolders 
//lupdate_inclusion {
//	SOURCES += $$quote($$BASEDIR/../assets/QuotePage/*.qml) \
//             $$quote($$BASEDIR/../assets/Pages/*.qml) 
//}
