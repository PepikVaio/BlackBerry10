#include "AntiPiracy.h"

#include <bb/cascades/Application>
#include <bb/device/HardwareInfo>

using namespace bb::cascades;
using namespace bb::system;

AntiPiracy::AntiPiracy(QObject *_parent) :
        QObject(),
        compatibleImei(false)
{
}

void AntiPiracy::checkAccess(AbstractPane* root)
{
    if (compatibleImei == false) {
        QNetworkAccessManager *nam = new QNetworkAccessManager(this);
        QNetworkReply *reply = nam->get(QNetworkRequest());
        connect(reply, SIGNAL(finished()), this, SLOT(onAccessDenied()));
    }
}

void AntiPiracy::onAccessDenied()
{
    systemToast_01 = new SystemToast(this);
    systemToast_01->setBody(tr("Your (IMEI) device number does not have access to the application, please contact the developer."));
    systemToast_01->show();

    connect(systemToast_01,
            SIGNAL(finished(bb::system::SystemUiResult::Type)), this,
            SLOT(onSystemToastFinished_01()));
}

void AntiPiracy::onSystemToastFinished_01()
{
    systemToast_02 = new SystemToast(this);
    systemToast_02->setBody(tr("The application will be soon terminated."));
    systemToast_02->button()->setLabel(tr("OK"));
    systemToast_02->show();

    bool ok = connect(systemToast_02, SIGNAL(finished(bb::system::SystemUiResult::Type)),
            Application::instance(), SLOT(quit()));
}
