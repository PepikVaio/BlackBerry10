/*
 * timer.hpp
 *
 *  Created on: 17.10.2019
 *      Author: Wajsar Josef
 */

#ifndef TIMER_HPP_
#define TIMER_HPP_

#include <QObject>
#include <bb/cascades/CustomControl>

class QTimer;

class Timer: public bb::cascades::CustomControl
{
    Q_OBJECT

    Q_PROPERTY(bool active READ isActive NOTIFY activeChanged)
    Q_PROPERTY(int interval READ interval WRITE setInterval NOTIFY intervalChanged)

public:
    explicit Timer(QObject* parent = 0);

    bool isActive();

    int interval();

    void setInterval(int m_sec);

public slots:
    void start();
    void stop();

    signals:
    void activeChanged();
    void intervalChanged();
    void timeout();

private:
    QTimer* _timer;
};

#endif /* TIMER_HPP_ */
