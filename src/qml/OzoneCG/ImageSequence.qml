/* ImageSequence.qml
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


import QtQuick 2.0
import Qt.labs.folderlistmodel 2.15

import QtGraphicalEffects 1.12

Item {
    property alias source: folderModel.folder
    property int currentFrame: 0
    property bool loop: false
    property int loopStartFrame: 0
    property alias fillMode: img.fillMode
    property int loopCount: 0
    property alias running: timer.running

    implicitWidth: img.implicitWidth
    implicitHeight: img.implicitHeight

    QtObject {
        id: impl
        property int imageIndex: calculateImageIndex()
        property var imageUrls: []
        property int prevCurrentFrame: 0
        property int prevImageIndex: 0

        function calculateImageIndex() {
            if (loop) {
                return (currentFrame + loopStartFrame * (loopCount - 1)) % imageUrls.length
            }
            else {
                return Math.min(imageUrls.length - 1, currentFrame)
            }
        }

        onImageIndexChanged: {
            console.log("Image Index: " + imageIndex)
        }
    }

    onCurrentFrameChanged: {
        if (currentFrame > impl.prevCurrentFrame
                && loop && impl.imageIndex === 0) {
            loopCount++
        }
        impl.prevCurrentFrame = currentFrame
    }

    FolderListModel {
        id: folderModel
        onCountChanged: {
            impl.imageUrls.length = 0
            for (var i = 0; i < count; i++) {
                impl.imageUrls.push(get(i, "fileUrl"))
            }
            console.log("impl.imageUrls.length: " + impl.imageUrls.length)
        }
    }

    Image {
        id: img
        anchors.fill: parent
        source: impl.imageIndex < impl.imageUrls.length ? impl.imageUrls[impl.imageIndex] : ""
        fillMode: Image.Stretch
        visible: true

    }


    Timer {
        id: timer
        interval: 40
        repeat: true

        onTriggered: {
            currentFrame++
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
