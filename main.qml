import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.4

Window {
    visible: true
    width: 800
    height: 680
    title: qsTr("Hello World")
    SplitView {
        anchors.fill: parent
        orientation: Qt.Vertical

        Rectangle {
            id: rectangle
            width: 640
            height: 173
            color: "#aa0000"
        }

        Rectangle {
            id: rectangle1
            width: 640
            height: 217
            color: "#00ff7f"
        }
    }


}
