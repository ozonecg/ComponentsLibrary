import QtQuick 2.0

Text {
    id: root
    property alias fontUrl : loader.source

    FontLoader {
        id: loader
        source: url
    }
    text: "OzoneCG"
    color: "white"
    font.pixelSize: 40
    font.family: loader.name
}
