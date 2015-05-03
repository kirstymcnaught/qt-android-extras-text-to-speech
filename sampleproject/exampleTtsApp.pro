TEMPLATE = app

QT += qml quick widgets

SOURCES += main.cpp

INCLUDEPATH += ../tts-library/

RESOURCES += qml.qrc

#PRE_TARGETDEPS += $$shadowed($$PWD)/../tts-library/libs/libqtTts.a

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)


INCLUDEPATH += $$PWD/../tts-library
DEPENDPATH += $$PWD/../tts-library

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../tts-library/release/ -lqtTts
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../tts-library/debug/ -lqtTts
else:unix: LIBS += -L$$OUT_PWD/../tts-library/libs -lqtTts

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../tts-library/release/libqtTts.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../tts-library/debug/libqtTts.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../tts-library/release/qtTts.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../tts-library/debug/qtTts.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../tts-library/libs/libqtTts.a


# Please do not modify the following two lines. Required for deployment.
include(qtquick2applicationviewer/qtquick2applicationviewer.pri)
qtcAddDeployment()


DISTFILES += \
    android-source/src/org/qtproject/example/textandroidextras/AndroidTTSClient.java
