/*
 * display.cpp
 *
 *  Created on: 30.01.2021
 *      Author: Wajsar Josef
 */

#include "display.hpp"

Display::Display(QObject* parent) :
        QObject(parent)
{
}

Display::~Display()
{
}

bool Display::asClassic_Q5_Q10()
{
    bb::device::DisplayInfo display;
    if (display.pixelSize().width() == 720 && display.pixelSize().height() == 720) {
        return true;
    } else {
        return false;
    }
}

bool Display::asPassport()
{
    bb::device::DisplayInfo display;
    if (display.pixelSize().width() == 1440 && display.pixelSize().height() == 1440) {
        return true;
    } else {
        return false;
    }
}

bool Display::asZ10()
{
    bb::device::DisplayInfo display;
    if (display.pixelSize().width() == 768 && display.pixelSize().height() == 1280) {
        return true;
    } else {
        return false;
    }
}

bool Display::asZ3_Z30()
{
    bb::device::DisplayInfo display;
    if (display.pixelSize().width() == 720 && display.pixelSize().height() == 1280) {
        return true;
    } else {
        return false;
    }
}
