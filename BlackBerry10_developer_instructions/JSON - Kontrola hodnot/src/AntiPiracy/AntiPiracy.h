#ifndef ANTIPIRACY_H_
#define ANTIPIRACY_H_

#include <QObject>
#include <bb/cascades/AbstractPane>
#include <bb/system/SystemToast>

class AntiPiracy: public QObject
{
    Q_OBJECT

public:
    AntiPiracy(QObject *_parent = 0);
    virtual ~AntiPiracy()
    {
    }

    void checkAccess(bb::cascades::AbstractPane* root);

private Q_SLOTS:
    void onSystemToastFinished_01();

private slots:
    void onAccessDenied();

private:
    bb::cascades::AbstractPane* m_normalRoot;
    bb::system::SystemToast* systemToast_01;
    bb::system::SystemToast* systemToast_02;

    bool compatibleImei;
};

#endif /* ANTIPIRACY_H_ */
