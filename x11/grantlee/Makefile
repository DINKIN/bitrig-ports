# $OpenBSD: Makefile,v 1.7 2016/03/18 23:12:21 naddy Exp $

COMMENT =		template and text document library for Qt4
PKG_VERSION =		0.5.1
REVISION =		0
PLIST_VERSION =		${PKG_VERSION:R}
DISTNAME =		grantlee-${PKG_VERSION}
CATEGORIES =		devel x11
HOMEPAGE =		https://github.com/steveire/grantlee

PORTROACH =		limit:^[0-4].*

SHARED_LIBS =		grantlee_core		1.0
SHARED_LIBS +=		grantlee_gui		1.0

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://downloads.grantlee.org/ \
			http://www.loegria.net/grantlee/

WANTLIB =		c m
WANTLIB +=		lib/qt4/QtGui lib/qt4/QtScript
WANTLIB +=		c++ c++abi

MODULES =		devel/cmake x11/qt4

TEST_DEPENDS =		${BUILD_PKGPATH}
TEST_IS_INTERACTIVE =	X11

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_LCov:Bool=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_Cccc:Bool=Yes

SUBST_VARS =		PLIST_VERSION

.include <bsd.port.mk>
