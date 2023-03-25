/*
 * display.cpp
 *
 *  Created on: 30.01.2021
 *      Author: Wajsar Josef
 */

#ifndef DISPLAY_HPP_
#define DISPLAY_HPP_

#include <QObject>
#include <bb/device/DisplayInfo>

class Display: public QObject
{
    Q_OBJECT

public:
    Display(QObject *parent = 0);
    virtual ~Display();

    Q_INVOKABLE bool asClassic_Q5_Q10();
    Q_INVOKABLE bool asPassport();
    Q_INVOKABLE bool asZ10();
    Q_INVOKABLE bool asZ3_Z30();
};

#endif /* DISPLAY_HPP_ */
