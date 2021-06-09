/* RevealerDemo.qml
 *
 * Copyright (C) 2021 Siddharudh P T <siddharudh@gmail.com>
 *
 * This file is part of OzoneCG Project.
 *
 * OzoneCG is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * OzoneCG is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with OzoneCG.  If not, see <https://www.gnu.org/licenses/>.
 */

import QtQuick 2.15
import QtQuick.Timeline 1.0

import OzoneCG 1.0
import QtQuick.Controls 2.15

Item {
    id: root
    visible: true
    width: 640
    height: 480

    property int revealDuration: slider.value
    property int concealDuration: slider.value

    Revealer {
        id: fade
        x: 286
        y: 13
        revealState: "STAGE"
        revealDuration: root.revealDuration
        concealDuration: root.concealDuration

        Text {
            id: text1
            x: 0
            y: 0
            text: qsTr("Fade")
            font.pixelSize: 32
            color: "#9090fc"
        }
    }

    Revealer {
        id: slideLeft
        x: 100
        y: 80
        width: 126
        height: 40
        revealConcealType: "SlideLeft"
        revealDuration: root.revealDuration
        concealDuration: root.concealDuration
        Text {
            id: text2
            x: 0
            text: qsTr("SlideLeft")
            font.pixelSize: 32
            color: "green"
        }
        revealState: "STAGE"
    }

    Revealer {
        id: slideRight
        x: 100
        y: 150
        width: 142
        height: 40
        Text {
            id: text3
            x: 0
            text: qsTr("SlideRight")
            font.pixelSize: 32
            color: "#765577"
        }
        revealConcealType: "SlideRight"
        revealState: "STAGE"
        revealDuration: root.revealDuration
        concealDuration: root.concealDuration
    }

    Revealer {
        id: slideUp
        x: 100
        y: 220
        width: 142
        height: 40
        Text {
            id: text4
            x: 0
            y: 2
            text: qsTr("Slide Up")
            font.pixelSize: 32
            color: "orange"
        }
        revealConcealType: "SlideUp"
        revealState: "STAGE"
        revealDuration: root.revealDuration
        concealDuration: root.concealDuration
    }

    Revealer {
        id: slideDown
        x: 100
        y: 290
        width: 171
        height: 40
        Text {
            id: text5
            x: 0
            y: 0
            width: 166
            height: 38
            text: qsTr("Slide Down")
            font.pixelSize: 32
            color: "purple"
        }
        revealConcealType: "SlideDown"
        revealState: "STAGE"
        revealDuration: root.revealDuration
        concealDuration: root.concealDuration
    }

    Revealer {
        id: wipeLeft
        x: 400
        y: 80
        Text {
            id: text6
            x: 0
            text: qsTr("Wipe Left")
            font.pixelSize: 32
            color: "red"
        }
        revealConcealType: "WipeLeft"
        revealState: "STAGE"
        revealDuration: root.revealDuration
        concealDuration: root.concealDuration
    }

    Revealer {
        id: wipeRight
        x: 400
        y: 150
        width: 167
        height: 40
        Text {
            id: text7
            x: 0
            y: -3
            text: qsTr("Wipe Right")
            font.pixelSize: 32
            color: "grey"
        }
        revealConcealType: "WipeRight"
        revealState: "STAGE"
        revealDuration: root.revealDuration
        concealDuration: root.concealDuration
    }

    Revealer {
        id: wipeUp
        x: 400
        y: 220
        width: 142
        height: 40
        Text {
            id: text8
            x: 0
            y: 2
            text: qsTr("Wipe Up")
            font.pixelSize: 32
            color: "burlywood"
        }
        revealConcealType: "WipeUp"
        revealState: "STAGE"
        revealDuration: root.revealDuration
        concealDuration: root.concealDuration
    }

    Revealer {
        id: wipeDown
        x: 400
        y: 290
        width: 171
        height: 40
        Text {
            id: text9
            x: 0
            y: 0
            width: 166
            height: 38
            text: qsTr("Wipe Down")
            font.pixelSize: 32
            color: "magenta"
        }
        revealConcealType: "WipeDown"
        revealState: "STAGE"
        revealDuration: root.revealDuration
        concealDuration: root.concealDuration
    }

    Revealer {
        id: wipeHCenter
        x: 400
        y: 360
        width: 200
        height: 40
        Text {
            id: text10
            x: 0
            y: 0
            width: 200
            height: 38
            text: qsTr("Wipe H Center")
            font.pixelSize: 32
            color: "darkseagreen"
        }
        revealConcealType: "WipeHCenter"
        revealState: "STAGE"
        revealDuration: root.revealDuration
        concealDuration: root.concealDuration
    }

    Revealer {
        id: wipeVCenter
        x: 400
        y: 430
        width: 200
        height: 40
        Text {
            id: text11
            x: 0
            y: 0
            width: 200
            height: 38
            text: qsTr("Wipe V Center")
            font.pixelSize: 32
            color: "maroon"
        }
        revealConcealType: "WipeVCenter"
        revealState: "STAGE"
        revealDuration: root.revealDuration
        concealDuration: root.concealDuration
    }

    Revealer {
        id: zoomIn
        x: 100
        y: 360
        width: 161
        height: 40
        Text {
            id: text12
            x: 0
            y: 1
            text: qsTr("Zoom In")
            font.pixelSize: 32
            color: "#bbe604"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        revealConcealType: "ZoomIn"
        revealState: "STAGE"
        revealDuration: root.revealDuration
        concealDuration: root.concealDuration
    }

    Revealer {
        id: zoomOut
        x: 8
        y: 395
        width: 314
        height: 95
        //visible: false
        Text {
            id: text13
            x: 94
            y: 37
            text: qsTr("Zoom Out")
            font.pixelSize: 32
            color: "#00a65a"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        revealConcealType: "ZoomOut"
        revealState: "STAGE"
        revealDuration: root.revealDuration
        concealDuration: root.concealDuration
        revealFactor: 2
    }


    Text {
        id: text14
        x: 139
        y: 6
        color: "#fee7e7"
        text: qsTr("Speed")
        font.pixelSize: 12
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                duration: revealDuration * 30
                pingPong: false
                loops: -1
                running: true
                to: 75
                from: 0
            }
        ]
        startFrame: 0
        endFrame: 75
        enabled: true

        KeyframeGroup {
            target: fade
            property: "revealState"
            Keyframe {
                value: "IN"
                frame: 13
            }

            Keyframe {
                value: "OUT"
                frame: 51
            }
        }

        KeyframeGroup {
            target: slideLeft
            property: "revealState"
            Keyframe {
                value: "IN"
                frame: 13
            }

            Keyframe {
                value: "OUT"
                frame: 51
            }
        }

        KeyframeGroup {
            target: slideRight
            property: "revealState"
            Keyframe {
                value: "IN"
                frame: 13
            }

            Keyframe {
                value: "OUT"
                frame: 51
            }
        }

        KeyframeGroup {
            target: slideUp
            property: "revealState"
            Keyframe {
                value: "IN"
                frame: 13
            }

            Keyframe {
                value: "OUT"
                frame: 51
            }
        }

        KeyframeGroup {
            target: slideDown
            property: "revealState"
            Keyframe {
                value: "IN"
                frame: 13
            }

            Keyframe {
                value: "OUT"
                frame: 51
            }
        }

        KeyframeGroup {
            target: wipeLeft
            property: "revealState"
            Keyframe {
                value: "IN"
                frame: 13
            }

            Keyframe {
                value: "OUT"
                frame: 51
            }
        }

        KeyframeGroup {
            target: wipeRight
            property: "revealState"
            Keyframe {
                value: "IN"
                frame: 13
            }

            Keyframe {
                value: "OUT"
                frame: 51
            }
        }

        KeyframeGroup {
            target: wipeUp
            property: "revealState"
            Keyframe {
                value: "IN"
                frame: 13
            }

            Keyframe {
                value: "OUT"
                frame: 51
            }
        }

        KeyframeGroup {
            target: wipeDown
            property: "revealState"
            Keyframe {
                value: "IN"
                frame: 13
            }

            Keyframe {
                value: "OUT"
                frame: 51
            }
        }

        KeyframeGroup {
            target: wipeHCenter
            property: "revealState"
            Keyframe {
                value: "IN"
                frame: 13
            }

            Keyframe {
                value: "OUT"
                frame: 51
            }
        }

        KeyframeGroup {
            target: wipeVCenter
            property: "revealState"
            Keyframe {
                value: "IN"
                frame: 13
            }

            Keyframe {
                value: "OUT"
                frame: 51
            }
        }

        KeyframeGroup {
            target: zoomIn
            property: "revealState"
            Keyframe {
                value: "IN"
                frame: 13
            }

            Keyframe {
                value: "OUT"
                frame: 51
            }
        }

        KeyframeGroup {
            target: zoomOut
            property: "revealState"
            Keyframe {
                value: "IN"
                frame: 13
            }

            Keyframe {
                value: "OUT"
                frame: 51
            }
        }

    }

    Slider {
        id: slider
        x: 100
        y: 23
        width: 114
        height: 18
        rotation: 180
        stepSize: 100
        to: 2500
        from: 100
        value: 250
    }

}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}D{i:28}
}
##^##*/
