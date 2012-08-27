/****************************************************************************
**
** Copyright (C) 2012 Digia Plc
** All rights reserved.
** For any questions to Digia, please use contact form at http://qt.digia.com
**
** This file is part of the Qt Commercial Charts Add-on.
**
** $QT_BEGIN_LICENSE$
** Licensees holding valid Qt Commercial licenses may use this file in
** accordance with the Qt Commercial License Agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and Digia.
**
** If you have questions regarding the use of this file, please use
** contact form at http://qt.digia.com
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 1.0

Row {
    anchors.fill: parent
    spacing: 5
    property variant chart

    Flow {
        flow: Flow.TopToBottom
        spacing: 5
        Button {
            text: "visible"
            onClicked: chart.visible = !chart.visible;
        }
        Button {
            text: "theme +"
            onClicked: chart.theme++;
        }
        Button {
            text: "theme -"
            onClicked: chart.theme--;
        }
        Button {
            text: "animation opt +"
            onClicked: chart.animationOptions++;
        }
        Button {
            text: "animation opt -"
            onClicked: chart.animationOptions--;
        }
        Button {
            text: "background color"
            onClicked: chart.backgroundColor = main.nextColor();
        }
        Button {
            text: "drop shadow enabled"
            onClicked: chart.dropShadowEnabled = !chart.dropShadowEnabled;
        }
        Button {
            text: "zoom +"
            onClicked: chart.zoom(2);
        }
        Button {
            text: "zoom -"
            onClicked: chart.zoom(0.5);
        }
        Button {
            text: "scroll left"
            onClicked: chart.scrollLeft(10);
        }
        Button {
            text: "scroll right"
            onClicked: chart.scrollRight(10);
        }
        Button {
            text: "scroll up"
            onClicked: chart.scrollUp(10);
        }
        Button {
            text: "scroll down"
            onClicked: chart.scrollDown(10);
        }
        Button {
            text: "title color"
            onClicked: chart.titleColor = main.nextColor();
        }
    }

    FontEditor {
        id: fontEditor
        fontDescription: "title"
        function editedFont() {
            return chart.titleFont;
        }
    }
}
