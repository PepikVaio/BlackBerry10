#include "MyCppObject.h"
#include <QtCore/qobject.h>

#include "MyCppObject.h"

MyCppObject::MyCppObject(QObject *parent)
    : QObject(parent)
{
    m_iValue = 10;
}

int MyCppObject::value()
{
    return m_iValue;
}
