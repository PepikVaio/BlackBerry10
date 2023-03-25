/*
 * fileSaver.h
 *
 *  Created on: 2014-11-25
 *      Author: Roger
 */

#ifndef FILESAVER_H_
#define FILESAVER_H_

#include <QObject>

class FileSaver : public QObject
{
    Q_OBJECT
public:
    FileSaver();
    virtual ~FileSaver();

    Q_INVOKABLE bool save(QString text);
    Q_INVOKABLE bool save(QString text, QString fileName);
};

#endif /* FILESAVER_H_ */
