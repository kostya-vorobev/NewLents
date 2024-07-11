import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Window {
    id: anotherWindow
    width:480
    height:320

    // Кнопка для открытия главного окна приложения
    Button {
        text: qsTr("Главное окно")
        width: 180
        height: 50
        anchors.centerIn: parent
    }
}
