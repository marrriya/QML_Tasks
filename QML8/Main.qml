import QtQuick
import QtQuick.Controls

Window {
    width: 480
    height: 640
    visible: true
    title: qsTr("Hello World")

    property real rWidth: width / 8
    property real rHeight: height / 8

    SwipeView{
        id: view
        interactive: SwipeView.ForceElasticity
        currentIndex: 1
        anchors.fill: parent

        Item{
            id: firstPage
            Rectangle{
                id: redpage
                width: rWidth * 4
                height: rHeight * 6
                color: "#bdbdbd"
                border.color: "#4a4a4a"
                border.width: 3
                anchors.centerIn: parent

                Rectangle{
                        id: redr
                        width: rWidth * 2
                        height: rHeight *1.5
                        color: "#FF0000"
                        border.color: "#AB0000"
                        border.width: 3
                        anchors.bottom: yellowr.top
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.margins: 20
                    }
                    Rectangle{
                        id: yellowr
                        width: rWidth * 2
                        height: rHeight *1.5
                        color: "gray"
                        border.color: "#4a4a4a"
                        border.width: 3
                        anchors.centerIn: parent
                        anchors.margins: 20
                    }
                    Rectangle{
                        id: greenr
                        width: rWidth * 2
                        height: rHeight *1.5
                        color: "gray"
                        border.color: "#4a4a4a"
                        border.width: 3
                        anchors.margins: 20
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: yellowr.bottom
                    }
            }




        }
        Item{
            id: secondPage
            Rectangle{
                id: yellowpage
                width: rWidth * 4
                height: rHeight * 6
                color: "#bdbdbd"
                border.color: "#4a4a4a"
                border.width: 3
                anchors.centerIn: parent

                Rectangle{
                        id: redy
                        width: rWidth * 2
                        height: rHeight *1.5
                        color: "gray"
                        border.color: "#4a4a4a"
                        border.width: 3
                        anchors.bottom: yellowy.top
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.margins: 20
                    }
                    Rectangle{
                        id: yellowy
                        width: rWidth * 2
                        height: rHeight *1.5
                        color: "#FFD300"
                        border.color: "#AB8E00"
                        border.width: 3
                        anchors.centerIn: parent
                        anchors.margins: 20
                    }
                    Rectangle{
                        id: greeny
                        width: rWidth * 2
                        height: rHeight *1.5
                        color: "gray"
                        border.color: "#4a4a4a"
                        border.width: 3
                        anchors.margins: 20
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: yellowy.bottom
                    }
            }


        }
        Item{
            id: thirdPage
            Rectangle{
                id: greenpage
                width: rWidth * 4
                height: rHeight * 6
                color: "#bdbdbd"
                border.color: "#4a4a4a"
                border.width: 3
                anchors.centerIn: parent

                Rectangle{
                        id: redg
                        width: rWidth * 2
                        height: rHeight *1.5
                        color: "gray"
                        border.color: "#4a4a4a"
                        border.width: 3
                        anchors.bottom: yellowg.top
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.margins: 20
                    }
                    Rectangle{
                        id: yellowg
                        width: rWidth * 2
                        height: rHeight *1.5
                        color: "gray"
                        border.color: "#4a4a4a"
                        border.width: 3
                        anchors.centerIn: parent
                        anchors.margins: 20
                    }
                    Rectangle{
                        id: greeng
                        width: rWidth * 2
                        height: rHeight *1.5
                        color: "#00F000"
                        border.color: "#00A100"
                        border.width: 3
                        anchors.margins: 20
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: yellowg.bottom
                    }
            }

        }




    }
    PageIndicator{
        id: indicator
        count: view.count
        currentIndex: view.currentIndex
        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }


}
