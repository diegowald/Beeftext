# ----------------------------------------------------
# This file is generated by the Qt Visual Studio Tools.
# ------------------------------------------------------

TEMPLATE = app
TARGET = Beeftext
QT += core network gui multimedia widgets
CONFIG += c++14 precompile_header
PRECOMPILED_HEADER = stdafx.h
include(Beeftext.pri)
TRANSLATIONS += Translations/beeftext_fr.ts
win32:RC_FILE = Beeftext.rc

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../Submodules/XMiLib/XMiLib/release/ -lXMiLib -lPsapi
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../Submodules/XMiLib/XMiLib/debug/ -lXMiLib -lPsapi
else:unix: LIBS += -L$$OUT_PWD/../Submodules/XMiLib/XMiLib/ -lXMiLib

INCLUDEPATH += $$PWD/../Submodules/XMiLib/
DEPENDPATH += $$PWD/../Submodules/XMiLib/

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../Submodules/XMiLib/XMiLib/release/libXMiLib.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../Submodules/XMiLib/XMiLib/debug/libXMiLib.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../Submodules/XMiLib/XMiLib/release/XMiLib.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../Submodules/XMiLib/XMiLib/debug/XMiLib.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../Submodules/XMiLib/XMiLib/libXMiLib.a