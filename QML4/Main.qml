import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 600

    color: "#E1D7B7"
    Rectangle{
        id: background
        width: parent.width
        height: parent.height
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#d2d58d" }
            GradientStop { position: 1.0; color: "#9bbb8c" }
        }
    }
    Message {
        id: message
        width: parent.width
        height: parent.height - 50
    }

    Input {
        id: input
        width: parent.width
        height: 50
        anchors.bottom: parent.bottom

        onSendMessage: {
            var currentTime = new Date();
            var hours = currentTime.getHours();
            var minutes = currentTime.getMinutes();
            var formattedTime = (hours < 10 ? '0' : '') + hours + ':' + (minutes < 10 ? '0' : '') + minutes;

            message.addMessage("User1", input.text, formattedTime);
            input.clear();
        }
    }
}
