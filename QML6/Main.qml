import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 480
    height: 640
    visible: true
    title: qsTr("StackView")

    property real rWidth: width / 8
    property real rHeight: height / 8

    property int defMargin: 10

    StackView{
        id: stack_view
        anchors.fill: parent
        initialItem: red_page
    }
    My_Page{
        id: red_page
        redColor: "#FF0000"
        redBorderColor: "#AB0000"
        captionText: "Red Page"
        leftBtnText: "to green"
        rightBtnText: "to yellow"
        onButtonlClicked:{stack_view.pop(green_page)}
        onButtonrClicked:{stack_view.pop(yellow_page)}
    }
    My_Page{
        id: yellow_page
        yellowColor: "#FFD300"
        yellowBorderColor: "#AB8E00"
        visible: false
        captionText: "Yellow Page"
        leftBtnText: "to red"
        rightBtnText: "to green"
        onButtonlClicked:{stack_view.pop(red_page)}
        onButtonrClicked:{stack_view.pop(green_page)}
    }
    My_Page{
        id: green_page
        greenColor: "#00F000"
        greenBorderColor: "#00A100"
        visible: false
        captionText: "Green Page"
        leftBtnText: "to yellow"
        rightBtnText: "to red"
        onButtonlClicked:{stack_view.pop(yellow_page)}
        onButtonrClicked:{stack_view.pop(red_page)}
    }


}
