/*
 * xmlreader.hpp
 *
 *  Created on: 01. 07. 2020
 *      Author: pepikvaio
 */

#ifndef XMLREADER_HPP_
#define XMLREADER_HPP_

#include <bb/cascades/Application>
#include <QXmlStreamReader>
using namespace bb::cascades;

class XmlReader : public QObject{
	Q_OBJECT
public:
	XmlReader();
	virtual ~XmlReader();

	Q_INVOKABLE
	QVariantList LoadXML(QString xmlPath, QString entryType, QString attribute);
};

#endif /* XMLREADER_HPP_ */
