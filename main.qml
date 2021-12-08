import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12

Window {
    id: window
    width: 480
    height: 490
    visible: true
    title: qsTr("Quick Calc Example")

    ColumnLayout {
        id: colLayout
        visible: true
        anchors.fill: parent
        anchors.rightMargin: 2
        anchors.leftMargin: 2
        anchors.bottomMargin: 2
        anchors.topMargin: 2

        TextEdit {
            id: textEdit
            x: 6
            y: 10
            width: 468
            height: 102
            text: qsTr("0")
            font.pixelSize: 50
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignBottom
            Layout.fillHeight: false
            Layout.margins: 4
            clip: false
            baselineOffset: 50
            overwriteMode: false
            activeFocusOnPress: false
            cursorVisible: false
            readOnly: true
            scale: 1
            Layout.alignment: Qt.AlignTop
            Layout.fillWidth: true
        }

        GridLayout {
            id: grid
            x: 6
            y: 118
            width: 468
            height: 620

            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom

            Layout.rowSpan: 1
            Layout.columnSpan: 1
            Layout.fillHeight: true
            Layout.fillWidth: true

            rowSpacing: 2
            columnSpacing: 2
            Layout.margins: 6

            rows: 6
            columns: 4

            anchors.rightMargin: 6
            anchors.bottomMargin: 16

            Rectangle {
                color: "lightblue"; radius: 5.0
                enabled: false
                width: 116
                height: 78
            }

            Rectangle {
                color: "lightblue"; radius: 5.0
                enabled: false
                width: 116
                height: 78
            }

            Button {
                buttonText: "C"
            }

            Button {
                buttonText: "Del"
            }

            Rectangle {
                color: "lightblue"; radius: 5.0
                width: 116
                height: 78

                Text {
                    anchors.centerIn: parent
                    font.pointSize: 24
                    text: "7"
                }
            }

            Rectangle {
                color: "lightblue"; radius: 5.0
                width: 116
                height: 78

                Text {
                    anchors.centerIn: parent
                    font.pointSize: 24
                    text: "8"
                }
            }

            Rectangle {
                color: "lightblue"; radius: 5.0
                width: 116
                height: 78

                Text {
                    anchors.centerIn: parent
                    font.pointSize: 24
                    text: "9"
                }
            }

            Rectangle {
                color: "lightblue"; radius: 5.0
                width: 116
                height: 78

                Text {
                    anchors.centerIn: parent
                    font.pointSize: 24
                    text: "X"
                }
            }

            Rectangle {
                color: "lightblue"; radius: 5.0
                width: 116
                height: 78

                Text {
                    anchors.centerIn: parent
                    font.pointSize: 24
                    text: "4"
                }
            }

            Rectangle {
                color: "lightblue"; radius: 5.0
                width: 116
                height: 78

                Text {
                    anchors.centerIn: parent
                    font.pointSize: 24
                    text: "5"
                }
            }

            Rectangle {
                color: "lightblue"; radius: 5.0
                width: 116
                height: 78

                Text {
                    anchors.centerIn: parent
                    font.pointSize: 24
                    text: "6"
                }
            }

            Rectangle {
                color: "lightblue"; radius: 5.0
                width: 116
                height: 78

                Text {
                    anchors.centerIn: parent
                    font.pointSize: 24
                    text: "-"
                }
            }

            Rectangle {
                color: "lightblue"; radius: 5.0
                width: 116
                height: 78

                Text {
                    anchors.centerIn: parent
                    font.pointSize: 24
                    text: "1"
                }
            }

            Rectangle {
                color: "lightblue"; radius: 5.0
                width: 116
                height: 78

                Text {
                    anchors.centerIn: parent
                    font.pointSize: 24
                    text: "2"
                }
            }

            Rectangle {
                color: "lightblue"; radius: 5.0
                width: 116
                height: 78

                Text {
                    anchors.centerIn: parent
                    font.pointSize: 24
                    text: "3"
                }
            }

            Rectangle {
                color: "lightblue"; radius: 5.0
                width: 116
                height: 78

                Text {
                    anchors.centerIn: parent
                    font.pointSize: 24
                    text: "+"
                }
            }

            Rectangle {
                color: "lightblue"; radius: 5.0
                width: 116
                height: 78

                Text {
                    anchors.centerIn: parent
                    font.pointSize: 24
                    text: "+/-"
                }
            }

            Rectangle {

                id: button_0
                color: "lightblue"; radius: 5.0
                width: 116
                height: 78

                Text {
                    anchors.centerIn: parent
                    font.pointSize: 24
                    text: "0"
                }

                TapHandler {
                    onTapped: button_0.width += 10
                }
            }

            Rectangle {
                color: "lightblue"; radius: 5.0
                width: 116
                height: 78

                Text {
                    anchors.centerIn: parent
                    font.pointSize: 24
                    text: "."
                }
            }

            Rectangle {
                color: "lightblue"; radius: 5.0
                width: 116
                height: 78

                Text {
                    anchors.centerIn: parent
                    font.pointSize: 24
                    text: "="
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}D{i:1}
}
##^##*/
