
TARGET = qtTts
TEMPLATE = lib

CONFIG += staticlib
CONFIG += create_prl
CONFIG += qt

DESTDIR = libs

INCLUDEPATH += TTS

HEADERS += TTS/TTSClient.h

# The implementation of the TTSClient object is OS-dependent. The build system
# chooses the appropriate one, plus any extra dependencies.
macx {
  SOURCES += TTS/macx/TTSClient.cpp
}
android {
  SOURCES += TTS/android/TTSClient.cpp
  QT += androidextras
}
win32 {
  SOURCES += TTS/win/TTSClient.cpp
}
# Not sure if "ios" is correct flag here.
ios {
  SOURCES += TTS/ios/TTSClient.cpp
}

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android-source

OTHER_FILES += \
    android-source/AndroidManifest.xml

DISTFILES += \
    android-source/src/org/qtproject/example/textandroidextras/AndroidTTSClient.java
