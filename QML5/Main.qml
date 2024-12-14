import QtQuick

Window {
    width: 480
    height: 640
    visible: true
    title: qsTr("Hello World")

    property real rWidth: width / 8
    property real rHeight: height / 8

    Rectangle{
        id: main
        width: rWidth * 4
        height: rHeight * 6
        color: "#BDBDBD"
        border.color: "#4A4A4A"
        border.width: 3
        anchors.centerIn: parent
        states:[
            State {
                name: "stop"
                PropertyChanges {
                    target: redr
                    color: "#FF0000"
                    border.color: "#AB0000"
                }
                PropertyChanges {
                    target: yellowr
                    color: "gray"
                    border.color: "black"
                }
                PropertyChanges {
                    target: greenr
                    color: "gray"
                    border.color: "black"
                }
            },
            State {
                name: "caution"
                PropertyChanges {
                    target: redr
                    color: "gray"
                    border.color: "black"

                }
                PropertyChanges {
                    target: yellowr
                    color: "#FFD300"
                    border.color: "#AB8E00"

                }
                PropertyChanges {
                    target: greenr
                    color: "gray"
                    border.color: "black"
                }
            },
            State {
                name: "go"
                PropertyChanges {
                    target: redr
                    color: "gray"
                    border.color: "black"
                }
                PropertyChanges {
                    target: yellowr
                    color: "gray"
                    border.color: "black"
                }
                PropertyChanges {
                    target: greenr
                    color: "#00F000"
                    border.color: "#00A100"
                }
            }
        ]
        state: "stop"

        transitions: [
            Transition {
                from: "stop"
                to: "caution"

                ColorAnimation {
                    target: yellowr
                    from: "gray"
                    to: "#FFD300"
                    duration: 500
                }

                ColorAnimation {
                    target: redr
                    from: "#FF0000"
                    to: "gray"
                    duration: 500
                }
            },
            Transition {
                from: "caution"
                to: "go"
                ColorAnimation {
                    target: greenr
                    from: "gray"
                    to: "#00A100"
                    duration: 500
                }

                ColorAnimation {
                    target: yellowr
                    from: "#FFD300"
                    to: "gray"
                    duration: 500
                }
            },
            Transition {
                from: "go"
                to: "stop"

                ColorAnimation {
                    target: redr
                    from: "gray"
                    to: "#FF0000"
                    duration: 500
                }

                ColorAnimation {
                    target: greenr
                    from: "#00A100"
                    to: "gray"
                    duration: 500
                }
            }
        ]
        MouseArea{
            anchors.fill: parent

            onClicked:
            {
                if (parent.state === "stop"){
                    parent.state = "caution";
                }else if (parent.state === "caution"){
                    parent.state = "go";
                }else{
                    parent.state = "stop";
                }
            }
        }

    }

    Rectangle{
        id: redr
        width: rWidth * 2
        height: rHeight *1.5
        color: "#FF0000"
        border.color: "#AB0000"
        border.width: 3
        anchors.bottom: yellowr.top
        anchors.horizontalCenter: main.horizontalCenter
        anchors.margins: 20

    }
    Rectangle{
        id: yellowr
        width: rWidth * 2
        height: rHeight *1.5
        color: "#FFD300"
        border.color: "#AB8E00"
        border.width: 3
        anchors.centerIn: main
        anchors.margins: 20


    }
    Rectangle{
        id: greenr
        width: rWidth * 2
        height: rHeight *1.5
        color: "#00F000"
        border.color: "#00A100"
        border.width: 3
        anchors.margins: 20
        anchors.horizontalCenter: main.horizontalCenter
        anchors.top: yellowr.bottom


    }
}
