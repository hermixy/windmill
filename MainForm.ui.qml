import QtQuick 2.4

Image {
    id: root
    source: "images/background.png"
    width: 512
    height: 320

    MouseArea {
        anchors.fill: parent
        onClicked: wheel.rotation += 90
    }

    Image {
        id: pole
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        source: "images/pole.png"
    }
    Image {
        id: wheel
        anchors.centerIn: parent
        source: "images/pinwheel.png"
    }
}
