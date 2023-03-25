/*
 * hardware.cpp
 *
 *  Created on: 30.01.2021
 *      Author: Wajsar Josef
 */

#ifndef HARDWARE_HPP_
#define HARDWARE_HPP_

#include <QObject>
#include <bb/device/HardwareInfo>

class Hardware: public QObject
{
    Q_OBJECT

public:
    Hardware(QObject *parent = 0);
    virtual ~Hardware();

    Q_INVOKABLE QString modelName();
};

#endif /* HARDWARE_HPP_ */
