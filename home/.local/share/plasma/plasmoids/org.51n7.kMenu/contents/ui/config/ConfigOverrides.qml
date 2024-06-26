import QtQuick
import QtQuick.Window
import org.kde.kirigami as Kirigami
import org.kde.kcmutils as KCM
import QtQuick.Controls as QQC2
import QtQuick.Layouts

KCM.SimpleKCM {
  id: simpleKCM

  property alias cfg_aboutThisComputer: aboutThisComputer.text
  property alias cfg_systemPreferences: systemPreferences.text
  property alias cfg_appStore: appStore.text
  property alias cfg_forceQuit: forceQuit.text
  property alias cfg_sleep: sleep.text
  property alias cfg_restart: restart.text
  property alias cfg_shutDown: shutDown.text
  property alias cfg_lockScreen: lockScreen.text
  property alias cfg_logOut: logOut.text

  Kirigami.FormLayout {
    id: formLayout

    QQC2.Label { text: 'About This Computer:' }
    QQC2.TextField {
      id: aboutThisComputer
      Layout.fillWidth: true
    }

    Rectangle { Layout.bottomMargin: 5 }

    QQC2.Label { text: 'System Preferences:' }
    QQC2.TextField {
      id: systemPreferences
      Layout.fillWidth: true
    }

    Rectangle { Layout.bottomMargin: 5 }

    QQC2.Label { text: 'App Store:' }
    QQC2.TextField {
      id: appStore
      Layout.fillWidth: true
    }

    Rectangle { Layout.bottomMargin: 5 }

    QQC2.Label { text: 'Force Quit:' }
    QQC2.TextField {
      id: forceQuit
      Layout.fillWidth: true
    }

    Rectangle { Layout.bottomMargin: 5 }

    QQC2.Label { text: 'Sleep:' }
    QQC2.TextField {
      id: sleep
      Layout.fillWidth: true
    }

    Rectangle { Layout.bottomMargin: 5 }

    QQC2.Label { text: 'Restart:' }
    QQC2.TextField {
      id: restart
      Layout.fillWidth: true
    }

    Rectangle { Layout.bottomMargin: 5 }

    QQC2.Label { text: 'Shut Down:' }
    QQC2.TextField {
      id: shutDown
      Layout.fillWidth: true
    }

    Rectangle { Layout.bottomMargin: 5 }

    QQC2.Label { text: 'Lock Screen:' }
    QQC2.TextField {
      id: lockScreen
      Layout.fillWidth: true
    }

    Rectangle { Layout.bottomMargin: 5 }

    QQC2.Label { text: 'Log Out:' }
    QQC2.TextField {
      id: logOut
      Layout.fillWidth: true
    }

    Rectangle { Layout.bottomMargin: 60 }
  }
}
