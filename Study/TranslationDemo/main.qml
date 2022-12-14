import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Text {
        id: name
        text: qsTr("Hello, I am Tai!")
        font.pixelSize: 20
        anchors.centerIn: parent
    }
}
