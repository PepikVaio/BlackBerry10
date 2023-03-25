#ifndef MYCPPOBJECT_H_
#define MYCPPOBJECT_H_

#include <QObject>
#include <QMetaType>


class MyCppObject : public  QObject
{
    Q_OBJECT
    Q_PROPERTY(int value READ value)
    //Q_PROPERTY(int value READ propertyImei)

public:
    MyCppObject(QObject *parent = 0);

    int value();

private:
    int m_iValue;
};

#endif /* MYCPPOBJECT_H_ */
