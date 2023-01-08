import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls
import Qt.labs.platform

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

            onClicked: {
                //open popup to choose file
                openDialog.visible = true;
            }

            FileDialog {
                id: openDialog
                title: "Please choose a file"
                folder: Controller.getCurrentDir();
                onAccepted: {
                    console.log("You chose: " + openDialog.currentFile)
                    Controller.play(openDialog.currentFile);
                }
                onRejected: {
                    console.log("Canceled")
                }
                visible: false
            }

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
