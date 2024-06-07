/*
 * settings.cpp
 *
 *  Created on: 17. 10. 2019
 *      Author: pepikvaio
 */

#include "settings.hpp"

Settings::Settings(QObject *parent)
    : QSettings(parent)
{
}

QVariant Settings::getValueFor(const QString & key, const QVariant & defaultValue)
{
    return QSettings::value(key, defaultValue);
}

void Settings::saveValueFor(const QString & key, const QVariant & inputValue)
{
    QSettings::setValue(key, inputValue);
}
