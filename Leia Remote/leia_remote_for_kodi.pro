APP_NAME = leia_remote_for_kodi

CONFIG += qt warn_on cascades10
QT += network

LIBS   += -lbbdata

LIBS   += -lbb -lbbdevice

include(config.pri)
