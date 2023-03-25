/*
 * sqldatabase.cpp
 *
 *  Created on: 19.07.2020
 *      Author: Wajsar Josef
 */

#include "sqldatabase.hpp"

int const SqlDatabase::LOAD_EXECUTION = 0;

SqlDatabase::SqlDatabase(QObject *parent) :
        QObject(parent)
{
}

SqlDatabase::~SqlDatabase()
{
    delete mSqlConnector;
}

QString SqlDatabase::query()
{
    return mQuery;
}

QString SqlDatabase::source()
{
    return mSource;
}

void SqlDatabase::setQuery(const QString query)
{
    if (mQuery.compare(query) != 0) {
        mQuery = query;
        emit queryChanged(mQuery);
    }
}

void SqlDatabase::setSource(const QString source)
{
    if (mSource.compare(source) != 0) {
        // Copy the file to the data folder to get read and write access.
        copyFileToDataFolder(source);
        mSource = source;
        emit sourceChanged(mSource);
    }
}

void SqlDatabase::execute(const QString& query, const QVariantMap &valuesByName, int id)
{
    if (checkConnection()) {
        mSqlConnector->execute(query, valuesByName, id);
    }
}

void SqlDatabase::load()
{
    if (mQuery.isEmpty() == false) {
        if (checkConnection()) {
            mSqlConnector->execute(mQuery, LOAD_EXECUTION);
        }
    }
}

void SqlDatabase::onLoadAsyncResultData(const bb::data::DataAccessReply& replyData)
{
    if (replyData.hasError()) {
        qWarning() << "onLoadAsyncResultData: " << replyData.id() << ", SQL error: " << replyData;
    } else {

        if (replyData.id() == LOAD_EXECUTION) {
            // The reply belongs to the execution of the query property of the data source
            // Emit the the data loaded signal so that the model can be populated.
            QVariantList resultList = replyData.result().value<QVariantList>();
            emit dataLoaded(resultList);
        } else {
            // Forward the reply signal.
            emit reply(replyData);
        }
    }
}

void SqlDatabase::copyFileToDataFolder(const QString fileName)
{
    // Since we need read and write access to the file, it has
    // to be moved to a folder where we have access to it. First,
    // we check if the file already exists (previously copied).
    QString dataFolder = QDir::homePath();
    QString newFileName = dataFolder + "/" + fileName;
    QFile newFile(newFileName);

    if (!newFile.exists()) {
        // If the file is not already in the data folder, we copy it from the
        // assets folder (read only) to the data folder (read and write).
        QString appFolder(QDir::homePath());
        appFolder.chop(4);
        QString originalFileName = appFolder + "app/native/assets/" + fileName;
        QFile originalFile(originalFileName);

        if (originalFile.exists()) {
            // Create sub folders if any creates the SQL folder for a file path like e.g. "../SQL/Database.db"
            QFileInfo fileInfo(newFileName);
            QDir().mkpath(fileInfo.dir().path());

            if (!originalFile.copy(newFileName)) {
                qDebug() << "Failed to copy file to path: " << newFileName;
            }
        } else {
            qDebug() << "Failed to copy file data base file does not exists.";
        }
    }

    mSourceInDataFolder = newFileName;
}

bool SqlDatabase::checkConnection()
{
    if (mSqlConnector) {
        return true;
    } else {
        QFile newFile(mSourceInDataFolder);

        if (newFile.exists()) {

            // Remove the old connection if it exists
            if (mSqlConnector) {
                disconnect(mSqlConnector, SIGNAL(reply(const bb::data::DataAccessReply&)), this,
                        SLOT(onLoadAsyncResultData(const bb::data::DataAccessReply&)));
                delete mSqlConnector;
            }

            // Set up a connection to the data base
            mSqlConnector = new SqlConnection(mSourceInDataFolder, "connect");

            // Connect to the reply function
            connect(mSqlConnector, SIGNAL(reply(const bb::data::DataAccessReply&)), this,
                    SLOT(onLoadAsyncResultData(const bb::data::DataAccessReply&)));

            return true;

        } else {
            qDebug()
                    << "SqlDatabase::checkConnection Failed to load data base, file does not exist.";
        }
    }
    return false;
}
