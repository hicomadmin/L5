﻿import QtQuick 2.3

Item {
    anchors.fill: parent;

    MenuButton{
        id:skyON
        width: 110;  height: 110;
        anchors{left: parent.left; leftMargin: 476;}
        anchors{top: parent.top; topMargin: 361;}
        topMag: 41;
        btnText: qsTr("开");
        normalSource: "qrc:/images/light/Set_Light_off_nml.png";
        pressSource:  "qrc:/images/light/Set_Light_off_exe.png";
    }


    MenuButton{
        id:skyOFF
        width: 110;  height: 110;
        anchors{left: skyON.right; leftMargin: 38; top: skyON.top;}
        topMag: 41;
        btnText: qsTr("关");
        normalSource: "qrc:/images/light/Set_Light_off_nml.png";
        pressSource:  "qrc:/images/light/Set_Light_off_exe.png";
    }


    BaseText{
        anchors{bottom: skyON.top; bottomMargin: 18; left: skyON.left; leftMargin: 12;}
        text: qsTr("星空顶棚开关");
    }

    BaseText{
        id: skyOFFTxt
        anchors{top: skyON.bottom; topMargin: 41; left: skyON.left; leftMargin: 12;}
        text: qsTr("星空顶棚开关");
    }



    Image {
        id: redColor
        width: 86; height: 29;
        anchors{left:skyOFFTxt.left; top:skyON.bottom; topMargin: 127;}
        source: "qrc:/images/sky/Set_xkdp_dr.png";
    }

    Image {
        id: greenColor
        width: 86; height: 29;
        anchors{left:redColor.right; leftMargin: 40; top:redColor.top;}
        source: "qrc:/images/sky/Set_xkdp_dg.png";
    }
    Image {
        id: yellowColor
        width: 86; height: 29;
        anchors{left:greenColor.right; leftMargin: 40; top:redColor.top;}
        source: "qrc:/images/sky/Set_xkdp_dy.png";
    }

    Image {
        width: 54; height: 22;
        anchors{left:redColor.left; leftMargin: 17; bottom:redColor.top; bottomMargin: 5;}
        source: "qrc:/images/sky/Set_xkdp_d.png";
    }





    function onAdjustmentBtnClicked(val)
    {
        switch(val)
        {
        case 10:
            break;
        case 11:
            break;
        default:
            break;
        }
    }

}
