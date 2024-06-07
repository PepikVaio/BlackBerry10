/*
 * FileSaver.cpp
 *
 *  Created on: 2014-11-25
 *      Author: Roger
 */

#include <QObject>
#include <src/FileSaver/FileSaver.h>
#include <QFile>
#include <QDir>
#include <QDateTime>
#include <QDebug>

FileSaver::FileSaver()
{
    // TODO Auto-generated constructor stub

}

FileSaver::~FileSaver()
{
    // TODO Auto-generated destructor stub
}

bool FileSaver::save(QString text) {
    // Save the text to a random file
    QFile thisFile("/accounts/1000/shared/documents/" + QDateTime::currentDateTime().toString("yy-MM-dd-hh:mm:ss") + ".txt");
    qDebug() << thisFile.fileName();
    if (thisFile.open(QIODevice::ReadWrite))
    {
        // Write to the file
        thisFile.write(text.toAscii());
        thisFile.flush();
        thisFile.close();
        return true;
    }
    return false;
}

bool FileSaver::save(QString text, QString fileName) {
    // Save the text to a file
    QFile thisFile("/accounts/1000/shared/documents/" + fileName);
    qDebug() << thisFile.fileName();
    if (thisFile.open(QIODevice::ReadWrite))
    {
        // Write to the file
        thisFile.write(text.toAscii());
        thisFile.flush();
        thisFile.close();
        return true;
    }
    return false;
}
