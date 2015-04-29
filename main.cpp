#include <QtGui/QGuiApplication>
#include <QtQuick>
#include "TTSClient.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQuickView viewer;

    TTSClient *ttsClient = new TTSClient(&viewer);
    viewer.engine()->rootContext()->setContextProperty(QLatin1String("AndroidTTSClient"),
                                                     ttsClient);

    viewer.setSource(QUrl(QStringLiteral("qrc:/qml/testAndroidExtras/main.qml")));
    viewer.show();

    return app.exec();
}
