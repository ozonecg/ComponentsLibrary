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
import OzoneCG 1.0
import QtQuick.Timeline 1.0
import Qt.labs.calendar 1.0


Window {
    id: window
    visible: true
    color: "black"
    width: 800
    height: 600
    title: qsTr("Ozone CG")

    RevealerDemo {
        id: revealerDemo
        anchors.fill: parent
    }









}







/*##^##
Designer {
    D{i:0;formeditorZoom:0.33}D{i:2}
}
##^##*/
