/*
 * Copyright (c) 2011-2015 BlackBerry Limited.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "applicationui.hpp"

#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>
#include <bb/cascades/LocaleHandler>

// ADD for IDDevice
#include <bb/device/DisplayInfo.hpp>
// ADD for QTimer
#include "Timer/timer.hpp"
// ADD for QSettings
#include "Settings/settings.hpp"
// ADD for WebImageView
#include "WebImageView/webimageview.hpp"
// End for IDDevice, QTimer, QSettings, WebImageView

using namespace bb::cascades;

ApplicationUI::ApplicationUI() :
        QObject()
{

    // ADD for WebImageView
    qmlRegisterType<WebImageView>("custom.WebImageView", 1, 0, "WebImageView");
    // End for WebImageView

    // prepare the localization
    m_pTranslator = new QTranslator(this);
    m_pLocaleHandler = new LocaleHandler(this);

    bool res = QObject::connect(m_pLocaleHandler, SIGNAL(systemLanguageChanged()), this, SLOT(onSystemLanguageChanged()));
    // This is only available in Debug builds
    Q_ASSERT(res);
    // Since the variable is not used in the app, this is added to avoid a
    // compiler warning
    Q_UNUSED(res);

    // initial load
    onSystemLanguageChanged();

    // ADD for QTimer
    qmlRegisterType<Timer>("custom.Timer", 1, 0, "Timer");
    // End for QTimer


    // Create scene document from main.qml asset, the parent is set
    // to ensure the document gets destroyed properly at shut down.
    QmlDocument *qml = QmlDocument::create("asset:///main.qml").parent(this);

    // ADD for QSettings
    qml->setContextProperty("_app", new Settings());
    // End for QSettings

    // ADD for IDDevice
    qml->setContextProperty("_device", this);
    // END for IDDevice

    // Create root object for the UI
    AbstractPane *root = qml->createRootObject<AbstractPane>();

    // Set created root object as the application scene
    Application::instance()->setScene(root);
}

void ApplicationUI::onSystemLanguageChanged()
{
    QCoreApplication::instance()->removeTranslator(m_pTranslator);
    // Initiate, load and install the application translation files.
    QString locale_string = QLocale().name();
    QString file_name = QString("training_plan_%1").arg(locale_string);
    if (m_pTranslator->load(file_name, "app/native/qm")) {
        QCoreApplication::instance()->installTranslator(m_pTranslator);
    }
}

// ADD for IDDevice
bool ApplicationUI::isZ30_Z3()
{
    bb::device::DisplayInfo display;
    if (display.pixelSize().width() == 720 && display.pixelSize().height() == 1280) {
        return true;
    } else {
        return false;
    }
}

bool ApplicationUI::isZ10()
{
    bb::device::DisplayInfo display;
    if (display.pixelSize().width() == 768 && display.pixelSize().height() == 1280) {
        return true;
    } else {
        return false;
    }
}

bool ApplicationUI::isQ10_Q5_Classic()
{
    bb::device::DisplayInfo display;
    if (display.pixelSize().width() == 720 && display.pixelSize().height() == 720) {
        return true;
    } else {
        return false;
    }
}

bool ApplicationUI::isPassport()
{
    bb::device::DisplayInfo display;
    if (display.pixelSize().width() == 1440 && display.pixelSize().height() == 1440) {
        return true;
    } else {
        return false;
    }
}
// END for IDDevice
