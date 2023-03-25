/*
 * javascript.cpp
 *
 *  Created on: 21.11.2020
 *      Author: Wajsar Josef
 */

#ifndef JAVASCRIPT_HPP_
#define JAVASCRIPT_HPP_

#include <QObject>

class JavaScript: public QObject
{
    Q_OBJECT

public:
    JavaScript(QObject *parent = 0);
    virtual ~JavaScript();

    Q_INVOKABLE QString function_CheckPermission_01();
    //Q_INVOKABLE viod quit();
};

#endif /* JAVASCRIPT_HPP_ */
