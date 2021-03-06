QT += svg xml
CONFIG += help
# binary
TARGET  = Planta

INCLUDEPATH = include
LIB     = lib
# destination of the binary
#DESTDIR = bin
DESTDIR = .
BUILD   = build
SRC     = src
RES     = resources
UI      = ui

# add .ui -> .h file to include path
UI_DIR  = $$INCLUDEPATH

# moc_ 
MOC_DIR = $$BUILD

# .o
OBJECTS_DIR  = $$BUILD

# from resources -> cpp
RCC_DIR      = $$BUILD


INTERFACES = $$UI/floorplan2.ui

HEADERS =    $$INCLUDEPATH/svglistwidget.h \
             $$INCLUDEPATH/assistant.h \
             $$INCLUDEPATH/dragwidgetgrid.h \
             $$INCLUDEPATH/pages.h \
             $$INCLUDEPATH/configdialog.h \
             $$INCLUDEPATH/memoriadescritiva.h \
             $$INCLUDEPATH/scenepixmapitem.h \
             $$INCLUDEPATH/mainwindow.h
               

RESOURCES =  $$RES/floorplan.qrc

SOURCES =    $$SRC/svglistwidget.cpp \
             $$SRC/dragwidgetgrid.cpp \
             $$SRC/assistant.cpp \
             $$SRC/pages.cpp \
             $$SRC/scenepixmapitem.cpp \
             $$SRC/configdialog.cpp \
             $$SRC/memoriadescritiva.cpp \
             $$SRC/mainwindow.cpp \
             $$SRC/main.cpp

 
# install
target.path = $$DESTDIR
sources.files = $$SOURCES $$HEADERS $$RESOURCES *.pro images
INSTALLS += target 

QMAKE_CLEAN += src/*~
QMAKE_CLEAN += include/*~

