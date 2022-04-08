#include "login.h"

Login::Login(QObject *parent) : QObject(parent){

    connect(&manager, &QNetworkAccessManager::authenticationRequired, this, &Login::authenticationRequired);
    connect(&manager, &QNetworkAccessManager::finished, this, &Login::finished);
    connect(&manager, &QNetworkAccessManager::encrypted, this, &Login::encrypted);

}

void Login::get(QString location) {
    qInfo() << "Chào mừng đến Facebook";
    QNetworkReply *reply = manager.get(QNetworkRequest(QUrl(location)));
    connect(reply, &QNetworkReply::readyRead, this, &Login::readyRead);

}

void Login::post(QString location, QByteArray data){
    qInfo() << "Post login facebook";
    QNetworkRequest request = QNetworkRequest(QUrl(location));
    request.setHeader(QNetworkRequest::ContentTypeHeader, "text/plain");
    QNetworkReply *reply = manager.post(request, data);
    connect(reply, &QNetworkReply::readyRead, this, &Login::readyRead);
}

void Login::readyRead() {

    qInfo() << "Ready Read";
    QNetworkReply *reply = qobject_cast<QNetworkReply*>(sender());
    QByteArray myData;

    if(reply) {
//        qInfo() << reply->readAll();
        myData = reply->readAll();
//        *arr = reply->readAll();
        emit(dataReadyRead(myData));
    }

}


void Login::authenticationRequired(QNetworkReply *reply, QAuthenticator *authenticator)
{
    Q_UNUSED(reply);
    Q_UNUSED(authenticator);
    qInfo() << "authenticationRequired";

}

void Login::encrypted(QNetworkReply *reply)
{
    Q_UNUSED(reply);
    qInfo() << "encrypted";

}

void Login::finished(QNetworkReply *reply)
{
     Q_UNUSED(reply);
     qInfo() << "finished";

}

