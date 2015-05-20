import QtQuick 2.4
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0

Window {

    width: 512
    height: 320
    visible: true

    Image {
        id: root
        source: "images/background.png"
        width: 512
        height: 320

        property int blurRadius: 0

        MouseArea {
            anchors.fill: parent
            onPressed: {
                wheel.rotation += 90
                root.blurRadius = 16
            }
            onReleased: {
                root.blurRadius = 0
            }
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
            layer.effect: FastBlur {
                id: blur
                radius: root.blurRadius
                Behavior on radius {
                    NumberAnimation {
                        duration: 250
                    }
                }
            }
            layer.enabled: true
        }
    }
}
