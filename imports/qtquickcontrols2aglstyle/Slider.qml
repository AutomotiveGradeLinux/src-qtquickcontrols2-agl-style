/*
 * Copyright (C) 2016 The Qt Company Ltd.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import QtQuick 2.6
import QtQuick.Templates 2.0 as T
import Qt5Compat.GraphicalEffects

T.Slider {
    id: root
    implicitWidth: background.implicitWidth
    implicitHeight: handle.implicitHeight

    background: Rectangle {
        implicitWidth: 200
        height: 10
        radius: height / 2
        x: root.leftPadding
        y: parent.height / 2 - height / 2
        color: "#666666"

        Rectangle {
            height: parent.height
            width: handle.x + handle.width
            radius: height / 2

            layer.enabled: true
            layer.effect: LinearGradient {
                start: Qt.point(0, 0)
                end: Qt.point(background.width, 0)
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "#00ADDC" }
                    GradientStop { position: 1.0; color: "#6BFBFF" }
                }
            }
        }
    }

    handle: Rectangle {
        x: root.leftPadding + root.visualPosition * (root.availableWidth - width)
        y: root.topPadding + root.availableHeight / 2 - height / 2
        implicitWidth: implicitHeight
        implicitHeight: 50
        radius: implicitHeight / 2
        color: root.pressed ? "#f0f0f0" : "#f6f6f6"
        border.color: "#bdbebf"
    }
}
