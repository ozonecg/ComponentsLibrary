/* Revealer.qml
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

Item {
    id: self

    property string revealState: " "

    property string revealConcealType: "Fade"
    property string revealType: revealConcealType
    property string concealType: revealConcealType
    property int revealDuration: 250
    property int concealDuration: 250
    property real revealFactor: 10

    property var child: children.length ? children[0] : null

    implicitWidth: child ? child.x + child.width : 200
    implicitHeight: child ? child.y + child.height : 200

    state: (revealState == "OUT" ? concealType : revealType) + "_" + revealState

    clip: true

    function stage()
    {
        revealState = "STAGE"
    }

    function inn()
    {
        revealState = "IN"
    }

    function out()
    {
        revealState = "OUT"
    }

    states: [
        State {
            name: "Fade_STAGE"
            PropertyChanges {
                target: self
                opacity: 0
            }
        },
        State {
            name: "Fade_IN"
            PropertyChanges {
                target: self
                opacity: 1.0
            }
        },
        State {
            name: "Fade_OUT"
            extend: "Fade_STAGE"
        },

        State {
            name: "SlideLeft_STAGE"
            PropertyChanges {
                target: child
                x: self.width
                explicit: true
            }
        },
        State {
            name: "SlideLeft_IN"
            PropertyChanges {
                target: child
                explicit: true
            }
        },
        State {
            name: "SlideLeft_OUT"
            extend: "SlideLeft_STAGE"
        },

        State {
            name: "SlideRight_STAGE"
            PropertyChanges {
                target: child
                x: -self.width
                explicit: true
            }
        },
        State {
            name: "SlideRight_IN"
            PropertyChanges {
                target: child
                explicit: true
            }
        },
        State {
            name: "SlideRight_OUT"
            extend: "SlideRight_STAGE"
        },

        State {
            name: "SlideUp_STAGE"
            PropertyChanges {
                target: child
                y: self.height
                explicit: true
            }
        },
        State {
            name: "SlideUp_IN"
            PropertyChanges {
                target: child
            }
        },
        State {
            name: "SlideUp_OUT"
            extend: "SlideUp_STAGE"
        },

        State {
            name: "SlideDown_STAGE"
            PropertyChanges {
                target: child
                y: -self.height
                explicit: true
            }
        },
        State {
            name: "SlideDown_IN"
            PropertyChanges {
                target: child
                explicit: true
            }
        },
        State {
            name: "SlideDown_OUT"
            extend: "SlideDown_STAGE"
        },

        State {
            name: "WipeLeft_STAGE"
            PropertyChanges {
                target: self
                x: self.x + self.width
                explicit: true
            }
            PropertyChanges {
                target: child
                x: child.x - self.width
                explicit: true
            }
        },
        State {
            name: "WipeLeft_IN"
            PropertyChanges {
                target: self
            }
            PropertyChanges {
                target: child
            }
        },
        State {
            name: "WipeLeft_OUT"
            extend: "WipeLeft_STAGE"
        },

        State {
            name: "WipeRight_STAGE"
            PropertyChanges {
                target: self
                x: self.x - self.width
                explicit: true
            }
            PropertyChanges {
                target: child
                x: child.x + self.width
                explicit: true
            }
        },
        State {
            name: "WipeRight_IN"
            PropertyChanges {
                target: self
            }
            PropertyChanges {
                target: child
            }
        },
        State {
            name: "WipeRight_OUT"
            extend: "WipeRight_STAGE"
        },

        State {
            name: "WipeUp_STAGE"
            PropertyChanges {
                target: self
                y: self.y + self.height
                explicit: true
            }
            PropertyChanges {
                target: child
                y: child.y - self.height
                explicit: true
            }
        },
        State {
            name: "WipeUp_IN"
            PropertyChanges {
                target: self
            }
            PropertyChanges {
                target: child
            }
        },
        State {
            name: "WipeUp_OUT"
            extend: "WipeUp_STAGE"
        },

        State {
            name: "WipeDown_STAGE"
            PropertyChanges {
                target: self
                y: self.y - self.height
                explicit: true
            }
            PropertyChanges {
                target: child
                y: child.y + self.height
                explicit: true
            }
        },
        State {
            name: "WipeDown_IN"
            PropertyChanges {
                target: self
            }
            PropertyChanges {
                target: child
            }
        },
        State {
            name: "WipeDown_OUT"
            extend: "WipeDown_STAGE"
        },

        State {
            name: "WipeHCenter_STAGE"
            PropertyChanges {
                target: self
                x: self.x + self.width/2
                width: 0
                explicit: true
            }
            PropertyChanges {
                target: child
                x: child.x - self.width/2
                explicit: true
            }
        },
        State {
            name: "WipeHCenter_IN"
            PropertyChanges {
                target: self
            }
            PropertyChanges {
                target: child
            }
        },
        State {
            name: "WipeHCenter_OUT"
            extend: "WipeHCenter_STAGE"
        },

        State {
            name: "WipeVCenter_STAGE"
            PropertyChanges {
                target: self
                y: self.y + self.height/2
                height: 0
                explicit: true
            }
            PropertyChanges {
                target: child
                y: child.y - self.height/2
                explicit: true
            }
        },
        State {
            name: "WipeVCenter_IN"
            PropertyChanges {
                target: self
            }
            PropertyChanges {
                target: child
            }
        },
        State {
            name: "WipeVCenter_OUT"
            extend: "WipeVCenter_STAGE"
        },

        State {
            name: "ZoomIn_STAGE"
            PropertyChanges {
                target: child
                scale: 0.0
                explicit: true
            }
        },
        State {
            name: "ZoomIn_IN"
            PropertyChanges {
                target: child
            }
        },
        State {
            name: "ZoomIn_OUT"
            extend: "ZoomIn_STAGE"
        },

        State {
            name: "ZoomOut_STAGE"
            PropertyChanges {
                target: child
                scale: revealFactor
                visible: false
                explicit: true
            }
        },
        State {
            name: "ZoomOut_IN"
            PropertyChanges {
                target: child
                visible: true
            }
        },
        State {
            name: "ZoomOut_OUT"
            extend: "ZoomOut_STAGE"
        }
    ]

    transitions: [
        Transition {
            from: "*"
            to: "Fade_IN"
            NumberAnimation {
                target: self
                property: "opacity"
                duration: revealDuration
            }
        },
        Transition {
            from: "*"
            to: "Fade_OUT"
            NumberAnimation {
                target: self
                property: "opacity"
                duration: concealDuration
            }
        },

        Transition {
            from: "*"
            to: "SlideLeft_IN"
            NumberAnimation {
                target: child
                properties: "x"
                duration: revealDuration
            }
        },
        Transition {
            from: "*"
            to: "SlideLeft_OUT"
            NumberAnimation {
                target: child
                properties: "x"
                duration: concealDuration
            }
        },

        Transition {
            from: "*"
            to: "SlideRight_IN"
            NumberAnimation {
                target: child
                properties: "x"
                duration: revealDuration
            }
        },
        Transition {
            from: "*"
            to: "SlideRight_OUT"
            NumberAnimation {
                target: child
                properties: "x"
                duration: concealDuration
            }
        },

        Transition {
            from: "*"
            to: "SlideUp_IN"
            NumberAnimation {
                target: child
                properties: "y"
                duration: revealDuration
            }
        },
        Transition {
            from: "*"
            to: "SlideUp_OUT"
            NumberAnimation {
                target: child
                properties: "y"
                duration: concealDuration
            }
        },

        Transition {
            from: "*"
            to: "SlideDown_IN"
            NumberAnimation {
                target: child
                properties: "y"
                duration: revealDuration
            }
        },
        Transition {
            from: "*"
            to: "SlideDown_OUT"
            NumberAnimation {
                target: child
                properties: "y"
                duration: concealDuration
            }
        },

        Transition {
            from: "*"
            to: "WipeLeft_IN"
            NumberAnimation {
                targets: [self, child]
                properties: "x"
                duration: revealDuration
            }
        },
        Transition {
            from: "*"
            to: "WipeLeft_OUT"
            NumberAnimation {
                target: [self, child]
                properties: "x"
                duration: concealDuration
            }
        },

        Transition {
            from: "*"
            to: "WipeRight_IN"
            NumberAnimation {
                targets: [self, child]
                properties: "x"
                duration: revealDuration
            }
        },
        Transition {
            from: "*"
            to: "WipeRight_OUT"
            NumberAnimation {
                target: [self, child]
                properties: "x"
                duration: concealDuration
            }
        },

        Transition {
            from: "*"
            to: "WipeUp_IN"
            NumberAnimation {
                targets: [self, child]
                properties: "y"
                duration: revealDuration
            }
        },
        Transition {
            from: "*"
            to: "WipeUp_OUT"
            NumberAnimation {
                target: [self, child]
                properties: "y"
                duration: concealDuration
            }
        },

        Transition {
            from: "*"
            to: "WipeDown_IN"
            NumberAnimation {
                targets: [self, child]
                properties: "y"
                duration: revealDuration
            }
        },
        Transition {
            from: "*"
            to: "WipeDown_OUT"
            NumberAnimation {
                target: [self, child]
                properties: "y"
                duration: concealDuration
            }
        },

        Transition {
            from: "*"
            to: "WipeHCenter_IN"
            NumberAnimation {
                targets: [self, child]
                properties: "x,width"
                duration: revealDuration
            }
        },
        Transition {
            from: "*"
            to: "WipeHCenter_OUT"
            NumberAnimation {
                targets: [self, child]
                properties: "x,width"
                duration: concealDuration
            }
        },

        Transition {
            from: "*"
            to: "WipeVCenter_IN"
            NumberAnimation {
                targets: [self, child]
                properties: "y,height"
                duration: revealDuration
            }
        },
        Transition {
            from: "*"
            to: "WipeVCenter_OUT"
            NumberAnimation {
                targets: [self, child]
                properties: "y,height"
                duration: concealDuration
            }
        },

        Transition {
            from: "*"
            to: "ZoomIn_IN"
            NumberAnimation {
                target: child
                properties: "scale"
                duration: revealDuration
            }
        },
        Transition {
            from: "*"
            to: "ZoomIn_OUT"
            NumberAnimation {
                target: child
                properties: "scale"
                duration: concealDuration
            }
        },

        Transition {
            from: "*"
            to: "ZoomOut_IN"
            NumberAnimation {
                target: child
                properties: "scale"
                duration: revealDuration
            }
        },
        Transition {
            from: "*"
            to: "ZoomOut_OUT"
            SequentialAnimation {
                NumberAnimation {
                    target: child
                    properties: "scale"
                    duration: concealDuration
                }
                PropertyAnimation {
                    target: child
                    properties: "visible"
                    duration: 1
                }
            }
        }
    ]



}


