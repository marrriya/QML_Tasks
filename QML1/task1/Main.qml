import QtQuick
import QtQuick.Window

// import QtQuick.Controls 2.15

Window {
    id:win
    width: 480
    height: 640
    visible: true
    title: qsTr("Hello World")

    property real rWidth: width / 8
    property real rHeight: height / 8

    Rectangle{
        id: rCenter
        width: rWidth * 2.5
        height: rHeight * 1.5
        color: "#33CDC7"
        anchors.centerIn: parent
        // anchors.bottom: parent.bottom
    }


    Rectangle{
        id: rBottom1
        width: rWidth * 3.2
        height: rHeight * 0.5
        color: "#730065"
        anchors.top: rCenter.bottom
        anchors.horizontalCenter: parent.horizontalCenter

    }

    Rectangle{
        id: rBottom2
        width: rWidth * 3
        height: rHeight * 1.5
        color: "#D836C4"
        anchors.top: rBottom1.bottom
        anchors.horizontalCenter: parent.horizontalCenter

    }


    Rectangle{
        id: rTop1
        width: rWidth * 1.85
        height: rHeight * 0.3
        color: "#FF4900"
        anchors.bottom: rTop2.top
        anchors.horizontalCenter: parent.horizontalCenter

    }

    Rectangle{
        id: rTop2
        width: rWidth * 1.75
        height: rHeight
        color: "#FF7640"
        anchors.bottom: rCenter.top
        anchors.horizontalCenter: parent.horizontalCenter

    }

    Rectangle{
        id: topLine1
        width: rWidth * 0.07
        // height: rHeight
        color: "#E3FB71"
        anchors.horizontalCenter: rTop1.horizontalCenter
        anchors.top: rTop1.top
        anchors.bottom: rTop2.bottom
    }
    Rectangle{
        id: topLine2
        width: rWidth * 0.5
        height: rHeight * 0.3
        color: "#DAFB3F"
        anchors.right: topLine1.left
        anchors.bottom: topLine1.top
    }
    Rectangle{
        id: topLine3
        width: rWidth * 0.5
        height: rHeight * 0.4
        color: "#DAFB3F"
        anchors.left: topLine1.right
        anchors.bottom: topLine1.top
    }

    Rectangle{
        id: centerLine1
        width: rWidth * 0.07
        height: rHeight
        color: "#FF9200"
        anchors.leftMargin: rWidth * 0.5
        anchors.left: rCenter.left
        anchors.top: rCenter.top
        anchors.bottom: rCenter.bottom
    }
    Rectangle{
        id: centerLine2
        width: rWidth
        height: rHeight * 0.07
        color: "#FF9200"
        anchors.left: rCenter.left
        anchors.right: rCenter.right
        anchors.verticalCenter: rCenter.verticalCenter
    }

    Rectangle{
        id: bottomLine1
        color: "#FF7D73"
        width: rWidth * 0.1
        height: rHeight
        anchors.top: rBottom1.top
        anchors.bottom: rBottom2.bottom
        anchors.horizontalCenter: rBottom2.horizontalCenter
    }
    Rectangle{
        id: bottomLine2
        color: "#FF4E40"
        width: rWidth * 0.8
        height: rHeight * 0.5
        anchors.bottom: rBottom1.top
        anchors.right: bottomLine1.left
    }
    Rectangle{
        id: bottomLine3
        color: "#FF4E40"
        width: rWidth
        height: rHeight * 0.4
        anchors.bottom: rBottom1.top
        anchors.left: bottomLine1.right
    }
    Rectangle{
        id: bottomLine4
        color: "#FF7D73"
        width: rWidth * 0.3
        height: rHeight
        anchors.top: rBottom1.top
        anchors.right: rBottom2.right
        anchors.rightMargin: rWidth * 0.7
    }
}
