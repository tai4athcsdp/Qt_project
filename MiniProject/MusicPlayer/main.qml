import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("My Media Player")


    Rectangle {

        id: menuBar

        width: parent.width
        height: 50
        color: "darkcyan"

        Button {

            id: openButton

            width: 100
            height: menuBar.height
            text: qsTr("Open")

        }
    }

    Item {

        id: mainScreen

        width: parent.width
        height: 340
        anchors {
            top: menuBar.bottom
            left: root.left
        }

        Rectangle {
            anchors.fill: parent
            color: "red"
        }
    }

    Rectangle {

        id: progressBar

        width: root.width
        height: 20

        anchors {
            top: mainScreen.bottom
            topMargin: 5
            left: root.left
        }

        Rectangle {
            anchors.fill: parent
            color: "green"
        }

    }


    Rectangle {

        id: controlButtonArea

        width: root.width
        height: 50

        anchors {
            top: progressBar.bottom
            topMargin: 5
            left: root.left
        }

        Rectangle {
            anchors.fill: parent
            color: "blue"
        }

    }


}
