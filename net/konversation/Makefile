# $OpenBSD: Makefile,v 1.6 2015/08/12 12:33:02 zhuk Exp $

CATEGORIES =	net
COMMENT =	IRC client for KDE 4
V =		1.5
DISTNAME =	konversation-$V
HOMEPAGE =	http://konversation.kde.org/
REVISION =	2

WANTLIB =  c m pthread
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSql lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kabc ${KDE4LIB}/kde3support ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/kemoticons ${KDE4LIB}/kidletime
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/knotifyconfig ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/kresources ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukutils ${KDE4LIB}/solid
WANTLIB += qca2 soprano

MASTER_SITES =	${MASTER_SITE_KDE:=stable/konversation/$V/src/}

# GPLv2+
PERMIT_PACKAGE_CDROM =          Yes

MODULES =	x11/kde4 multimedia/phonon devel/gettext lang/python
MODKDE4_USE =	pim

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	security/qca2

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/apps/konversation/scripting_support/python/konversation/

.include <bsd.port.mk>
