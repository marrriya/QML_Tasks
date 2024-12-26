import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: inputBar
    width: parent.width
    height: 50
    property string text: ""
    Rectangle {
        width: parent.width
        height: 50
        color: "#FFFFFF"
        // gradient: Gradient {
        //     GradientStop { position: 0.0; color: "#d5d4d3" }
        //     GradientStop { position: 1.0; color: "#fbfffa" }
        // }
        anchors.bottom: parent.bottom
        TextInput {
            id: inputField
            width: parent.width - 120
            height: 30
            anchors.centerIn: parent
            text: inputBar.text
            onTextChanged: {
                placeHolderText.visible = inputField.text.length === 0
            }
        }
        Text {
            id: placeHolderText
            // anchors.centerIn: inputField
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: inputField.left
            text: "Write a message..."
            color: "#75767a"
            visible: inputField.text.length === 0
            font.pixelSize: 16
        }

        Button {
            text: "Send"
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            width: 100
            height: parent.height
            font.pixelSize: 16
            background: Rectangle {
                            color: "#e1e1e1"
                            radius: 5
                        }
            onClicked: {
                if (inputField.text.length > 0) {
                    inputBar.text = inputField.text;
                    inputField.text = "";
                    inputBar.sendMessage();
                }
            }
        }
    }
    signal sendMessage()
    function clear() {
        text = "";
    }
}
