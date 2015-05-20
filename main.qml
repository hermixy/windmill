import QtQuick 2.4
import QtQuick.Window 2.2

Window {

    width: 512
    height: 320
    visible: true

    Image {
        id: root
        source: "images/background.png"
        width: 512
        height: 320

        MouseArea {
            id: mouseArea1
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

            Behavior on rotation {
                NumberAnimation {
                    duration: 250
                }
            }
        }
    }
}
