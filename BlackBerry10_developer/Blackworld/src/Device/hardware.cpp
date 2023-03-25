/*
 * hardware.cpp
 *
 *  Created on: 30.01.2021
 *      Author: Wajsar Josef
 */

#include "hardware.hpp"

Hardware::Hardware(QObject* parent) :
        QObject(parent)
{
}

Hardware::~Hardware()
{
}

QString Hardware::modelName()
{
    bb::device::HardwareInfo hardware;
        return hardware.modelName();
}
