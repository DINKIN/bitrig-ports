# $OpenBSD: Makefile,v 1.3 2016/03/18 23:12:19 naddy Exp $

COMMENT =	OAuth support library for Qt-based applications
V =		0.97
DISTNAME =	${V}
PKGNAME =	kqoauth-${V}
REVISION=	1
CATEGORIES =	security devel
HOMEPAGE =	https://github.com/kypeli/kQOAuth

SHARED_LIBS =	kqoauth		0.0

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype
WANTLIB += m pthread
WANTLIB += lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += c++ c++abi

MASTER_SITES =	${HOMEPAGE}/archive/
DIST_SUBDIR =	kqoauth
WRKDIST =	${WRKDIR}/kQOAuth-${V}

MODULES =	x11/qt4

CONFIGURE_STYLE =	qmake

MAKE_FLAGS =	LIBkqoauth_VERSION=${LIBkqoauth_VERSION}
DESTDIRNAME =	INSTALL_ROOT

TEST_NAMES =	ft_kqoauth ut_kqoauth

do-test:
.for _t in ${TEST_NAMES}
	cd ${WRKBUILD}/tests/${_t} && \
	    LD_PRELOAD=${WRKBUILD}/lib/libkqoauth.so.${LIBkqoauth_VERSION} \
	    ./${_t}
.endfor

.include <bsd.port.mk>
