/* Copyright (c) 2012, 2013  BlackBerry Limited.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "ExternalIP.hpp"

#include "AppSettings.hpp"

#include <bb/data/JsonDataAccess>

#include <QDebug>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QSettings>
#include <QSslConfiguration>
#include <QUrl>
#include <bb/data/JsonDataAccess>

ExternalIP::ExternalIP(QObject* parent) :
        QObject(parent), m_networkAccessManager(new QNetworkAccessManager(this))
{
}

void ExternalIP::getIP()
{
    const QUrl url("http://httpbin.org/ip");
    //const QUrl url("http://my-json-server.typicode.com/pepikvaio/try/db");

    QNetworkRequest request(url);
    QNetworkReply* reply = m_networkAccessManager->get(request);

    bool ok = connect(reply, SIGNAL(finished()), this, SLOT(onGetReply()));
    Q_ASSERT(ok);
    Q_UNUSED(ok);
}

void ExternalIP::onGetReply()
{
    QNetworkReply* reply = qobject_cast<QNetworkReply*>(sender());
    QString response;

    if (reply) {
        if (reply->error() == QNetworkReply::NoError) {
            const QByteArray buffer(reply->readAll());

            bb::data::JsonDataAccess jda;
            const QVariant jsonva = jda.loadFromBuffer(buffer);
            const QMap<QString, QVariant> externalip = jsonva.toMap();

            foreach (const QVariant &value, externalip){
            response += value.toString();

            qDebug() << jsonva;
        }
    } else {
        const int httpStatus = reply->attribute(QNetworkRequest::HttpStatusCodeAttribute).toInt();
        response = tr("Http Error: %1").arg(httpStatus);
    }

    reply->deleteLater();
}

    if (response.trimmed().isEmpty()) {
        response = tr("Unable to retrieve ip address");
    }

    emit complete(response);
}

