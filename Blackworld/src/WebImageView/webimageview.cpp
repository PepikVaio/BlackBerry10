/*
 * webimageview.cpp
 *
 *  Created on: 17.10.2019
 *      Author: Wajsar Josef
 */

#include "webimageview.hpp"
#include <bb/cascades/Image>

#include <QDir>
#include <QFile>
#include <QFileInfo>
#include <QNetworkReply>
#include <QtGui/QDesktopServices>

using namespace bb::cascades;

QNetworkAccessManager * WebImageView::mNetManager = new QNetworkAccessManager();
QNetworkDiskCache * WebImageView::mNetworkDiskCache = new QNetworkDiskCache();

WebImageView::WebImageView()
{
    // Initialize network cache
    mNetworkDiskCache->setCacheDirectory(
            QDesktopServices::storageLocation(QDesktopServices::CacheLocation));

    // Set cache in manager
    mNetManager->setCache(mNetworkDiskCache);

    // Set defaults
    mLoading = 0;
}

const QUrl& WebImageView::url() const
{
    return mUrl;
}

double WebImageView::loading() const
{
    return mLoading;
}

void WebImageView::clearCache()
{
    mNetworkDiskCache->clear();
}

void WebImageView::setUrl(const QUrl& url)
{
    // Variables
    mUrl = url;
    mLoading = 0;

    // Reset the image
    resetImage();

    // Create request
    QNetworkRequest request;
    request.setAttribute(QNetworkRequest::CacheLoadControlAttribute, QNetworkRequest::PreferCache);
    request.setUrl(url);

    // Create reply
    QNetworkReply * reply = mNetManager->get(request);

    // Connect to signals
    QObject::connect(reply, SIGNAL(finished()), this, SLOT(imageLoaded()));
    QObject::connect(reply, SIGNAL(downloadProgress(qint64, qint64)), this,
            SLOT(dowloadProgressed(qint64,qint64)));

    emit urlChanged();
}

void WebImageView::dowloadProgressed(qint64 bytes, qint64 total)
{
    mLoading = double(bytes) / double(total);

    emit loadingChanged();
}

void WebImageView::imageLoaded()
{
    // Get reply
    QNetworkReply * reply = qobject_cast<QNetworkReply*>(sender());
    if (reply->url() != mUrl)
        return;
    if (reply->error() == QNetworkReply::NoError) {
        if (isARedirectedUrl(reply)) {
            setURLToRedirectedUrl(reply);
            return;
        } else {
            QByteArray imageData = reply->readAll();
            setImage(Image(imageData));

            emit loadingFinished();
        }
    }

    // Memory management
    reply->deleteLater();
}

bool WebImageView::isARedirectedUrl(QNetworkReply *reply)
{
    QUrl redirection = reply->attribute(QNetworkRequest::RedirectionTargetAttribute).toUrl();
    return !redirection.isEmpty();
}

void WebImageView::setURLToRedirectedUrl(QNetworkReply *reply)
{
    QUrl redirectionUrl = reply->attribute(QNetworkRequest::RedirectionTargetAttribute).toUrl();
    QUrl baseUrl = reply->url();
    QUrl resolvedUrl = baseUrl.resolved(redirectionUrl);

    setUrl(resolvedUrl.toString());
}
