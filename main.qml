import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import "calc.js" as Calculator

Window {
    id: window
    width: 480
    height: 490
    visible: true
    title: qsTr("Quick Calc Example")

    maximumHeight: height
    maximumWidth: width
    minimumHeight: height
    minimumWidth: width

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
            width: 466
            height: 102
            text: qsTr("0")
            font.pixelSize: 50
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignBottom
            Layout.rightMargin: 12
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            padding: 0
            rightPadding: 0
            leftPadding: 0
            Layout.leftMargin: 4
            Layout.fillHeight: false
            Layout.margins: 4
            clip: false
            baselineOffset: 50
            overwriteMode: false
            activeFocusOnPress: false
            cursorVisible: false
            readOnly: true
            scale: 1
            Layout.fillWidth: true
        }

        GridLayout {
            id: grid
            x: 6
            y: 118
            width: 468
            height: 620

            property bool newDigit: true

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

            Button {
                buttonText: "C";
                onClicked: {
                    textEdit.text = "0";
                    grid.newDigit = true
                    Calculator.clearState();
                }
            }

            Button {
                buttonText: "Del";
                onClicked: {
                    grid.newDigit = true
                    if (textEdit.text.length > 1)
                    {
                        let newLen = textEdit.text.length - 1;
                        textEdit.text = textEdit.text.substring(0, newLen);
                    }
                    else
                    {
                        textEdit.text = "0";
                    }
                }
            }

            Button {
                buttonText: "/";
                onClicked: {
                    //textEdit.text = buttonText;
                    grid.newDigit = true;
                    Calculator.pushValue(textEdit.text);
                    Calculator.setOperation(buttonText)
                }
            }

            Button {
                buttonText: "7";
                onClicked: {
                    if (grid.newDigit)
                    {
                        grid.newDigit = false;
                        textEdit.text = buttonText;
                    }
                    else
                        textEdit.text = textEdit.text + buttonText;
                }
            }
            Button {
                buttonText: "8";
                onClicked: {
                    if (grid.newDigit)
                    {
                        grid.newDigit = false;
                        textEdit.text = buttonText;
                    }
                    else
                        textEdit.text = textEdit.text + buttonText;
                }
            }
            Button {
                buttonText: "9";
                onClicked: {
                    if (grid.newDigit)
                    {
                        grid.newDigit = false;
                        textEdit.text = buttonText;
                    }
                    else
                        textEdit.text = textEdit.text + buttonText;
                }
            }

            Button {
                buttonText: "X";
                onClicked: {
                    //textEdit.text = buttonText;
                    grid.newDigit = true;
                    Calculator.pushValue(textEdit.text);
                    Calculator.setOperation(buttonText)
                }
            }

            Button {
                buttonText: "4";
                onClicked: {
                    if (grid.newDigit)
                    {
                        grid.newDigit = false;
                        textEdit.text = buttonText;
                    }
                    else
                        textEdit.text = textEdit.text + buttonText;
                }
            }
            Button {
                buttonText: "5";
                onClicked: {
                    if (grid.newDigit)
                    {
                        grid.newDigit = false;
                        textEdit.text = buttonText;
                    }
                    else
                        textEdit.text = textEdit.text + buttonText;
                }
            }
            Button {
                buttonText: "6";
                onClicked: {
                    if (grid.newDigit)
                    {
                        grid.newDigit = false;
                        textEdit.text = buttonText;
                    }
                    else
                        textEdit.text = textEdit.text + buttonText;
                }
            }

            Button {
                buttonText: "-";
                onClicked: {
                    //textEdit.text = buttonText;
                    grid.newDigit = true;
                    Calculator.pushValue(textEdit.text);
                    Calculator.setOperation(buttonText)
                }
            }

            Button {
                buttonText: "1";
                onClicked: {
                    if (grid.newDigit)
                    {
                        grid.newDigit = false;
                        textEdit.text = buttonText;
                    }
                    else
                        textEdit.text = textEdit.text + buttonText;
                }
            }
            Button {
                buttonText: "2";
                onClicked: {
                    if (grid.newDigit)
                    {
                        grid.newDigit = false;
                        textEdit.text = buttonText;
                    }
                    else
                        textEdit.text = textEdit.text + buttonText;
                }
            }
            Button {
                buttonText: "3";
                onClicked: {
                    if (grid.newDigit)
                    {
                        grid.newDigit = false;
                        textEdit.text = buttonText;
                    }
                    else
                        textEdit.text = textEdit.text + buttonText;
                }
            }

            Button {
                buttonText: "+";
                onClicked: {
                    //textEdit.text = buttonText;
                    grid.newDigit = true;
                    Calculator.pushValue(textEdit.text);
                    Calculator.setOperation(buttonText)
                }
            }

            Button {
                buttonText: "+/-";
                onClicked: {
                    textEdit.text = Calculator.negValue(textEdit.text);
                }
            }

            Button {
                buttonText: "0";
                onClicked: {
                    if (grid.newDigit)
                    {
                        grid.newDigit = false;
                        textEdit.text = buttonText;
                    }
                    else
                        textEdit.text = textEdit.text + buttonText;
                }
            }

            Button {
                buttonText: ".";
                onClicked: textEdit.text = textEdit.text + buttonText
            }

            Button {
                buttonText: "=";
                onClicked: {
                    Calculator.pushValue(textEdit.text);
                    textEdit.text = Calculator.calc()
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}
}
##^##*/
