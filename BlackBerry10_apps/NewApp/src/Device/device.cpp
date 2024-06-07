/*
 * device.cpp
 *
 *  Created on: 20.11.2020
 *      Author: Wajsar Josef
 */

#include "device.hpp"

Device::Device(QObject* parent) :
        QObject(parent)
{
}

Device::~Device()
{
}

bool Device::isPassport()
{
    bb::device::DisplayInfo display;
    if (display.pixelSize().width() == 1440 && display.pixelSize().height() == 1440) {
        return true;
    } else {
        return false;
    }
}

bool Device::isQ10_Q5_Classic()
{
    bb::device::DisplayInfo display;
    if (display.pixelSize().width() == 720 && display.pixelSize().height() == 720) {
        return true;
    } else {
        return false;
    }
}

bool Device::isZ10()
{
    bb::device::DisplayInfo display;
    if (display.pixelSize().width() == 768 && display.pixelSize().height() == 1280) {
        return true;
    } else {
        return false;
    }
}

bool Device::isZ30_Z3()
{
    bb::device::DisplayInfo display;
    if (display.pixelSize().width() == 720 && display.pixelSize().height() == 1280) {
        return true;
    } else {
        return false;
    }
}
