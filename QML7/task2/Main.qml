import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 400
    height: 500
    color: "#F5F5F5"

    property string password: ""

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 10

        Text {
            text: "Enter your password:"
            font.pixelSize: 16
            Layout.alignment: Qt.AlignCenter
        }

        Rectangle {
            id: passwordField
            color: "#F5F5F5"
            width: 230
            height: 50
            Layout.alignment: Qt.AlignCenter

            Row {
                spacing: 6
                anchors.centerIn: parent

                Repeater {
                    model: 6
                    Label {
                        width: 20
                        height: 20
                        font.pixelSize: 36
                        text: "*"
                        color: index < password.length ? "black" : "lightgrey"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }
        }

        Column {
            spacing: 10
            width: 250
            Layout.alignment: Qt.AlignCenter
            Row {
                spacing: 10
                Button {
                    text: "1"
                    width: 70
                    height: 50
                    onClicked: {
                        if (password.length < 6) {
                            password += "1"
                        }
                    }
                }
                Button {
                    text: "2"
                    width: 70
                    height: 50
                    onClicked: {
                        if (password.length < 6) {
                            password += "2"
                        }
                    }
                }
                Button {
                    text: "3"
                    width: 70
                    height: 50
                    onClicked: {
                        if (password.length < 6) {
                            password += "3"
                        }
                    }
                }
            }
            Row {
                spacing: 10
                Button {
                    text: "4"
                    width: 70
                    height: 50
                    onClicked: {
                        if (password.length < 6) {
                            password += "4"
                        }
                    }
                }
                Button {
                    text: "5"
                    width: 70
                    height: 50
                    onClicked: {
                        if (password.length < 6) {
                            password += "5"
                        }
                    }
                }
                Button {
                    text: "6"
                    width: 70
                    height: 50
                    onClicked: {
                        if (password.length < 6) {
                            password += "6"
                        }
                    }
                }
            }
            Row {
                spacing: 10
                Button {
                    text: "7"
                    width: 70
                    height: 50
                    onClicked: {
                        if (password.length < 6) {
                            password += "7"
                        }
                    }
                }
                Button {
                    text: "8"
                    width: 70
                    height: 50
                    onClicked: {
                        if (password.length < 6) {
                            password += "8"
                        }
                    }
                }
                Button {
                    text: "9"
                    width: 70
                    height: 50
                    onClicked: {
                        if (password.length < 6) {
                            password += "9"
                        }
                    }
                }
            }
            Row {
                spacing: 10
                Button {
                    width: 70
                    height: 50
                    enabled: false
                }
                Button {
                    text: "0"
                    width: 70
                    height: 50
                    onClicked: {
                        if (password.length < 6) {
                            password += "0"
                        }
                    }
                }
                Button {
                    text: "Clear"
                    width: 70
                    height: 50
                    onClicked: {
                        password = ""
                    }
                }
            }
        }
        Row{
            leftPadding: 0
        Button {
            text: "Log In"
            width: 70
            height: 50
            Layout.alignment: Qt.AlignCenter
            onClicked: {
                if (password.length === 6) {
                    console.log("Password: " + password)
                    password = ""
                }
            }
        }
        }
    }
}
