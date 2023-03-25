/*
 * javascript.cpp
 *
 *  Created on: 21.11.2020
 *      Author: Wajsar Josef
 */

#include "javascript.hpp"

JavaScript::JavaScript(QObject* parent) :
        QObject(parent)
{
}

JavaScript::~JavaScript()
{
}

QString JavaScript::function_CheckPermission_01()
{
    return "my data";
}
