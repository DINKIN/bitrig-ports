# $OpenBSD: Makefile,v 1.16 2015/11/26 22:04:04 jasper Exp $

COMMENT =		GTK2 terminal emulator with split-window and tabs support

MODPY_EGG_VERSION =	0.98
DISTNAME =		terminator-${MODPY_EGG_VERSION}

CATEGORIES =		x11

HOMEPAGE =		http://gnometerminator.blogspot.com/p/introduction.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =		http://launchpad.net/terminator/trunk/${MODPY_EGG_VERSION}/+download/

MODULES =		lang/python \
			textproc/intltool
RUN_DEPENDS =		devel/vte,-python \
			devel/py-notify \
			devel/desktop-file-utils \
			x11/gtk+3,-guic \
			x11/keybinder,-python

NO_TEST =		Yes

MODPY_SETUPTOOLS =	Yes
MODPY_SETUP_ARGS =	--without-icon-cache

# --single-version-externally-managed option used by MODPY doesn't exist
MODPY_DISTUTILS_INSTALL = install --prefix=${LOCALBASE} --root=${DESTDIR}

.include <bsd.port.mk>
