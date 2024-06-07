/*
 * sqldatabase.hpp
 *
 *  Created on: 19.07.2020
 *      Author: Wajsar Josef
 */

#ifndef SQLDATABASE_HPP_
#define SQLDATABASE_HPP_

#include <QObject>
#include <bb/data/DataSource>
#include <bb/data/SqlConnection>

using namespace bb::data;

namespace bb
{
    namespace data
    {
        class SqlConnection;
    }
}

class SqlDatabase: public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString query READ query WRITE setQuery NOTIFY queryChanged)
    Q_PROPERTY(QString source READ source WRITE setSource NOTIFY sourceChanged)

public:
    SqlDatabase(QObject *parent = 0);
    ~SqlDatabase();

    QString query();
    QString source();

    void setQuery(const QString query);
    void setSource(const QString source);

    Q_INVOKABLE void execute(const QString& query, const QVariantMap &valuesByName, int id = 1);
    Q_INVOKABLE void load();

    signals:
    void dataLoaded(const QVariant &data);
    void queryChanged(QString query);
    void reply(const bb::data::DataAccessReply &replyData);
    void sourceChanged(QString source);

private slots:
    void onLoadAsyncResultData(const bb::data::DataAccessReply& reply);

private:
    void copyFileToDataFolder(const QString fileName);
    bool checkConnection();

    QString mQuery;
    QString mSource;
    QString mSourceInDataFolder;

    DataSource *mDataSource;
    SqlConnection *mSqlConnector;

    static int const LOAD_EXECUTION;
};

#endif /* SQLDATABASE_HPP_ */
