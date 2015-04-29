#include <QDebug>

#include "AndroidTTSClient.h"

AndroidTTSClient::AndroidTTSClient(QObject *parent)
    : QObject(parent)
{

}

void AndroidTTSClient::speak(QString msg ){
    QAndroidJniObject javaMessage = QAndroidJniObject::fromString(msg);
    QAndroidJniObject::callStaticMethod<void>("org/qtproject/example/testandroidextras/AndroidTTSClient",
                                              "speak",
                                              "(Ljava/lang/String;)V",
                                              javaMessage.object<jstring>());

}
