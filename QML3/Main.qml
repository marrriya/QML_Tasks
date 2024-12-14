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
            id: centertxt
            text: qsTr("Some content")
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

            color: "#f5f5f5"
            border.color: "#dcdcdc"
            border.width: 1

            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            // anchors.rightMargin: 2
            // anchors.margins: 2
            Text {
                id: firsttxt
                text: qsTr("Item 1")
                font.pointSize: 10
                anchors.centerIn: parent
                color: "#d3d3d3"
            }
            MouseArea{
                anchors.fill: first
                onClicked: {
                    // console.log("Button clicked")
                    first.color="#d3d3d3"
                    firsttxt.color="black"
                    second.color="#f5f5f5"
                    secondtxt.color="#d3d3d3"
                    third.color="#f5f5f5"
                    thirdtxt.color="#d3d3d3"
                    centertxt.text="Item 1 content"
                }
            }
        }

        Rectangle{
            id: second
            color: "#f5f5f5"
            border.color: "#dcdcdc"
            border.width: 1

            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: first.right
            anchors.right: third.left

            anchors.rightMargin: 3
            anchors.leftMargin: 3
            Text {
                id: secondtxt
                color: "#d3d3d3"
                text: qsTr("Item 2")
                font.pointSize: 10
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: second
                onClicked: {
                    // console.log("Button clicked")
                    second.color="#d3d3d3"
                    secondtxt.color="black"
                    first.color="#f5f5f5"
                    firsttxt.color="#d3d3d3"
                    third.color="#f5f5f5"
                    thirdtxt.color="#d3d3d3"
                    centertxt.text="Item 2 content"
                }
            }
        }

        Rectangle{
            id: third
            width: rWidth - 4

            color: "#f5f5f5"
            border.color: "#dcdcdc"
            border.width: 1

            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            Text {
                id: thirdtxt
                text: qsTr("Item 3")
                font.pointSize: 10
                anchors.centerIn: parent
                color: "#d3d3d3"
            }
            MouseArea{
                anchors.fill: third
                onClicked: {
                    // console.log("Button clicked")
                    third.color="#d3d3d3"
                    thirdtxt.color="black"
                    second.color="#f5f5f5"
                    secondtxt.color="#d3d3d3"
                    first.color="#f5f5f5"
                    firsttxt.color="#d3d3d3"
                    centertxt.text="Item 3 content"
                }
            }
        }
    }

}
