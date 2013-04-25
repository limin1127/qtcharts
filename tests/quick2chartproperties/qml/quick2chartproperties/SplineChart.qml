/****************************************************************************
**
** Copyright (C) 2013 Digia Plc
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

import QtQuick 2.0
import QtCommercial.Chart 1.1

ChartView {
    title: "spline series"
    anchors.fill: parent
    property variant series: splineSeries
    animationOptions: ChartView.SeriesAnimations

    SplineSeries {
        id: splineSeries
        name: "spline 1"
        XYPoint { x: 0; y: 0 }
        XYPoint { x: 1.1; y: 2.1 }
        XYPoint { x: 1.9; y: 3.3 }
        XYPoint { x: 2.1; y: 2.1 }
        XYPoint { x: 2.9; y: 4.9 }
        XYPoint { x: 3.4; y: 3.0 }
        XYPoint { x: 4.1; y: 3.3 }

        onNameChanged:              console.log("splineSeries.onNameChanged: " + name);
        onVisibleChanged:           console.log("splineSeries.onVisibleChanged: " + visible);
        onOpacityChanged:           console.log(name + ".onOpacityChanged: " + opacity);
        onClicked:                  console.log(name + ".onClicked: " + point.x + ", " + point.y);
        onPointReplaced:            console.log("splineSeries.onPointReplaced: " + index);
        onPointRemoved:             console.log("splineSeries.onPointRemoved: " + index);
        onPointAdded:               console.log("splineSeries.onPointAdded: " + series.at(index).x + ", " + series.at(index).y);
        onColorChanged:             console.log("splineSeries.onColorChanged: " + color);
        onWidthChanged:             console.log("splineSeries.onWidthChanged: " + width);
        onStyleChanged:             console.log("splineSeries.onStyleChanged: " + style);
        onCapStyleChanged:          console.log("splineSeries.onCapStyleChanged: " + capStyle);
        onCountChanged:             console.log("splineSeries.onCountChanged: " + count);
    }

    SplineSeries {
        name: "spline 2"
        XYPoint { x: 1.1; y: 1.1 }
        XYPoint { x: 1.9; y: 2.3 }
        XYPoint { x: 2.1; y: 1.1 }
        XYPoint { x: 2.9; y: 3.9 }
        XYPoint { x: 3.4; y: 2.0 }
        XYPoint { x: 4.1; y: 2.3 }
        onClicked:                  console.log(name + ".onClicked: " + point.x + ", " + point.y);
    }
}