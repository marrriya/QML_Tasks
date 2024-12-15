import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

Page{
    id:pagecolor

    property alias redColor: redr.color
    property alias yellowColor: yellowr.color
    property alias greenColor: greenr.color
    property alias redBorderColor: redr.border.color
    property alias yellowBorderColor: yellowr.border.color
    property alias greenBorderColor: greenr.border.color
    property alias captionText: headertxt.text

    property alias leftBtnText: leftbtntxt.text
    property alias rightBtnText: rightbtntxt.text
    signal buttonlClicked();
    signal buttonrClicked();

    Button{
        id: leftbtn
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.margins: defMargin
        Text{
            id:leftbtntxt
            text: qsTr("next1")
            font.pixelSize: 14
            anchors.centerIn: parent
        }
        onClicked:{
            pagecolor.buttonlClicked()
        }
    }
    Button{
        id: rightbtn
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: defMargin
        Text{
           id:rightbtntxt
            text: qsTr("next2")
            font.pixelSize: 14
            anchors.centerIn: parent
        }
        onClicked:{
            pagecolor.buttonrClicked()
        }
    }
    Button{
        id: backbtn
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.margins: defMargin
        Text{
            text: qsTr("<-")
            font.pixelSize: 24
            visible:stack_view.depth>1
            anchors.centerIn: parent
        }
         onClicked: {popPage()}
    }

    background:
        Rectangle{
            id: header
            height: 50
            color: "#BDBDBD"
            anchors.left: parent.left
            anchors.right: parent.right
            Text{
                id: headertxt
                text: qsTr("Some content")
                font.pointSize: 10
                anchors.centerIn: parent
            }
        }


        Rectangle{
               id: main
               width: rWidth * 4
               height: rHeight * 6
               color: "#BDBDBD"
               border.color: "#4A4A4A"
               border.width: 3
               anchors.centerIn: parent


               Rectangle{
                       id: redr
                       width: rWidth * 2
                       height: rHeight *1.5
                       color: "gray"
                       border.color: "#4A4A4A"
                       border.width: 3
                       anchors.bottom: yellowr.top
                       anchors.horizontalCenter: main.horizontalCenter
                       anchors.margins: 20

                   }
                   Rectangle{
                       id: yellowr
                       width: rWidth * 2
                       height: rHeight *1.5
                       color: "gray"
                       border.color: "#4A4A4A"
                       border.width: 3
                       anchors.centerIn: main
                       anchors.margins: 20


                   }
                   Rectangle{
                       id: greenr
                       width: rWidth * 2
                       height: rHeight *1.5
                       color: "gray"
                       border.color: "#4A4A4A"
                       border.width: 3
                       anchors.margins: 20
                       anchors.horizontalCenter: main.horizontalCenter
                       anchors.top: yellowr.bottom
                    }


}
}
