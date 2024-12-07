import QtQuick

Rectangle {
    id: rect1
    width: 100
    height: 100
    border.width: 1
    color: Qt.rgba(Math.random(), Math.random(), Math.random(), 0.7)
    Text{
        text: "My color: "+rect1.color
        anchors.centerIn: rect1
        font.pixelSize: 16
    }
}
