import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    title: qsTr("Android TTS example")
    width: 640
    height: 480
    visible: true

    Button {
        id: buttonHello
        x: 135
        y: 100
        height: 30
        text: qsTr("Hello")
        onClicked: AndroidTTSClient.speak("Hello")
    }

    Button {
        id: buttonWorld
        x: 208
        y: 100
        height: 30
        width: 71
        text: qsTr("World")
        onClicked: AndroidTTSClient.speak("World")
    }

    Row {
        id: row1
        x: 135
        y: 202

        TextArea {
            id: textEdit
            width: 158
            height: 80
            text: qsTr("type here")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
        }

        Button {
            id: buttonSpeak
            width: 71
            height: 30
            text: qsTr("Speak")
            anchors.verticalCenter: parent.verticalCenter
            onClicked: AndroidTTSClient.speak(textEdit.text)
        }
    }

}
