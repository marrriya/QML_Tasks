import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12

Window {
    id: windoww
    visible: true
    width: 320
    height: 568
    title: qsTr("Task_for_Layout")
    property real rHeight: height / 10
    property real rWidth: width / 3


    Rectangle{
        id: header
        color: "#dcdcdc"
        height: rHeight

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right

        Text {
            text: qsTr("Header")
            font.pointSize: 10
            anchors.centerIn: parent
        }

    }

    Rectangle{
        id: content
        color: "#f5f5f5"
        // width: 200
        // height: 200
        border.color: "#dcdcdc"
        border.width: 1

        anchors.top: header.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: footer.top
        anchors.margins: 10


        Text {
            text: qsTr("Content")
            font.pointSize: 10
            anchors.centerIn: parent
        }
    }
    Rectangle{
        id: footer
        color: "#f5f5f5"
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        height: rHeight

        Rectangle{
            id: first
            width: rWidth - 4

            color: "#d3d3d3"
            border.color: "#dcdcdc"
            border.width: 1

            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            // anchors.rightMargin: 2
            // anchors.margins: 2
            Text {
                text: qsTr("1")
                font.pointSize: 10
                anchors.centerIn: parent
            }
        }

        Rectangle{
            id: second
            color: "#d3d3d3"
            border.color: "#dcdcdc"
            border.width: 1

            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: first.right
            anchors.right: third.left

            anchors.rightMargin: 3
            anchors.leftMargin: 3
            Text {
                text: qsTr("2")
                font.pointSize: 10
                anchors.centerIn: parent
            }
        }

        Rectangle{
            id: third
            width: rWidth - 4

            color: "#d3d3d3"
            border.color: "#dcdcdc"
            border.width: 1

            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            Text {
                text: qsTr("3")
                font.pointSize: 10
                anchors.centerIn: parent
            }
        }
    }

}
