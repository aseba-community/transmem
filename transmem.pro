#-------------------------------------------------
#
# Project created by QtCreator 2017-04-13T09:57:47
#
#-------------------------------------------------

QT += gui

HEADERS += include/transmem/transmem.h \
    src/headers/typedefs.h \
    src/headers/frameAndLink.h \
    src/headers/gmlWriter.h \
    src/headers/stampedTransformation.h \
    src/headers/diijkstra.h \
    src/headers/transformationBuffer.h \

SOURCES += src/transmem.cpp \
    src/frameAndLink.cpp \
    src/gmlWriter.cpp \
    src/stampedTransformation.cpp \
    src/transformationBuffer.cpp \
    src/diijkstra.cpp \

INCLUDEPATH += include

 target.path = /usr/lib
 INSTALLS += target


test{

    QT += testlib

    HEADERS += test/include/transmemTest.h \
               test/include/matHelper.h

    SOURCES += test/src/transmemTest.cpp \
               test/src/matHelper.cpp

    TEMPLATE = app
    TARGET = myapptests

}
else{

    TEMPLATE = lib
    TARGET = transmem
    CONFIG += staticlib
}



# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
