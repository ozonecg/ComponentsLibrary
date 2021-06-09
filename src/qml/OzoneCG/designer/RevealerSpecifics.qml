import QtQuick 2.12
import HelperWidgets 2.0
import QtQuick.Layouts 1.12

Column {

    Section {
        anchors.left: parent.left
        anchors.right: parent.right
        caption: qsTr("Revealer")

        SectionLayout {
            Label {
                text: qsTr("RC Type")
            }
            SecondColumnLayout {
                ComboBox {
                    valueType: ComboBox.ValueType.String
                    model: ["Fade", "SlideLeft", "SlideRight", "SlideUp", "SlideDown", "WipeLeft", "WipeRight", "WipeUp", "WipeDown", "WipeHCenter", "WipeVCenter"]
                    backendValue: backendValues.revealConcealType
                    implicitWidth: 180
                    // Layout.fillWidth: true
                }
                ExpandingSpacer {
                }
            }
            Label {
                text: qsTr("Reveal Type")
            }
            SecondColumnLayout {
                ComboBox {
                    valueType: ComboBox.ValueType.String
                    model: ["Fade", "SlideLeft", "SlideRight", "SlideUp", "SlideDown", "WipeLeft", "WipeRight", "WipeUp", "WipeDown", "WipeHCenter", "WipeVCenter"]
                    backendValue: backendValues.revealType
                    implicitWidth: 180
                    // Layout.fillWidth: true
                }

                ExpandingSpacer {
                }
            }
            Label {
                text: qsTr("Conceal Type")
            }
            SecondColumnLayout {
                ComboBox {
                    valueType: ComboBox.ValueType.String
                    model: ["Fade", "SlideLeft", "SlideRight", "SlideUp", "SlideDown", "WipeLeft", "WipeRight", "WipeUp", "WipeDown", "WipeHCenter", "WipeVCenter"]
                    backendValue: backendValues.concealType
                    implicitWidth: 180
                    // Layout.fillWidth: true
                }

                ExpandingSpacer {
                }
            }
            Label {
                text: qsTr("Reveal State")
            }
            SecondColumnLayout {
                ComboBox {
                    valueType: ComboBox.ValueType.String
                    model: [" ", "STAGE", "IN", "OUT"]
                    backendValue: backendValues.revealState
                    implicitWidth: 140
                    //Layout.fillWidth: true
                }

                ExpandingSpacer {
                }
            }

        }

    }

}


