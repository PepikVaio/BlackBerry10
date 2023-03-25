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

// Add for IdDevice, SqlDatabase, Timer, Settings, WebImageView, XmlReader
#include <bb/device/DisplayInfo.hpp>
#include "SqlDatabase/sqldatabase.hpp"
#include "Timer/timer.hpp"
#include "Settings/settings.hpp"
#include "WebImageView/webimageview.hpp"
#include "XmlReader/xmlreader.hpp"
// End for IdDevice, SqlDatabase, Timer, Settings, WebImageView, XmlReader

using namespace bb::cascades;

// Add for SqlDatabase
ApplicationUI::ApplicationUI()
{
}

ApplicationUI::~ApplicationUI()
{
}

void ApplicationUI::onStart()
{
    DataSource::registerQmlTypes();

    if (!loadQMLScene()) {
        qWarning("Failed to load QML scene.");
    }
}

// Remove because of SqlDatabase
//ApplicationUI::ApplicationUI() :
bool ApplicationUI::loadQMLScene()
// End for SqlDatabase
      // Remove because of SqlDatabase
      //QObject()
{
    // Add for SqlDatabase, WebImageView, Timer
    // Register the SQL data source, so that it can be set up in QML
    qmlRegisterType <SqlDatabase> ("custom.SqlDatabase", 1, 0, "SqlDatabase");
    qmlRegisterType<WebImageView>("custom.WebImageView", 1, 0, "WebImageView");
    qmlRegisterType<Timer>("custom.Timer", 1, 0, "Timer");
    // End for SqlDatabase, WebImageView, Timer

    // prepare the localization
    m_pTranslator = new QTranslator(this);
    m_pLocaleHandler = new LocaleHandler(this);

    // Add for SqlDatabase
    // Connect to the LocaleHandlers systemLanguaged change signal, this will tell the application when it is time to load a new set of language strings.
    connect(m_pLocaleHandler, SIGNAL(systemLanguageChanged()), SLOT(onSystemLanguageChanged()));
    // End for SqlDatabase

    bool res = QObject::connect(m_pLocaleHandler, SIGNAL(systemLanguageChanged()), this, SLOT(onSystemLanguageChanged()));
    // This is only available in Debug builds
    Q_ASSERT(res);
    // Since the variable is not used in the app, this is added to avoid a
    // compiler warning
    Q_UNUSED(res);

    // initial load
    onSystemLanguageChanged();

    // Create scene document from main.qml asset, the parent is set
    // to ensure the document gets destroyed properly at shut down.
    QmlDocument *qml = QmlDocument::create("asset:///main.qml").parent(this);

    // Add for IdDevice, Settings, XmlReader
    qml->setContextProperty("_device", this);
    qml->setContextProperty("_app", new Settings());
    // Make an instance of the XML Reader class so it is available to QML pages
    XmlReader *xml = new XmlReader();
    qml->setContextProperty("_xml", xml);
    // END for IdDevice, Settings, XmlReader

    // Add for SqlDatabase
    if (!qml->hasErrors()) {
    // End for SqlDatabase

        // Create root object for the UI
        AbstractPane *root = qml->createRootObject<AbstractPane>();

        // Set created root object as the application scene
        Application::instance()->setScene(root);

        // Add for SqlDatabase
        return true;
    }

    return false;
    // End for SqlDatabase
}

void ApplicationUI::onSystemLanguageChanged()
{
    QCoreApplication::instance()->removeTranslator(m_pTranslator);
    // Initiate, load and install the application translation files.
    QString locale_string = QLocale().name();
    QString file_name = QString("leia_remote_for_kodi_%1").arg(locale_string);
    if (m_pTranslator->load(file_name, "app/native/qm")) {
        QCoreApplication::instance()->installTranslator(m_pTranslator);
    }
}

// ADD for IdDevice
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
// End for IdDevice
