import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15


Window {
    width: 462
    height: 537
    visible: true
    title: qsTr("Hello World")


    Rectangle {
            id: loginForm
            width: 462
            height: 537
            anchors.centerIn: parent
            color: "#FFFFFF"
            border.color: "#E0E0E0"
            border.width: 0.5
            radius: 4
            opacity: 0.9

            Rectangle {
                id: frame494
                width: 462
                height: 219
                color: "#FFFFFF"
                border.color: "#E0E0E0"
                border.width: 0.5
            }

            Rectangle {
                id: photo
                width: 78
                height: 78
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 32
                color: "#E0F1FF"
                radius: 39
            }

            Image {
                id: profileImage
                source: "path/to/your/image.png"
                width: 78
                height: 78
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 32
                fillMode: Image.PreserveAspectCrop
            }

            Text {
                id: titleText
                text: "Вход на платформу"
                width: 224
                height: 29
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: profileImage.bottom
                anchors.topMargin: 20
                font.family: "Roboto"
                font.weight: Font.Medium
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                color: "#212121"
            }

            Text {
                id: subtitleText
                text: "Мы рады видеть вас снова"
                width: 180
                height: 17
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: titleText.bottom
                anchors.topMargin: 10
                font.family: "Roboto"
                font.weight: Font.Normal
                font.pixelSize: 14
                horizontalAlignment: Text.AlignHCenter
                color: "#616161"
            }

            Text {
                id: errorText
                text: "Error message"
                width: 141
                height: 17
                anchors.left: parent.left
                anchors.leftMargin: 32
                anchors.verticalCenter: parent.verticalCenter
                font.family: "Roboto"
                font.weight: Font.Normal
                font.pixelSize: 14
                horizontalAlignment: Text.AlignRight
                color: "#F2453D"
                visible: false
            }

            Text {
                id: warningText
                text: "Warning message"
                width: 62
                height: 17
                anchors.left: parent.left
                anchors.leftMargin: 111
                anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenterOffset: 61
                font.family: "Roboto"
                font.weight: Font.Normal
                font.pixelSize: 14
                horizontalAlignment: Text.AlignRight
                color: "#F2453D"
                visible: false
            }
            Rectangle {
                id: frame493
                width: 462
                height: 185
                color: "#FFFFFF"
                anchors.top: frame494.bottom

            GridLayout {
                id: grid

                rows: 3
                columns: 2

                width: 462
                height: 150
                //anchors.top: parent.top
                anchors.centerIn: parent

                Text {

                    id: usernameLabel

                    Layout.row: 0
                    Layout.column: 0
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    text: "* Электронная почта:"
                    font.family: "Roboto"
                    font.weight: Font.Normal
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    color: "#616161"

                   }

                Text {
                       id: passLabel
                       Layout.fillHeight: true
                       Layout.fillWidth: true
                       Layout.row: 1
                       Layout.column: 0
                       //anchors.top: usernameLabel.bottom
                       text: "* Пароль:"
                       font.family: "Roboto"
                       font.weight: Font.Normal
                       font.pixelSize: 14
                       horizontalAlignment: Text.AlignRight
                       verticalAlignment: Text.AlignVCenter
                       color: "#616161"
                   }




                   TextField {
                       id: usernameField
                       Layout.minimumWidth: 242
                       Layout.minimumHeight: 36
                       Layout.row: 0
                       Layout.column: 1
                       Layout.alignment: Qt.AlignCenter
                       Layout.rightMargin: 20
                       width: 242
                       height: 36
                       placeholderText: "Username or email address"
                       font.family: "Roboto"
                       font.weight: Font.Normal
                       font.pixelSize: 14
                       horizontalAlignment: Text.AlignLeft
                       verticalAlignment: Text.AlignVCenter
                       color: "#212121"
                       background: Rectangle {
                           color: "#FAFAFA"
                           border.color: "#BDBDBD"
                           border.width: 0.5
                           radius: 4
                       }
                       inputMethodHints: Qt.ImhNoAutoUppercase
                       //validator: RegExpValidator { regExp: /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/ }
                   }

                   TextField {
                       id: passwordField
                       Layout.minimumWidth: 242
                       Layout.minimumHeight: 36
                       Layout.row: 1
                       Layout.column: 1
                       Layout.alignment: Qt.AlignCenter
                       Layout.rightMargin: 20
                       //Layout.rightMargin: 10
                       width: 242
                       height: 36
                       placeholderText: "Password"
                       font.family: "Roboto"
                       font.weight: Font.Normal
                       font.pixelSize: 14
                       horizontalAlignment: Text.AlignLeft
                       verticalAlignment: Text.AlignVCenter
                       color: "#212121"
                       background: Rectangle {
                           color: "#FAFAFA"
                           border.color: "#BDBDBD"
                           border.width: 0.5
                           radius: 4
                       }
                       inputMethodHints: Qt.ImhNoAutoUppercase
                       echoMode: TextField.Password
                   }


               Text {
                   id: loginText
                   Layout.row: 2
                   Layout.column: 1
                   anchors.topMargin: 5
                   text: "Я не помню пароль"
                   width: 124
                   height: 36
                   anchors.top: passwordField.bottom
                   font.family: "Roboto"
                   font.weight: Font.Medium

                   font.pixelSize: 14
                   color: "#3B87F9"

                   MouseArea {
                       id: loginTextMouseArea
                       anchors.fill: parent
                       onClicked: { console.log("Я не помню пароль"); }
                       cursorShape: Qt.PointingHandCursor
                   }

               }

               }
            }
            Image {
                id: visibilityIcon
                source: "path/to/your/visibilityIcon.png"
                width: 24
                height: 24
                anchors.right: passwordField.right
                anchors.rightMargin: 10
                anchors.verticalCenter: passwordField.verticalCenter
                fillMode: Image.PreserveAspectFit
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        passwordField.echoMode = passwordField.echoMode === TextField.Password ? TextField.Normal : TextField.Password;
                    }
                }
            }

            Rectangle {
                id: frame495
                width: 462
                height: 133
                anchors.bottom: parent.bottom
                color: "#FFFFFF"
                border.color: "#E0E0E0"
                border.width: 0.5
            }

            RowLayout {
                id: rowLayoutRegist
                width: 300
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: frame495.bottom
                anchors.bottomMargin: 32

                Text {
                    id: labelText
                    text: "У вас ещё нет аккаунта?"
                    font.family: "Roboto"
                    font.weight: Font.Normal
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    color: "#616161"
                }

                Text {
                    id: registText
                    text: "Зарегистрироваться"
                    font.family: "Roboto"
                    font.weight: Font.Normal
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    textFormat: Text.RichText
                    color: "#2C98F0"
                    Layout.rightMargin: 1

                    MouseArea {
                        id: mouseArea
                        anchors.fill: parent
                        onClicked: { console.log("Зарегистрироваться"); }
                        cursorShape: Qt.PointingHandCursor
                    }
                }
            }

            Button {
                id: signUpButton
                width: 124
                height: 36
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: rowLayoutRegist.top
                anchors.bottomMargin: 20
                hoverEnabled: true
                Text {
                    text: "Войти"
                    font.family: "Roboto"
                    font.weight: Font.Normal
                    font.pixelSize: 14
                    anchors.centerIn: parent
                    color: signUpButton.down ? "#000000" : (signUpButton.hovered ? "#000000" : "#FFFFFF")

                }

                background: Rectangle {
                    color: signUpButton.down ? "#FFFFFF" : (signUpButton.hovered ? "#00FFFF" : "#3B87F9")
                    radius: 4
                }




                onClicked: {
                     console.log("Войти");
                }

            }

            Image {
                id: signUpIcon
                source: "path/to/your/signUpIcon.png"
                width: 24
                height: 24
                anchors.right: signUpButton.right
                anchors.rightMargin: 10
                anchors.verticalCenter: signUpButton.verticalCenter
                fillMode: Image.PreserveAspectFit
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        // Handle sign up logic here
                    }
                }
            }

            Image {
                id: errorIcon
                source: "path/to/your/errorIcon.png"
                width: 24
                height: 24
                anchors.left: errorText.right
                anchors.leftMargin: 10
                anchors.verticalCenter: errorText.verticalCenter
                fillMode: Image.PreserveAspectFit
                visible: errorText.visible
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        // Handle error logic here
                    }
                }
            }

            Image {
                id: warningIcon
                source: "path/to/your/warningIcon.png"
                width: 24
                height: 24
                anchors.left: warningText.right
                anchors.leftMargin: 10
                anchors.verticalCenter: warningText.verticalCenter
                fillMode: Image.PreserveAspectFit
                visible: warningText.visible
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        // Handle warning logic here
                    }
                }
            }
    }
}



