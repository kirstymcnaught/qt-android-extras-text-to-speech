#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "TTS/TTSClient.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;    

    // Setup a TTS client to be passed down to QML.
    TTSClient *ttsClient = new TTSClient(&engine);
    engine.rootContext()->setContextProperty(QLatin1String("AndroidTTSClient"),
                                                       ttsClient);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
