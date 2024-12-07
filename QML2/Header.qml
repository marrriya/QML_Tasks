import QtQuick

Rectangle{
    color: "#dcdcdc"
    border.color: "lightgray"
    border.width: 1

    // anchors.top: parent.top
    // anchors.left: parent.left
    // anchors.right: parent.right

    Text {
        text: qsTr("Header")
        font.pointSize: 10
        anchors.centerIn: parent
    }

}
