#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QCoreApplication>
#include "login.h"
#include <QFile>

int main(int argc, char *argv[])
{
    Login login ;

    login.get("https://jsonblob.com/api/jsonBlob/961577751505289216");

    QGuiApplication app(argc, argv);


    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

//    QFile jsonFile(":/data.json");
//    jsonFile.open(QIODevice::ReadOnly | QIODevice::Text);
//    QByteArray json = jsonFile.readAll();
//    qInfo() <<login.myData;
    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("Login", &login);
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
