/****************************************************************************
** Meta object code from reading C++ file 'sqldatabase.hpp'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/SqlDatabase/sqldatabase.hpp"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'sqldatabase.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_SqlDatabase[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       2,   54, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: signature, parameters, type, tag, flags
      18,   13,   12,   12, 0x05,
      45,   39,   12,   12, 0x05,
      77,   67,   12,   12, 0x05,
     117,  110,   12,   12, 0x05,

 // slots: signature, parameters, type, tag, flags
     146,  140,   12,   12, 0x08,

 // methods: signature, parameters, type, tag, flags
     217,  195,   12,   12, 0x02,
     269,  250,   12,   12, 0x22,
     298,   12,   12,   12, 0x02,

 // properties: name, type, flags
      39,  305, 0x0a495103,
     110,  305, 0x0a495103,

 // properties: notify_signal_id
       1,
       3,

       0        // eod
};

static const char qt_meta_stringdata_SqlDatabase[] = {
    "SqlDatabase\0\0data\0dataLoaded(QVariant)\0"
    "query\0queryChanged(QString)\0replyData\0"
    "reply(bb::data::DataAccessReply)\0"
    "source\0sourceChanged(QString)\0reply\0"
    "onLoadAsyncResultData(bb::data::DataAccessReply)\0"
    "query,valuesByName,id\0"
    "execute(QString,QVariantMap,int)\0"
    "query,valuesByName\0execute(QString,QVariantMap)\0"
    "load()\0QString\0"
};

void SqlDatabase::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        SqlDatabase *_t = static_cast<SqlDatabase *>(_o);
        switch (_id) {
        case 0: _t->dataLoaded((*reinterpret_cast< const QVariant(*)>(_a[1]))); break;
        case 1: _t->queryChanged((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 2: _t->reply((*reinterpret_cast< const bb::data::DataAccessReply(*)>(_a[1]))); break;
        case 3: _t->sourceChanged((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 4: _t->onLoadAsyncResultData((*reinterpret_cast< const bb::data::DataAccessReply(*)>(_a[1]))); break;
        case 5: _t->execute((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QVariantMap(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3]))); break;
        case 6: _t->execute((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QVariantMap(*)>(_a[2]))); break;
        case 7: _t->load(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData SqlDatabase::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject SqlDatabase::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_SqlDatabase,
      qt_meta_data_SqlDatabase, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &SqlDatabase::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *SqlDatabase::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *SqlDatabase::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_SqlDatabase))
        return static_cast<void*>(const_cast< SqlDatabase*>(this));
    return QObject::qt_metacast(_clname);
}

int SqlDatabase::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 8)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    }
#ifndef QT_NO_PROPERTIES
      else if (_c == QMetaObject::ReadProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = query(); break;
        case 1: *reinterpret_cast< QString*>(_v) = source(); break;
        }
        _id -= 2;
    } else if (_c == QMetaObject::WriteProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: setQuery(*reinterpret_cast< QString*>(_v)); break;
        case 1: setSource(*reinterpret_cast< QString*>(_v)); break;
        }
        _id -= 2;
    } else if (_c == QMetaObject::ResetProperty) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 2;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void SqlDatabase::dataLoaded(const QVariant & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void SqlDatabase::queryChanged(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void SqlDatabase::reply(const bb::data::DataAccessReply & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void SqlDatabase::sourceChanged(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}
QT_END_MOC_NAMESPACE
