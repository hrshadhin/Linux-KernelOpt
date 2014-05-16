#-------------------------------------------------
#
# Project created by QtCreator 2014-04-11T16:56:01
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = KernelOptiPack
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    createlog.cpp \
    logview.cpp \
    osinfo.cpp \
    lshw.cpp \
    contenthelp.cpp \
    abouts.cpp

HEADERS  += mainwindow.h \
    createlog.h \
    logview.h \
    osinfo.h \
    lshw.h \
    contenthelp.h \
    abouts.h

FORMS    += mainwindow.ui \
    logview.ui \
    osinfo.ui \
    lshw.ui \
    contenthelp.ui \
    abouts.ui


RESOURCES += \
    icons/rec.qrc
