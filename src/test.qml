/* test.qml
 *
 * Copyright (C) 2020 Siddharudh P T <siddharudh@gmail.com>
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
import QtQuick.Window 2.15
import QtQuick.Timeline 1.0

import OzoneCG 1.0

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Ozone CG")

    Revealer {
        id: revealer
        x: 123
        y: 128
        width: 394
        height: 182

        revealConcealType: "Fade"
        revealState: "STAGE"

        Text {
            id: text1
            x: 59
            y: 44
            width: 276
            height: 94
            color: "#0f95d2"
            text: qsTr("OzoneCG")
            font.pixelSize: 60
            font.underline: false
            font.italic: true
            font.bold: true
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                duration: 10000
                loops: 1
                running: true
                to: 249
                from: 0
            }
        ]
        startFrame: 0
        endFrame: 249
        enabled: true

        KeyframeGroup {
            target: revealer
            property: "revealState"
            Keyframe {
                value: "IN"
                frame: 25
            }

            Keyframe {
                value: "OUT"
                frame: 75
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}D{i:3}
}
##^##*/
