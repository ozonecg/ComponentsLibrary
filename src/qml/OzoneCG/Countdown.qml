import QtQuick 2.15

Item {
    id: root
    signal started()
    signal finished()
    property alias font: txt.font
    property alias color: txt.color
    property alias bgColor: bg.color
    property string duration: '00:00:00'
    property alias running: timer.running
    property bool autoHide: true

    implicitHeight: txt.implicitHeight
    implicitWidth: txt.implicitWidth


    QtObject {
        id: impl
        property int countdown: hmsToSeconds(root.duration)

        function hmsToSeconds(str) {
            var p = str.split(':'), s = 0, m = 1;
            if (p.length > 3) {
                return s;
            }
            while (p.length > 0) {
                s += m * parseInt(p.pop());
                m *= 60;
            }
            return s;
        }

        function secondsToHms(seconds) {
            if (seconds < 0) {
                seconds = 0
            }
            var h = Math.floor(seconds / 3600)
            var m = Math.floor(seconds / 60) % 60
            var s = seconds % 60

            var colonsCount = (duration.match(/:/g) || []).length

            var hms = ''
            if (h > 0) {
                hms += h + ':'
            }
            if (m > 0 || colonsCount >= 1) {
                hms += (hms.length > 0 ? m.toString().padStart(2, '0') : m.toString()) + ':'
            }
            hms += hms.length > 0 ? s.toString().padStart(2, '0') : s.toString()
            return hms
        }
    }


    Rectangle {
        id: bg
        anchors.fill: parent
        color: "#00000000"
        Text {
            id: txt
            text: root.duration
            anchors.centerIn: parent
            font.pointSize: 20
        }
    }

    Timer {
        id: timer
        interval: 1000
        onTriggered: {
            txt.text = impl.secondsToHms(--impl.countdown)
            if (impl.countdown < 0) {
                timer.running = false
                finished()
                if (autoHide) {
                    root.visible = false
                }
            }
        }
        repeat: true

        onRunningChanged: {
            if (running) {
                started()
            }
            else {
                finished()
            }
        }
    }
}
