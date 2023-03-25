/*
 * settings.hpp
 *
 *  Created on: 17.10.2019
 *      Author: Wajsar Josef
 */

#ifndef SETTINGS_HPP_
#define SETTINGS_HPP_

#include <QSettings>

class Settings: public QSettings
{
    Q_OBJECT
public:
    Settings(QObject *parent = 0);

    Q_INVOKABLE QVariant getValueFor(const QString & key, const QVariant & defaultValue);
    Q_INVOKABLE void saveValueFor(const QString & key, const QVariant & inputValue);
};

#endif /* SETTINGS_HPP_ */
