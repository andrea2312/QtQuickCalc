import QtQuick 2.0

Item {
    id: container

    property alias buttonText: button.text

    width: 116
    height: 78

    Rectangle {
        id: button

        anchors.fill: parent
        color: "lightblue"
        radius: 5.0


        property color defColor: "lightblue"
        property color pressedColor: "#46b1d3"
        property alias text: title.text

        Text {
            id: title
            anchors.centerIn: parent
            font.pointSize: 24
        }
    }

    MouseArea {
        anchors.fill: parent

        onEntered: button.color = button.pressedColor
        onExited: button.color = button.defColor
    }
}
