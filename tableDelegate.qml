import QtQuick 2.1

Column {
    property string fontName
    property alias sectionLogoSource: sectionLogo.source
    property alias sectionTitle: sectionTitleLabel.text
    property alias sectionModel: sectionListRepeater.model

    Rectangle {
        width: parent.width
        height: 120
        color: "#F9F9F9"
        border.color: "#EEEEEE"

        Image {
            id: sectionLogo
            anchors.left: parent.left
            anchors.top: parent.top
        }
    }

    Rectangle {
        width: parent.width
        height: ulContainer.height + 20
        color: "#FFFFFF"
        border.color: "#EEEEEE"
        Column {
            id: ulContainer
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.margins: 5


            Text {
                id: sectionTitleLabel
                color: "#5CAA15"
                font.pixelSize: 16
                font.weight: Font.DemiBold
                font.family: fontName
            }

            Repeater {
                id: sectionListRepeater
                Item {
                    height: liLabel.implicitHeight
                    anchors.left: parent.left
                    anchors.right: parent.right

                    Text {
                        id: liLabel
                        anchors.left: parent.left
                        anchors.leftMargin: 15
                        anchors.right: parent.right

                        text: modelData
                        color: "#5CAA15"
                        font.pixelSize: 16
                        font.family: fontName
                    }
                }
            }
        }
    }
}
