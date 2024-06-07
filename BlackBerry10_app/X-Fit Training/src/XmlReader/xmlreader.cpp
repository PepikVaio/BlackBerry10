/*
 * xmlreader.cpp
 *
 *  Created on: 01. 07. 2020
 *      Author: pepikvaio
 */

#include "xmlreader.hpp"

XmlReader::XmlReader() {
}

XmlReader::~XmlReader() {
}

// Base path to the XML folder in your app
const QString XmlBasePath = QDir::currentPath() + "/app/native/assets/JSON + SQL + XML/";

QVariantList XmlReader::LoadXML(QString xmlPath, QString rowType, QString attribute){

	// Setup the full path to the XML file
	//	And open a QFile for use by the XmlStreamReader
	QString XmlPath = XmlBasePath + xmlPath;
	QFile* XFile = new QFile(XmlPath);
	XFile->open(QIODevice::ReadOnly | QIODevice::Text);

	// Initialize the XML reader with the XML file
	QXmlStreamReader Xml(XFile);

	// This is where the magic happens: Read the Attributes off of each entry entry and return a QList of Name/Value pairs
	QList< QVariantMap > Entries;
	while(!Xml.atEnd()){
		QXmlStreamReader::TokenType Token = Xml.readNext();

		if(Token == QXmlStreamReader::StartElement){
			if(Xml.name() == rowType) {
				// If this is an xml element that is named correctly, try to read the attributes
				QXmlStreamAttributes attributes = Xml.attributes();

				QVariantMap Entry;
				Entry[attribute] = attributes.value(attribute).toString();
				Entries.append(Entry);
			}
		}
	}

	// Cleanup file handle
	XFile->close();

	// Debug view
	//qDebug() << "stuff coming" << Entries;


	// Convert to QVariantList for transfer to QML
	QVariantList QVList;
	for(int i = 0; i < Entries.length(); i++){
		QVariantMap map;
		QVList << Entries[i];
	}

	return QVList;
}
