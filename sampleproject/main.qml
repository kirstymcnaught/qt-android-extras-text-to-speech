import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    title: qsTr("Android TTS example")
    width: 240
    height: 480
    visible: true

    Button {
        id: buttonHello
        x: 20
        y: 100
        height: 30
        text: qsTr("Hello")
        onClicked: {
            console.log("speaking hello");
            AndroidTTSClient.speak("Hello");
        }
    }

    Button {
        id: buttonWorld
        x: 100
        y: 100
        height: 30
        width: 71
        text: qsTr("World")
        onClicked: {
            console.log("speaking world");
            AndroidTTSClient.speak("World");
        }
    }

    Column {
        id: row1
        x: 20
        y: 202

        TextArea {
            id: textEdit
            width: 158
            height: 80
            text: qsTr("type here")
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 12
        }

        Button {
            id: buttonSpeak
            width: 71
            height: 30
            text: qsTr("Speak")
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                var txt = textEdit.text;
                console.log("speaking " + txt);
                AndroidTTSClient.speak(textEdit.text)
            }
        }
    }

}
