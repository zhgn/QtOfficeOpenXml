DEPENDPATH += $$PWD/src
INCLUDEPATH += $$PWD/src

HEADERS += \
           #$$PWD/src/k7zip.h \
           #$$PWD/src/kar.h \
           $$PWD/src/karchive.h \
           $$PWD/src/karchive_p.h \
           $$PWD/src/karchivedirectory.h \
           $$PWD/src/karchiveentry.h \
           $$PWD/src/karchivefile.h \
           #$$PWD/src/kbzip2filter.h \
           $$PWD/src/kcompressiondevice.h \
           $$PWD/src/kfilterbase.h \
           $$PWD/src/kfilterdev.h \
           $$PWD/src/kgzipfilter.h \
           $$PWD/src/klimitediodevice_p.h \
           $$PWD/src/knonefilter.h \
           $$PWD/src/ktar.h \
           #$$PWD/src/kxzfilter.h \
           $$PWD/src/kzip.h \
           $$PWD/src/kzipfileentry.h

SOURCES += \
           #$$PWD/src/k7zip.cpp \
           #$$PWD/src/kar.cpp \
           $$PWD/src/karchive.cpp \
           #$$PWD/src/kbzip2filter.cpp \
           $$PWD/src/kcompressiondevice.cpp \
           $$PWD/src/kfilterbase.cpp \
           $$PWD/src/kfilterdev.cpp \
           $$PWD/src/kgzipfilter.cpp \
           $$PWD/src/klimitediodevice.cpp \
           $$PWD/src/knonefilter.cpp \
           $$PWD/src/ktar.cpp \
           #$$PWD/src/kxzfilter.cpp \
           $$PWD/src/kzip.cpp

win32: LIBS += -ladvapi32

contains(QT_CONFIG, system-zlib) {
    if(unix|win32-g++*):     LIBS_PRIVATE += -lz
    else:                    LIBS += zdll.lib
} else {
    p1 = $$[QT_INSTALL_HEADERS/get]/QtZlib
    p2 = $$[QT_INSTALL_HEADERS/src]/QtZlib
    exists($$p1): INCLUDEPATH += $$p1
    else: INCLUDEPATH += $$p2
}