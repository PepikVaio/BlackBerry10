APP_NAME = access_permission

CONFIG += qt warn_on cascades10
QT += network

LIBS   += -lbb
LIBS   += -lbbdata
LIBS   += -lbbdevice

LIBS   += -lbbsystem

include(config.pri)
