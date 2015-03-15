TEMPLATE = app
TARGET = game

QT += qml quick

SOURCES += main.cpp

RESOURCES += game.qrc

OTHER_FILES += game.apparmor \
               game.desktop \
               game.png

#specify where the config files are installed to
config_files.path = /game
config_files.files += $${OTHER_FILES}
message($$config_files.files)
INSTALLS+=config_files

# Default rules for deployment.
include(../deployment.pri)

