APP_NAME = [app_name]

CONFIG += qt warn_on cascades10
QT += network

LIBS   += -lbb
LIBS   += -lbbdata
LIBS   += -lbbdevice

include(config.pri)
