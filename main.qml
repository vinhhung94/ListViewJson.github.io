//import QtQuick 2.12
//import QtQuick.Controls 2.12

import QtQuick 2.3
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ApplicationWindow {

    visible: true

    //title of the application
    title: qsTr("Example-A")
    width: 450
    height: 650

    Connections {
        target: Login
        onDataReadyRead : {
            var model = JSON.parse(myData)
            list.model = model
        }
    }


    Rectangle {
        id: rectangle2
        width: 450
        height: 650
        color: "#ddfcf3"
        border.color: "#1851e3"

        Rectangle {
            id: rectangle
            x: 0
            y: 0
            width: 450
            height: 50
            color: "#be3fe6"

            Button {
                id: button
                x: 376
                y: 8
                width: 40
                height: 40
                font.capitalization: Font.AllUppercase
                Rectangle {
                    id: rectangle0
                    width: 40
                    height: 40
    //
                    color: "#be3fe6"
                    Label {
                        x: 11
                        y: 0
                        width: 14.525
                        color: "#ddfcf3"
                        text: qsTr("+")
                        font.pointSize: 25
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }

                opacity: 1

            }

            Label {
                id: label
                x: 19
                y: 8
                width: 95
                height: 34
                color: "#ddfcf3"
                text: qsTr("All Orbits")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Arial"
                font.weight: Font.Bold
                font.pointSize: 15
            }



        }

        Rectangle {
            id: rectangle1
            x: 8
            y: 56
            width: 434
            height: 49
            color: "#ffffff"
            radius: 15
            border.color: "#ddfcf3"
            border.width: 5

            TextArea {
                id: textArea
                x: 13
                y: 8
                width: 352
                height: 33
                text: qsTr("")
                font.pointSize: 15
                placeholderText: "Search"
            }

            Button {
                id: button1
                x: 371
                y: 11
                width: 30
                height: 30
    //            text: qsTr("+")
                Image {
                    x: 0
                    y: 0
                    sourceSize.height: parent.height
                    sourceSize.width: height
                    source: "../../../Downloads/buttonBlue.jpeg"
                    fillMode: Image.PreserveAspectFit
                }
            }


        }


//       ScrollView {
//        id: scroolView
//        x: 11
//        y: 124
//        width: 420
//        height: 397
//        ScrollBar.vertical.policy
//       }

        ListView {
            id: list
            x: 11
            y: 124
            width: 420
            height: 397
            pixelAligned: false
            spacing: 25
            orientation: ListView.Vertical
            interactive: true
            clip: true

            delegate: RowLayout {

                Item {
                x: 5
                width: 80
                height: 40

                Row {
                    id: row1

                    Row {
                        id: row2
                        width: 340
                        height: 25

                            Column {
                                id: column1

                                Image {

                                    width: 50
                                    height: 50
                                    source: modelData.sourceImg
                                    fillMode: Image.PreserveAspectFit

                                }

    //                        }

                        }


                        spacing: 30

                        Column {
                            id: column2


                            RowLayout {
                            id: row3
                                Text {
                                    width: 250
                                    height: 25
                                    text: modelData.name
                                    anchors.verticalCenter: parent.verticalCenter
                                    font.bold: true

                                }
                            }
                            spacing: 7
                            RowLayout {
                                id: row4
                                Text {

                                    text: modelData.title
                                    anchors.verticalCenter:parent.verticalCenter
                                    font.italic: true
                                    font.pixelSize: 12
                                }
                           }

                        }

                    }


                    Row {
                        id: row5

                            Column {
                            id: colum3
                                Image {
                                    width: 20
                                    height: 20
                                    source: modelData.sourceImgButton
                                    fillMode: Image.PreserveAspectFit
                                }

                            }
                        }
                    spacing: 50

                   }

//                MouseArea{
//                    anchors.fill: parent
//                    onClicked: openData(modelData)
//                }



            }
                }

        }

        Row {
            id: row
            x: 11
            y: 545
            width: 431
            height: 79

            Button {
                id: button3
                width: 70
                height: 60
                clip: true
                opacity: 0.7
                topPadding: 15
                Column {
                    id: column7
                    width: 30
                    height: 50
                    RowLayout {

                        id: row6
                        Image {
                            Layout.leftMargin: 15
                            Layout.fillWidth: true
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
    //                        width: 10
    //                        height: 10
                            sourceSize.height: 30
                            sourceSize.width: 30
                            source: "../../../Downloads/clock.png"
                            fillMode: Image.PreserveAspectFit
                        }

                    }
                    spacing: 5

                    RowLayout {

                        id: row7
                        Text {
                            text: "Dashboard"
                            anchors.verticalCenter: parent.verticalCenter
                            font.italic: false
                            font.pixelSize: 13
                        }


                    }

                }

            }

            Button {
                id: button4
                width: 70
                height: 60
                opacity: 0.7
    //            text: qsTr("Button")
                Column {
                    id: column8
                    width: 30
                    height: 50
                    RowLayout {

                        id: row9
                        Image {
                            Layout.leftMargin: 15
                            Layout.fillWidth: true
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            sourceSize.height: 30
                            sourceSize.width: 30
                            source: "../../../Downloads/user.png"
                            fillMode: Image.PreserveAspectFit
                        }

                    }
                    spacing: 5


                    RowLayout {

                        id: row10
                        Text {
                            text: "Contact"
                            Layout.leftMargin: 11
                            anchors.verticalCenter: parent.verticalCenter
                            font.italic: false
                            font.pixelSize: 13
                        }


                    }

                }



            }

            Button {
                id: button5
                width: 70
                height: 60
                opacity: 0.7
                Column {
                    id: column9
                    width: 30
                    height: 50
                    RowLayout {

                        id: row11
                        Image {
                            Layout.leftMargin: 15
                            Layout.fillWidth: true
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
    //                        width: 10
    //                        height: 10
                            sourceSize.height: 30
                            sourceSize.width: 30
                            source: "../../../Downloads/calendar.jpeg"
                            fillMode: Image.PreserveAspectFit
                        }

                    }
                    spacing: 5


                    RowLayout {

                        id: row12
                        Text {
                            text: "Calendar"
                            Layout.leftMargin: 11
                            anchors.verticalCenter: parent.verticalCenter
                            font.italic: false
                            font.pixelSize: 13
                        }


                    }

                }



            }

            Button {
                id: button6
                width: 70
                height: 60
                opacity: 0.7
                Column {
                    id: column10
                    width: 30
                    height: 50
                    RowLayout {

                        id: row13
                        Image {
                            Layout.leftMargin: 15
                            Layout.fillWidth: true
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            sourceSize.height: 30
                            sourceSize.width: 30
                            source: "../../../Downloads/orbits.png"
                            fillMode: Image.PreserveAspectFit
                        }

                    }
                    spacing: 5


                    RowLayout {

                        id: row14
                        Text {
                            text: "Orbits"
                            Layout.leftMargin: 11
                            anchors.verticalCenter: parent.verticalCenter
                            font.italic: false
                            font.pixelSize: 13
                        }

                    }

                }

            }

            Button {
                id: button7
                width: 70
                height: 60
                topPadding: 5
                opacity: 0.7
                //            text: qsTr("Button")
                Column {
                    id: column11
                    width: 30
                    height: 50
                    RowLayout {

                        id: row15
                        Image {
                            Layout.leftMargin: 15
                            Layout.fillWidth: true
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            sourceSize.height: 30
                            sourceSize.width: 30
                            source: "../../../Downloads/setting.png"
                            fillMode: Image.PreserveAspectFit
                        }

                    }
                    spacing: 5


                    RowLayout {

                        id: row16
                        Text {
                            text: "Setting"
                            Layout.leftMargin: 11
                            anchors.verticalCenter: parent.verticalCenter
                            font.italic: false
                            font.pixelSize: 13
                        }


                    }

                }



            }

            spacing: 20
        }

//        Row {
//            width: 60
//            height: 50
//            x: 0
//            y: 600

//            Rectangle{
//                id: mainScreen
//                objectName: "MainScreen"
//                width: 60
//                height: 50

//                signal facebookButtonClicked(string screenName)
//                Button{

//                    id: facebookLogoutButton
//                    anchors.left: parent.left
//                    anchors.right: parent.right
//                    anchors.verticalCenter: parent.verticalCenter
//                    anchors.leftMargin: 5
//                    anchors.rightMargin: 5
//                    anchors.topMargin: 50

//                    Text{
//                        anchors.fill: parent
//                        text: "Logout"
//                        verticalAlignment: Text.AlignVCenter
//                        horizontalAlignment: Text.AlignHCenter
//                        MouseArea{
//                            anchors.fill: parent
//                            onClicked: mainScreen.facebookButtonClicked(mainScreen.objectName) //emit signal
//                        }
//                    }
//                }
//            }

//        }




    }



}

//https://jsonblob.com/api/jsonBlob/961577751505289216
