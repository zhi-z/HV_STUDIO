import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.4


ApplicationWindow {
    visible: true
    width: 800
    height: 680
    title: qsTr("HV STUDIO")

    menuBar: MenuBar {
        Menu {
            title: "File"
            MenuItem { text: "Open..." }
            MenuItem { text: "Close" }
        }

        Menu {
            title: "Edit"
            MenuItem { text: "Cut" }
            MenuItem { text: "Copy" }
            MenuItem { text: "Paste" }
        }
    }
     toolBar: ToolBar {
          RowLayout {
              anchors.fill: parent
              ToolButton {
                  iconSource: "qrc:/images/file/new.png"
              }
              ToolButton {
                  iconSource: "qrc:/images/file/open.png"
              }
              ToolButton {
                  iconSource: "qrc:/images/file/save.png"
              }
              Item { Layout.fillWidth: true }

          }
      }

    ColumnLayout {
        anchors.fill: parent
        spacing: 0
        // 菜单栏
//        Item {
//            id: menu
//            Layout.fillWidth:true
//            height: 30
//            Rectangle {
//                color: "red";
//                anchors.fill: parent

//            }
//        }

        // 工具栏
//        Item {
//            id: toolbars
//            Layout.fillWidth:true
//            height: 60
//            ToolBar {
//                  RowLayout {
//                      anchors.fill: parent
//                      ToolButton {
//                          iconSource: "qrc:/images/file/new.png"
//                      }
////                      ToolButton {
////                          iconSource: "open.png"
////                      }
////                      ToolButton {
////                          iconSource: "save-as.png"
////                      }
//                      Item { Layout.fillWidth: true }

//                  }
//              }
//        }

        // 编辑区域与其他
        RowLayout{
            id: main_layer
            spacing: 0
            Layout.fillWidth:true
            Layout.fillHeight: true

            Item {  // 左导航
                id: leftsidebar
                Layout.fillHeight:true
                width: 60
                Rectangle {
                    color: "#232323";
                    anchors.fill: parent
                    Layout.fillHeight: true
                }
            }
            ColumnLayout {  // 右边区域（工作区域、状态栏等）
                id: main_layer_right
                spacing: 0
                Layout.fillWidth:true
                Layout.fillHeight: true

                Item {  // 工作区域
                    id: main_layer_right_1
                    Layout.fillWidth:true
                    Layout.fillHeight: true
                    Rectangle {
//                        color: "#F2F214";
                        anchors.fill: parent
                    }
                }
                Item {  // 状态栏
                    id: statusbars
                    height: 30
                    Layout.fillWidth:true

                    Rectangle {
                        color: "#333333";
                        anchors.fill: parent
                    }
                }
        }
        }
    }


}
