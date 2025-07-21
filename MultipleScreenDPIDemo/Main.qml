import QtQuick

Window {
    width: 1920
    height: 1080
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        width: 40
        height: 40
        border.color: "red"
        border.width: 1
        anchors.centerIn: parent
        Text {
            text: "Hello"
            font.pixelSize: 15
            anchors.centerIn: parent

            Component.onCompleted: {
                console.log("qqq text " + width + ", height: " + height)
            }
        }
    }

}
