/****************************************************************************
** Meta object code from reading C++ file 'webimageview.hpp'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/WebImageView/webimageview.hpp"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'webimageview.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_WebImageView[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       2,   49, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: signature, parameters, type, tag, flags
      14,   13,   13,   13, 0x05,
      31,   13,   13,   13, 0x05,
      49,   13,   13,   13, 0x05,

 // slots: signature, parameters, type, tag, flags
      62,   13,   13,   13, 0x0a,
      79,   75,   13,   13, 0x0a,
      94,   92,   13,   13, 0x08,
     127,   13,   13,   13, 0x08,

 // properties: name, type, flags
      75,  141, 0x11495103,
     152,  146, 0x87495001,

 // properties: notify_signal_id
       2,
       0,

       0        // eod
};

static const char qt_meta_stringdata_WebImageView[] = {
    "WebImageView\0\0loadingChanged()\0"
    "loadingFinished()\0urlChanged()\0"
    "clearCache()\0url\0setUrl(QUrl)\0,\0"
    "dowloadProgressed(qint64,qint64)\0"
    "imageLoaded()\0QUrl\0float\0loading\0"
};

void WebImageView::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        WebImageView *_t = static_cast<WebImageView *>(_o);
        switch (_id) {
        case 0: _t->loadingChanged(); break;
        case 1: _t->loadingFinished(); break;
        case 2: _t->urlChanged(); break;
        case 3: _t->clearCache(); break;
        case 4: _t->setUrl((*reinterpret_cast< const QUrl(*)>(_a[1]))); break;
        case 5: _t->dowloadProgressed((*reinterpret_cast< qint64(*)>(_a[1])),(*reinterpret_cast< qint64(*)>(_a[2]))); break;
        case 6: _t->imageLoaded(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData WebImageView::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject WebImageView::staticMetaObject = {
    { &bb::cascades::ImageView::staticMetaObject, qt_meta_stringdata_WebImageView,
      qt_meta_data_WebImageView, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &WebImageView::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *WebImageView::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *WebImageView::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_WebImageView))
        return static_cast<void*>(const_cast< WebImageView*>(this));
    typedef bb::cascades::ImageView QMocSuperClass;
    return QMocSuperClass::qt_metacast(_clname);
}

int WebImageView::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    typedef bb::cascades::ImageView QMocSuperClass;
    _id = QMocSuperClass::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    }
#ifndef QT_NO_PROPERTIES
      else if (_c == QMetaObject::ReadProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QUrl*>(_v) = url(); break;
        case 1: *reinterpret_cast< float*>(_v) = loading(); break;
        }
        _id -= 2;
    } else if (_c == QMetaObject::WriteProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: setUrl(*reinterpret_cast< QUrl*>(_v)); break;
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
void WebImageView::loadingChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}

// SIGNAL 1
void WebImageView::loadingFinished()
{
    QMetaObject::activate(this, &staticMetaObject, 1, 0);
}

// SIGNAL 2
void WebImageView::urlChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 2, 0);
}
QT_END_MOC_NAMESPACE
