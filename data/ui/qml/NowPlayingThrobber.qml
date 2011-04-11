
import Qt 4.7

import 'config.js' as Config

Image {
    id: nowPlayingThrobber
    property bool opened
    signal clicked

    source: 'artwork/nowplaying-tab.png'

    height: Config.headerHeight
    width: Config.switcherWidth

    ScaledIcon {
        anchors {
            verticalCenter: parent.verticalCenter
            right: parent.right
            rightMargin: (parent.width * .8 - width) / 2
        }
        rotation: (parent.opened)?-90:0
        source: (parent.opened)?'artwork/back_inv.png':'artwork/play_inv.png'

        Behavior on rotation { NumberAnimation { duration: Config.quickTransition } }
    }

    MouseArea {
        anchors.fill: parent
        onPressed: nowPlayingThrobber.clicked()
    }
}

