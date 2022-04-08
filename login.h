#ifndef LOGIN_H
#define LOGIN_H

#endif // LOGIN_H
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QObject>
#include <QNetworkRequest>
#include <QAuthenticator>
#include <QNetworkProxy>
#include <QByteArray>

class Login : public QObject {

    Q_OBJECT;

  public:
    explicit Login (QObject *parent = nullptr);

  signals:
    void dataReadyRead(QByteArray myData);

   public slots:

    void get(QString location);
    void post(QString location, QByteArray data);

 private slots:
    void readyRead();
    void	authenticationRequired(QNetworkReply *reply, QAuthenticator *authenticator);
    void	encrypted(QNetworkReply *reply);
    void	finished(QNetworkReply *reply);

private:
    QNetworkAccessManager manager;

};
