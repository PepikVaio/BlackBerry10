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

#include "RequestHeaders.hpp"

#include "AppSettings.hpp"

#include <bb/data/JsonDataAccess>

#include <QDebug>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QNetworkRequest>
#include <QSslConfiguration>
#include <QUrl>

RequestHeaders::RequestHeaders(QObject* parent) :
        QObject(parent), m_networkAccessManager(new QNetworkAccessManager(this))
{
}

void RequestHeaders::getRequest()
{
    //const QUrl url("http://httpbin.org/get"); // OK
    //const QUrl url("https://jsonplaceholder.typicode.com/todos/1"); //OK
    ////const QUrl url("http://jsonplaceholder.typicode.com/todos/1"); //OK
    //const QUrl url("http://my-json-server.typicode.com/typicode/demo/db");
    //const QUrl url("https://my-json-server.typicode.com/pepikvaio/try/posts/1"); // OK :)
    const QUrl url("https://my-json-server.typicode.com/pepikvaio/try/db"); // NOK

    QNetworkRequest request(url);

    QNetworkReply* reply = m_networkAccessManager->get(request);
    bool ok = connect(reply, SIGNAL(finished()), this, SLOT(onGetReply()));
    Q_ASSERT(ok);
    Q_UNUSED(ok);
}

void RequestHeaders::onGetReply()
{
    QNetworkReply* reply = qobject_cast<QNetworkReply*>(sender());
    QString response;
    const QByteArray buffer(reply->readAll());

    bb::data::JsonDataAccess jda;
    const QVariant jsonva = jda.loadFromBuffer(buffer);
    const QMap<QString, QVariant> jsonreply = jsonva.toMap();

    QMap<QString, QVariant>::const_iterator it = jsonreply.find("posts");
        const QMap<QString, QVariant> headers = it.value().toMap();
        for (QMap<QString, QVariant>::const_iterator hdrIter = headers.begin();
                hdrIter != headers.end(); ++hdrIter) {
            if (hdrIter.value().toString().trimmed().isEmpty())
                continue;

            response += QString::fromLatin1("%1: %2\r\n").arg(hdrIter.key(),
                    hdrIter.value().toString());
        }

    for (it = jsonreply.begin(); it != jsonreply.end(); it++) {
        if (it.value().toString().trimmed().isEmpty())
            continue;
        response += QString::fromLatin1("%1: %2\r\n").arg(it.key(), it.value().toString());
    }

    reply->deleteLater();

    if (response.trimmed().isEmpty()) {
        response = tr("Unable to retrieve request headers");
    }

    emit complete(response);
}
