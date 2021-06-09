import QtQuick 2.12


Item {
    implicitWidth: 100
    implicitHeight: 100


    Component.onCompleted: {
        countdown.visible = false
        inSeq.currentFrame = 0
    }

    Connections {
        target: inSeq
        function onAboutToFinish()
        {
            countdown.visible = true
            countdown.running = true
        }
    }

    Connections {
        target: countdown
        function onFinished()
        {
            outSeq.running = true
        }
    }

    Connections {
        target: outSeq
        function onStarted()
        {
            inSeq.visible = false
            countdown.visible = false
        }
    }



}

/*##^##
Designer {
    D{i:0;height:65;width:149}
}
##^##*/
