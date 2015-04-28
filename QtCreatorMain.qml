import QtQuick 2.1

Flickable {
    height: 700
    width: 600
    contentHeight: contentsBody.height
    contentWidth: width

    FontLoader {
        id: fontLoader
        source: "http://fonts.gstatic.com/s/opensans/v10/DXI1ORHCpsQm3Vp6mXoaTYnF5uFdDttMLvmWuJdhhgs.ttf"
//        onStatusChanged: {
//            if (status === FontLoader.Error)
//                source = "OpenSans"
//        }
    }

    Column {
        id: contentsBody
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 10

        spacing: 30

        Text {
            width: parent.width
            text: qsTr("Qt Creator Manual")
            font.pixelSize: 50
            font.family: fontLoader.name
            color: "#404244"
        }

        Text {
            width: parent.width

            wrapMode: Text.WordWrap
            text: qsTr("Qt Creator provides a cross-platform, complete integrated development environment (IDE) for application developers to create applications for multiple desktop and mobile device platforms, such as Android and iOS. It is available for Linux, OS X and Windows operating systems. For more information, see Supported Platforms.")
            font.pixelSize: 16
            font.family: fontLoader.name
            color: "#404244"
        }

        Text {
            text: qsTr("This manual also describes features that are only available if you have the appropriate Qt license. For more information, see Qt Creator Commercial Features.")

            wrapMode: Text.WordWrap
            width: parent.width
            font.pixelSize: 16
            font.family: fontLoader.name
            color: "#404244"
        }

        Item {
            id: table
            width: parent.width
            height: grid.implicitHeight
            property int cellWidth: width / 3 - 3

            Grid {
                id: grid
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right

                rows: 3
                columns: 3
                spacing: -2
                Repeater {
                    model: [
                        "http://doc.qt.io/qtcreator/images/creator_gettingstarted.png",
                        "http://doc.qt.io/qtcreator/images/creator_managingprojects.png",
                        "http://doc.qt.io/qtcreator/images/creator_designinguserinterface.png",
                        "http://doc.qt.io/qtcreator/images/creator_coding.png",
                        "http://doc.qt.io/qtcreator/images/creator_buildingrunning.png",
                        "http://doc.qt.io/qtcreator/images/creator_testing.png",
                        "http://doc.qt.io/qtcreator/images/creator_advanceduse.png",
                        "http://doc.qt.io/qtcreator/images/creator_gettinghelp.png",
                        ""
                    ]
                    TableDelegate {
                        width: table.cellWidth
                        fontName: fontLoader.name
                        sectionLogoSource: modelData
                        sectionTitle: "Getting Started"
                        sectionModel: [
                            "Writing Code",
                            "Finding",
                            "Refactoring",
                            "Configuring the Editor"
                        ]
                    }
                }
            }
        }
    }
}
