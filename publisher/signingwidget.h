/*
 *  Copyright (C) 2010 by Diego '[Po]lentino' Casella <polentino911@gmail.com>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful, but
 *  WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *  General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software Foundation
 *  Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 */

#ifndef SIGNINGWIDGET_H
#define SIGNINGWIDGET_H

#include <QtCrypto/QtCrypto>
#include <QWidget>

class QTreeWidget;
class QPushButton;


class SigningWidget : public QWidget
{
    Q_OBJECT

public:
    SigningWidget();

private:
    QTreeWidget *m_treeWidget;
    QPushButton *m_createKeyButton;
    QPushButton *m_deleteKeyButton;
    QCA::Initializer init;
    QCA::KeyStoreManager m_keyStoreManager;
    QCA::KeyStore *m_userKeyStore;

private Q_SLOTS:
    void loadKeys();
};

#endif // SIGNINGWIDGET_H