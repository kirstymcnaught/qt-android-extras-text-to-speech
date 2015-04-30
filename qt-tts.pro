
DESTDIR = libs

TEMPLATE = subdirs

SUBDIRS += sampleproject
sampleproject.file = sampleproject/exampleTtsApp.pro

SUBDIRS += tts-library
tts-library.file = tts-library/qtTts.pro
