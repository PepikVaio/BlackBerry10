/*
 * device.cpp
 *
 *  Created on: 20.11.2020
 *      Author: Wajsar Josef
 */

#ifndef DEVICE_HPP_
#define DEVICE_HPP_

#include <QObject>
#include <bb/device/DisplayInfo>
#include <bb/device/HardwareInfo>

class Device: public QObject
{
    Q_OBJECT

public:
    Device(QObject *parent = 0);
    virtual ~Device();

    Q_INVOKABLE bool isPassport();
    Q_INVOKABLE bool isQ10_Q5_Classic();
    Q_INVOKABLE bool isZ10();
    Q_INVOKABLE bool isZ30_Z3();

    Q_INVOKABLE QString getImei();
};

#endif /* DEVICE_HPP_ */
