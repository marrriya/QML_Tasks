import QtQuick
// import QtQuick Window 2.15
import QtQuick.Layouts 1.3

Window {
    width: 320
    height: 568
    visible: true
    title: qsTr("Qml2_layouts")

    property real rHeight: height / 10
    ColumnLayout{
        anchors.fill: parent
        spacing: 10

        Header{
            id: header
            width: width
            height: height * 0.2
            Layout.alignment: Qt.AlighTop
        }

        Center{
            id: center
            Layout.margins: 10
            width: 320
            Layout.alignment: Qt.AlignCenter
        }

        Footer{
            id: footer
            width: width
            height: height * 0.2
            Layout.alignment: Qt.AlighBottom
        }


    }

}
