import QtQuick
import Felgo

Item {

    id: item
    property alias rectColor: rect.color
    property alias rectWidth: rect.width
    property alias rectHeight: rect.height
    Rectangle{
        id: rect
        width: 200
        height: 200
    }

}
