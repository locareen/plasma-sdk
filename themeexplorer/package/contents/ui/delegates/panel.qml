/*
 *   Copyright 2015 Marco Martin <mart@kde.org>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU Library General Public License as
 *   published by the Free Software Foundation; either version 2 or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details
 *
 *   You should have received a copy of the GNU Library General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.3

import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.components 2.0 as PlasmaComponents

Item {
    Rectangle {
        id: background
        anchors {
            fill: parent
            margins: units.gridUnit
        }
        radius: 3
        color: theme.backgroundColor
        opacity: 0.6
    }

    PlasmaCore.FrameSvgItem {
        id: bottomPanelShadow
        anchors {
            horizontalCenter: background.horizontalCenter
            bottom: background.bottom
        }
        width: background.width - units.gridUnit * 2
        height: units.gridUnit * 3
        enabledBorders: PlasmaCore.FrameSvgItem.TopBorder | PlasmaCore.FrameSvgItem.LeftBorder | PlasmaCore.FrameSvgItem.RightBorder
        imagePath: model.imagePath
        onImagePathChanged: visible = hasElementPrefix("shadow")
        prefix: "shadow"
    }

    PlasmaCore.FrameSvgItem {
        anchors {
            fill: bottomPanelShadow
            leftMargin: bottomPanelShadow.margins.left
            topMargin: bottomPanelShadow.margins.top
            rightMargin: bottomPanelShadow.margins.right
            bottomMargin: bottomPanelShadow.margins.bottom
        }
        imagePath: model.imagePath
        enabledBorders: bottomPanelShadow.enabledBorders

        Rectangle {
            id: marginsRectangle
            anchors {
                fill: parent
                leftMargin: parent.margins.left
                topMargin: parent.margins.top
                rightMargin: parent.margins.right
                bottomMargin: parent.margins.bottom
            }
            color: "green"
            opacity: 0.5
            visible: root.showMargins
        }
    }

    PlasmaCore.FrameSvgItem {
        id: leftPanelShadow
        anchors {
            verticalCenter: background.verticalCenter
            left: background.left
        }
        height: background.height - units.gridUnit * 2
        width: units.gridUnit * 3
        enabledBorders: PlasmaCore.FrameSvgItem.TopBorder | PlasmaCore.FrameSvgItem.BottomBorder | PlasmaCore.FrameSvgItem.RightBorder
        imagePath: model.imagePath
        onImagePathChanged: visible = hasElementPrefix("shadow")
        prefix: "shadow"
    }

    PlasmaCore.FrameSvgItem {
        anchors {
            fill: leftPanelShadow
            leftMargin: leftPanelShadow.margins.left
            topMargin: leftPanelShadow.margins.top
            rightMargin: leftPanelShadow.margins.right
            bottomMargin: leftPanelShadow.margins.bottom
        }
        imagePath: model.imagePath
        enabledBorders: leftPanelShadow.enabledBorders

        Rectangle {
            anchors {
                fill: parent
                leftMargin: parent.margins.left
                topMargin: parent.margins.top
                rightMargin: parent.margins.right
                bottomMargin: parent.margins.bottom
            }
            color: "green"
            opacity: 0.5
            visible: root.showMargins
        }
    }

    PlasmaCore.FrameSvgItem {
        id: topPanelShadow
        anchors {
            horizontalCenter: background.horizontalCenter
            top: background.top
        }
        width: background.width - units.gridUnit * 2
        height: units.gridUnit * 3
        enabledBorders: PlasmaCore.FrameSvgItem.BottomBorder | PlasmaCore.FrameSvgItem.LeftBorder | PlasmaCore.FrameSvgItem.RightBorder
        imagePath: model.imagePath
        onImagePathChanged: visible = hasElementPrefix("shadow")
        prefix: "shadow"
    }

    PlasmaCore.FrameSvgItem {
        anchors {
            fill: topPanelShadow
            leftMargin: topPanelShadow.margins.left
            topMargin: topPanelShadow.margins.top
            rightMargin: topPanelShadow.margins.right
            bottomMargin: topPanelShadow.margins.bottom
        }
        imagePath: model.imagePath
        enabledBorders: topPanelShadow.enabledBorders

        Rectangle {
            anchors {
                fill: parent
                leftMargin: parent.margins.left
                topMargin: parent.margins.top
                rightMargin: parent.margins.right
                bottomMargin: parent.margins.bottom
            }
            color: "green"
            opacity: 0.5
            visible: root.showMargins
        }
    }

    PlasmaCore.FrameSvgItem {
        id: rightPanelShadow
        anchors {
            verticalCenter: background.verticalCenter
            right: background.right
        }
        height: background.height - units.gridUnit * 2
        width: units.gridUnit * 3
        enabledBorders: PlasmaCore.FrameSvgItem.TopBorder | PlasmaCore.FrameSvgItem.BottomBorder | PlasmaCore.FrameSvgItem.LeftBorder
        imagePath: model.imagePath
        onImagePathChanged: visible = hasElementPrefix("shadow")
        prefix: "shadow"
    }

    PlasmaCore.FrameSvgItem {
        anchors {
            fill: rightPanelShadow
            leftMargin: rightPanelShadow.margins.left
            topMargin: rightPanelShadow.margins.top
            rightMargin: rightPanelShadow.margins.right
            bottomMargin: rightPanelShadow.margins.bottom
        }
        imagePath: model.imagePath
        enabledBorders: rightPanelShadow.enabledBorders

        Rectangle {
            anchors {
                fill: parent
                leftMargin: parent.margins.left
                topMargin: parent.margins.top
                rightMargin: parent.margins.right
                bottomMargin: parent.margins.bottom
            }
            color: "green"
            opacity: 0.5
            visible: root.showMargins
        }
    }

    PlasmaComponents.Label {
        anchors.centerIn: parent
        text: model.imagePath
        visible: width < marginsRectangle.width
    }
}
