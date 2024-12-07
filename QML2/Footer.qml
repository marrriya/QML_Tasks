import QtQuick 2.15
import QtQuick.Layouts

Rectangle {
    color: "lightgray"
    RowLayout {
        anchors.fill: parent
        spacing: 2

        Rectangle {
            id: footerRect1
            color: "lightgray"
            border.color: "gray"
            border.width: 2
            width: (parent.width / 3)
            height: parent.height
            Layout.alignment: Qt.AlignLeft
            Text {
                anchors.centerIn: parent
                text: "1"
                font.pointSize: 12
            }
        }

        Rectangle {
            id: footerRect2
            color: "lightgray"
            border.color: "gray"
            border.width: 2
            width: (parent.width / 3)
            height: parent.height
            Layout.alignment: Qt.AlignCenter
            Text {
                anchors.centerIn: parent
                text: "2"
                font.pointSize: 12
            }
        }

        Rectangle {
            id: footerRect3
            color: "lightgray"
            border.color: "gray"
            border.width: 2
            width: (parent.width / 3)
            height: parent.height
            Layout.alignment: Qt.AlignRight
            Text {
                anchors.centerIn: parent
                text: "3"
                font.pointSize: 12
            }
        }
    }
}
