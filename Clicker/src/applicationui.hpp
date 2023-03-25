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

#ifndef ApplicationUI_HPP_
#define ApplicationUI_HPP_

#include <QObject>

// Add for SqlDatabase
#include <bb/cascades/Application>
using namespace bb::cascades;
// End for SqlDatabase

namespace bb
{
    namespace cascades
    {
        class LocaleHandler;
    }
}

class QTranslator;

/*!
 * @brief Application UI object
 *
 * Use this object to create and init app UI, to create context objects, to register the new meta types etc.
 */
class ApplicationUI : public QObject
{
Q_OBJECT
public:
    ApplicationUI();
    // Add for SqlDatabase
    // This is our constructor that sets up the recipe.
    // Remove bacause of SqlDatabase
    //virtual ~ApplicationUI() {}
    ~ApplicationUI();

    // This is the application start-up function that
    // initiates the database helper object and load the QML scene
    void onStart();
    // End for SqlDatabase

    // ADD for IdDevice
    Q_INVOKABLE
    bool isZ30_Z3();
    Q_INVOKABLE
    bool isZ10();
    Q_INVOKABLE
    bool isQ10_Q5_Classic();
    Q_INVOKABLE
    bool isPassport();
    // END for IdDevice

// Add for SqlDatabase
// Remove bacause of SqlDatabase
//private slots:
private:
    // Remove bacause of SqlDatabase
    //void onSystemLanguageChanged();
    Q_SLOT void onSystemLanguageChanged();
// End for SqlDatabase
private:
    QTranslator* m_pTranslator;
    bb::cascades::LocaleHandler* m_pLocaleHandler;

    // Add for SqlDatabase
    // This function loads the QML and sets the application scene.
    // @return True if all set up was successful, otherwise false is returned.
    bool loadQMLScene();
    // End for SqlDatabase
};

#endif /* ApplicationUI_HPP_ */
