# $OpenBSD: Makefile,v 1.18 2015/12/23 10:30:26 chrisz Exp $

COMMENT=	graphical interface to sqlite databases
V = 3.7.0
GH_ACCOUNT =	sqlitebrowser
GH_PROJECT =	sqlitebrowser
GH_TAGNAME =	v${V}
DISTNAME =	${GH_PROJECT}-${V}
PKGNAME =	${DISTNAME}

CATEGORIES=	databases x11
HOMEPAGE=	http://sqlitebrowser.org/

MODULES=	x11/qt4 devel/cmake

# MPLv2/GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=	QtGui QtNetwork c m pthread sqlite3 c++ c++abi
RUN_DEPENDS =	x11/gtk+3,-guic devel/desktop-file-utils

CONFIGURE_ARGS =	-DUSE_QT5=False

.include <bsd.port.mk>
