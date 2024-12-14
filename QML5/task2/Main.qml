import QtQuick 2.15
import QtQuick.Window 2.15
// import QtQuick.Layouts 1.12

Window {
    id: windoww
    visible: true
    width: 320
    height: 568
    title: qsTr("Task_for_Layout")
    property real rHeight: height / 10
    property real rWidth: width / 3
    Rectangle{
        id: mainn
        width: 320
        height: 568
        states: [
            State {
                name: "firsts"
                PropertyChanges {
                    target: first
                    color: "#d3d3d3"
                }
                PropertyChanges {
                    target: firsttxt
                    color: "black"
                }
                PropertyChanges {
                    target: second
                    color: "#f5f5f5"
                }
                PropertyChanges {
                    target: secondtxt
                    color: "#d3d3d3"
                }
                PropertyChanges {
                    target: third
                    color: "#f5f5f5"
                }
                PropertyChanges {
                    target: thirdtxt
                    color: "#d3d3d3"
                }
                PropertyChanges {
                    target: centertxt
                    text: "Item 1 content"
                }
                PropertyChanges {
                    target: caption
                    text: "header1"
                }
                PropertyChanges {
                    target: backbtn
                    color: "#dcdcdc"
                }
                PropertyChanges {
                    target: backtxt
                    color: "#dcdcdc"
                }
            },
            State {
                name: "seconds"
                PropertyChanges {
                    target: second
                    color: "#d3d3d3"
                }
                PropertyChanges {
                    target: secondtxt
                    color: "black"
                }
                PropertyChanges {
                    target: first
                    color: "#f5f5f5"
                }
                PropertyChanges {
                    target: firsttxt
                    color: "#d3d3d3"
                }
                PropertyChanges {
                    target: third
                    color: "#f5f5f5"
                }
                PropertyChanges {
                    target: thirdtxt
                    color: "#d3d3d3"
                }
                PropertyChanges {
                    target: centertxt
                    text: "Item 2 content"
                }
                PropertyChanges {
                    target: caption
                    text: "header2"
                }
                PropertyChanges {
                    target: backbtn
                    color: "gray"
                }
                PropertyChanges {
                    target: backtxt
                    color: "black"
                }
            },
            State {
                name: "thirds"
                PropertyChanges {
                    target: third
                    color: "#d3d3d3"
                }
                PropertyChanges {
                    target: thirdtxt
                    color: "black"
                }
                PropertyChanges {
                    target: second
                    color: "#f5f5f5"
                }
                PropertyChanges {
                    target: secondtxt
                    color: "#d3d3d3"
                }
                PropertyChanges {
                    target: first
                    color: "#f5f5f5"
                }
                PropertyChanges {
                    target: firsttxt
                    color: "#d3d3d3"
                }
                PropertyChanges {
                    target: centertxt
                    text: "Item 3 content"
                }
                PropertyChanges {
                    target: caption
                    text: "header3"
                }
                PropertyChanges {
                    target: backbtn
                    color: "gray"
                }
                PropertyChanges {
                    target: backtxt
                    color: "black"
                }
            }
        ]

        Rectangle{
            id: header
            color: "#dcdcdc"
            height: rHeight

            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right

            Text {
                id: caption
                text: qsTr("Header")
                font.pointSize: 10
                anchors.centerIn: parent
            }

            Rectangle{
                id: backbtn
                width: rWidth / 2
                height: rHeight / 2
                anchors.margins: 10
                anchors.verticalCenter: parent.verticalCenter
                color: "#dcdcdc"
                Text {
                    id: backtxt
                    text: qsTr("Back")
                    color: "#dcdcdc"
                    font.pointSize: 10
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: first
                    onClicked: mainn.state = "firsts"}
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
                    onClicked: mainn.state = "firsts"
                    // {
                    //     first.color="#d3d3d3"
                    //     firsttxt.color="black"
                    //     second.color="#f5f5f5"
                    //     secondtxt.color="#d3d3d3"
                    //     third.color="#f5f5f5"
                    //     thirdtxt.color="#d3d3d3"
                    //     centertxt.text="Item 1 content"
                    //     caption.text="header1"
                    // }
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
                    onClicked: mainn.state = "seconds"
                    // onClicked: {
                    //     second.color="#d3d3d3"
                    //     secondtxt.color="black"
                    //     first.color="#f5f5f5"
                    //     firsttxt.color="#d3d3d3"
                    //     third.color="#f5f5f5"
                    //     thirdtxt.color="#d3d3d3"
                    //     centertxt.text="Item 2 content"
                    //      caption.text="header2"
                    // }
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
                    onClicked: mainn.state = "thirds"
                    // onClicked: {
                    //     third.color="#d3d3d3"
                    //     thirdtxt.color="black"
                    //     second.color="#f5f5f5"
                    //     secondtxt.color="#d3d3d3"
                    //     first.color="#f5f5f5"
                    //     firsttxt.color="#d3d3d3"
                    //     centertxt.text="Item 3 content"
                    //      caption.text="header3"
                    // }
                }
            }
        }


    }


}



