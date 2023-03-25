/*
 * webimageview.hpp
 *
 *  Created on: 17. 10. 2019
 *      Author: pepikvaio
 */

#ifndef WEBIMAGEVIEW_HPP_
#define WEBIMAGEVIEW_HPP_

#include <bb/cascades/ImageView>

#include <QNetworkAccessManager>
#include <QNetworkDiskCache>
#include <QUrl>

using namespace bb::cascades;

class WebImageView: public bb::cascades::ImageView {
    Q_OBJECT
    Q_PROPERTY (QUrl url READ url WRITE setUrl NOTIFY urlChanged)
    Q_PROPERTY (float loading READ loading NOTIFY loadingChanged)

public:
    WebImageView();
    const QUrl& url() const;
    double loading() const;

    public Q_SLOTS:
    void setUrl(const QUrl& url);
    void clearCache();

    private Q_SLOTS:
    void imageLoaded();
    void dowloadProgressed(qint64,qint64);

    signals:
    void urlChanged();
    void loadingChanged();
    void loadingFinished();

private:
    static QNetworkAccessManager * mNetManager;
    static QNetworkDiskCache * mNetworkDiskCache;
    QUrl mUrl;
    float mLoading;

    bool isARedirectedUrl(QNetworkReply *reply);
    void setURLToRedirectedUrl(QNetworkReply *reply);
};

#endif /* WEBIMAGEVIEW_HPP_ */
