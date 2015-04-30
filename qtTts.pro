# Add more folders to ship with the application, here
folder_01.source = qml/testAndroidExtras
folder_01.target = qml
DEPLOYMENTFOLDERS = folder_01

# Additional import path used to resolve QML modules in Creator's code model
QML_IMPORT_PATH =

QT += quick

android {
  QT += androidextras
}

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android-sources

INCLUDEPATH += TTS

# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += main.cpp

# The implementation of the TTSClient object is OS-dependent. The build system
# chooses the appropriate one.
macx {
  SOURCES += TTS/macx/TTSClient.cpp
}
android {
  SOURCES += TTS/android/TTSClient.cpp
}
win32 {
  SOURCES += TTS/win/TTSClient.cpp
}
# Not sure if "ios" is correct flag here.
ios {
  SOURCES += TTS/ios/TTSClient.cpp
}



# Installation path
# target.path =

# Please do not modify the following two lines. Required for deployment.
include(qtquick2applicationviewer/qtquick2applicationviewer.pri)
qtcAddDeployment()

HEADERS += TTS/TTSClient.h

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android-source

OTHER_FILES += \
    android-source/AndroidManifest.xml

RESOURCES += \
    resources.qrc

DISTFILES += \
    android-source/src/org/qtproject/example/textandroidextras/AndroidTTSClient.java
