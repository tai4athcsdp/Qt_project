import QtQuick.Layouts
import QtQuick

Rectangle {
    id: root
    property bool hasTableName: true
    property string tableName: ""
    property real tableNameHeightRatio: hasTableName ? 0.05 : 0
    property real tableFooterRatio: 0.05
    property real tableContentRatio: 1 - tableNameHeightRatio - tableFooterRatio
    border {
        color: "green"
        width: 1
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        CustomLabel {
            id: tableName
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.preferredHeight: root.tableNameHeightRatio
            text: root.tableName
        }

        ListView {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.preferredHeight: root.tableNameHeightRatio
        }

    }
}
