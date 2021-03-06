﻿import QtQuick 2.3


Item {
    id: button;
    focus: false;

    property int topMag: 83;
    property int textsize: 32
    property string normalSource;
    property string pressSource;
    property string btnText: "";
    signal pressed();
    signal clicked();
    signal release();
    signal pressedXY(int x, int y);


    Image {
        id: normal;
        anchors.fill: parent;
        source: normalSource;
        visible: !button.focus;
    }
    Image {
        id: press;
        anchors.fill: parent;
        source: pressSource;
        visible: button.focus;
    }


    BaseText {
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.top: parent.top;
        anchors.topMargin: topMag;
        text: btnText;
        font.pixelSize: textsize;
    }

    MouseArea  {
        id: mouseEvent
        anchors.fill: parent;

        onPressed: {
            button.focus = true;
            onButtonPressed();
        }

        onExited: {
            button.focus = false;
        }

        onReleased: {
            button.focus = false;
            onButtonReslease();
        }

        onClicked: {
            button.focus = false;
            onButtonClicked(mouse.x, mouse.y);
        }
    }



    function onButtonPressed(x, y) {
        pressed();
        pressedXY(x, y);
    }
    function onButtonClicked() {
        clicked();
    }
    function onButtonReslease() {
        release();
    }

}

