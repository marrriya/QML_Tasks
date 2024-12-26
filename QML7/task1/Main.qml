import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    id: window
    visible: true
    width: 400
    height: 600

    property real windowWidth: width
    property real windowHeight: height

    Column {
        anchors.centerIn: parent
        spacing: window.windowHeight * 0.03

        TextField {
            id: username
            width: window.windowWidth * 0.7
            height: window.windowHeight * 0.05
            placeholderText: "Username"
            font.pixelSize: window.windowHeight * 0.025
        }

        TextField {
            id: password
            width: window.windowWidth * 0.7
            height: window.windowHeight * 0.05
            placeholderText: "Password"
            echoMode: TextInput.Password
            font.pixelSize: window.windowHeight * 0.025
        }

        Row {
            spacing: window.windowWidth * 0.04

            Button {
                text: "Log In"
                width: window.windowWidth * 0.33
                height: window.windowHeight * 0.05
                font.pixelSize: window.windowHeight * 0.02
                onClicked: {
                    if (username.text !== "" && password.text !== "") {
                        username.text = ""
                        password.text = ""
                    }
                }
            }

            Button {
                text: "Clear"
                width: window.windowWidth * 0.33
                height: window.windowHeight * 0.05
                font.pixelSize: window.windowHeight * 0.02
                onClicked: {
                    username.text = ""
                    password.text = ""
                }
            }
        }
    }
}
