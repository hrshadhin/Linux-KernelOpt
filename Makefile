#############################################################################
# Makefile for building: Build/KernelOptimizer
# Generated by qmake (2.01a) (Qt 4.8.6) on: Sat Nov 28 21:01:21 2015
# Project:  KernelOptiPack.pro
# Template: app
# Command: /usr/lib/x86_64-linux-gnu/qt4/bin/qmake -Wall -o Makefile KernelOptiPack.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -m64 -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -m64 -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++-64 -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4 -I. -I.
LINK          = g++
LFLAGS        = -m64 -Wl,-O1
LIBS          = $(SUBLIBS)  -L/usr/lib/x86_64-linux-gnu -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/lib/x86_64-linux-gnu/qt4/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		mainwindow.cpp \
		createlog.cpp \
		logview.cpp \
		osinfo.cpp \
		lshw.cpp \
		contenthelp.cpp \
		abouts.cpp moc_mainwindow.cpp \
		moc_logview.cpp \
		moc_osinfo.cpp \
		moc_lshw.cpp \
		moc_contenthelp.cpp \
		moc_abouts.cpp \
		qrc_rec.cpp
OBJECTS       = main.o \
		mainwindow.o \
		createlog.o \
		logview.o \
		osinfo.o \
		lshw.o \
		contenthelp.o \
		abouts.o \
		moc_mainwindow.o \
		moc_logview.o \
		moc_osinfo.o \
		moc_lshw.o \
		moc_contenthelp.o \
		moc_abouts.o \
		qrc_rec.o
DIST          = /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/shared.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		KernelOptiPack.pro
QMAKE_TARGET  = KernelOptimizer
DESTDIR       = Build/
TARGET        = Build/KernelOptimizer

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): ui_mainwindow.h ui_logview.h ui_osinfo.h ui_lshw.h ui_contenthelp.h ui_abouts.h $(OBJECTS)  
	@$(CHK_DIR_EXISTS) Build/ || $(MKDIR) Build/ 
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: KernelOptiPack.pro  /usr/share/qt4/mkspecs/linux-g++-64/qmake.conf /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/shared.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib/x86_64-linux-gnu/libQtGui.prl \
		/usr/lib/x86_64-linux-gnu/libQtCore.prl
	$(QMAKE) -Wall -o Makefile KernelOptiPack.pro
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/common/gcc-base.conf:
/usr/share/qt4/mkspecs/common/gcc-base-unix.conf:
/usr/share/qt4/mkspecs/common/g++-base.conf:
/usr/share/qt4/mkspecs/common/g++-unix.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/release.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/shared.prf:
/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib/x86_64-linux-gnu/libQtGui.prl:
/usr/lib/x86_64-linux-gnu/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -Wall -o Makefile KernelOptiPack.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/KernelOptimizer1.0.0 || $(MKDIR) .tmp/KernelOptimizer1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/KernelOptimizer1.0.0/ && $(COPY_FILE) --parents mainwindow.h createlog.h logview.h osinfo.h lshw.h contenthelp.h abouts.h .tmp/KernelOptimizer1.0.0/ && $(COPY_FILE) --parents icons/rec.qrc .tmp/KernelOptimizer1.0.0/ && $(COPY_FILE) --parents main.cpp mainwindow.cpp createlog.cpp logview.cpp osinfo.cpp lshw.cpp contenthelp.cpp abouts.cpp .tmp/KernelOptimizer1.0.0/ && $(COPY_FILE) --parents mainwindow.ui logview.ui osinfo.ui lshw.ui contenthelp.ui abouts.ui .tmp/KernelOptimizer1.0.0/ && (cd `dirname .tmp/KernelOptimizer1.0.0` && $(TAR) KernelOptimizer1.0.0.tar KernelOptimizer1.0.0 && $(COMPRESS) KernelOptimizer1.0.0.tar) && $(MOVE) `dirname .tmp/KernelOptimizer1.0.0`/KernelOptimizer1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/KernelOptimizer1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


first: $(first) copydata

copydata:
	$(COPY_DIR) /home/haxor/temp/Linux-KernelOpt/scripts /home/haxor/temp/Linux-KernelOpt/Build

check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_mainwindow.cpp moc_logview.cpp moc_osinfo.cpp moc_lshw.cpp moc_contenthelp.cpp moc_abouts.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_mainwindow.cpp moc_logview.cpp moc_osinfo.cpp moc_lshw.cpp moc_contenthelp.cpp moc_abouts.cpp
moc_mainwindow.cpp: mainwindow.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) mainwindow.h -o moc_mainwindow.cpp

moc_logview.cpp: logview.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) logview.h -o moc_logview.cpp

moc_osinfo.cpp: osinfo.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) osinfo.h -o moc_osinfo.cpp

moc_lshw.cpp: lshw.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) lshw.h -o moc_lshw.cpp

moc_contenthelp.cpp: contenthelp.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) contenthelp.h -o moc_contenthelp.cpp

moc_abouts.cpp: abouts.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) abouts.h -o moc_abouts.cpp

compiler_rcc_make_all: qrc_rec.cpp
compiler_rcc_clean:
	-$(DEL_FILE) qrc_rec.cpp
qrc_rec.cpp: icons/rec.qrc \
		icons/star.ico \
		icons/stop.ico \
		icons/start.ico \
		icons/dev.png \
		icons/log.ico \
		icons/icon.ico \
		icons/hdinfo.ico \
		icons/info.ico \
		icons/kban.jpg
	/usr/lib/x86_64-linux-gnu/qt4/bin/rcc -name rec icons/rec.qrc -o qrc_rec.cpp

compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_mainwindow.h ui_logview.h ui_osinfo.h ui_lshw.h ui_contenthelp.h ui_abouts.h
compiler_uic_clean:
	-$(DEL_FILE) ui_mainwindow.h ui_logview.h ui_osinfo.h ui_lshw.h ui_contenthelp.h ui_abouts.h
ui_mainwindow.h: mainwindow.ui
	/usr/lib/x86_64-linux-gnu/qt4/bin/uic mainwindow.ui -o ui_mainwindow.h

ui_logview.h: logview.ui
	/usr/lib/x86_64-linux-gnu/qt4/bin/uic logview.ui -o ui_logview.h

ui_osinfo.h: osinfo.ui
	/usr/lib/x86_64-linux-gnu/qt4/bin/uic osinfo.ui -o ui_osinfo.h

ui_lshw.h: lshw.ui
	/usr/lib/x86_64-linux-gnu/qt4/bin/uic lshw.ui -o ui_lshw.h

ui_contenthelp.h: contenthelp.ui
	/usr/lib/x86_64-linux-gnu/qt4/bin/uic contenthelp.ui -o ui_contenthelp.h

ui_abouts.h: abouts.ui
	/usr/lib/x86_64-linux-gnu/qt4/bin/uic abouts.ui -o ui_abouts.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_rcc_clean compiler_uic_clean 

####### Compile

main.o: main.cpp mainwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

mainwindow.o: mainwindow.cpp mainwindow.h \
		ui_mainwindow.h \
		createlog.h \
		logview.h \
		osinfo.h \
		lshw.h \
		contenthelp.h \
		abouts.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainwindow.o mainwindow.cpp

createlog.o: createlog.cpp createlog.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o createlog.o createlog.cpp

logview.o: logview.cpp logview.h \
		ui_logview.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o logview.o logview.cpp

osinfo.o: osinfo.cpp osinfo.h \
		ui_osinfo.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o osinfo.o osinfo.cpp

lshw.o: lshw.cpp lshw.h \
		ui_lshw.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o lshw.o lshw.cpp

contenthelp.o: contenthelp.cpp contenthelp.h \
		ui_contenthelp.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o contenthelp.o contenthelp.cpp

abouts.o: abouts.cpp abouts.h \
		ui_abouts.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o abouts.o abouts.cpp

moc_mainwindow.o: moc_mainwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainwindow.o moc_mainwindow.cpp

moc_logview.o: moc_logview.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_logview.o moc_logview.cpp

moc_osinfo.o: moc_osinfo.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_osinfo.o moc_osinfo.cpp

moc_lshw.o: moc_lshw.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_lshw.o moc_lshw.cpp

moc_contenthelp.o: moc_contenthelp.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_contenthelp.o moc_contenthelp.cpp

moc_abouts.o: moc_abouts.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_abouts.o moc_abouts.cpp

qrc_rec.o: qrc_rec.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qrc_rec.o qrc_rec.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:
