# $OpenBSD: Makefile,v 1.35 2016/03/19 13:35:58 landry Exp $

COMMENT =	Firefox web browser, Extended Support Release

MOZILLA_VERSION =	38.7.1esr
MOZILLA_BRANCH =	esr38
MOZILLA_PROJECT =	firefox
MOZILLA_CODENAME =	browser
BROKEN-sparc64 =	xpcshell SIGBUS during fake

PKGNAME =	${MOZILLA_PROJECT}-esr-${MOZILLA_VERSION:S/esr//}
SO_VERSION =	2.0
MOZILLA_LIBS =	browsercomps mozalloc mozgnome xul clearkey

CATEGORIES =	www

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes

# lots of logic in mozilla.port.mk
MODULES =	www/mozilla devel/gettext lang/python

MODPY_RUNDEP =	No

# Regression tests are too hard to adapt to run here
NO_TEST =	Yes

CONFIGURE_STYLE =	autoconf no-autoheader

# to be able to link when building with clang on i386 or gcc on ppc
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS +=	--disable-debug-symbols
.endif

# avoid conflict with mainline firefox
CONFIGURE_ARGS +=	--with-app-name=firefox-esr

# relies on pulseaudio for sound and broken at runtime
CONFIGURE_ARGS +=	--disable-webrtc

# bug #1064665
LIB_DEPENDS +=	textproc/icu4c
CONFIGURE_ARGS += --with-system-icu
WANTLIB += icudata icui18n icuuc

CONFIGURE_ARGS +=	--enable-gstreamer=1.0

BUILD_DEPENDS +=	multimedia/gstreamer1/plugins-base

# needs 3.0.10 when not using gcc
# CONFIGURE_ARGS += --with-system-ffi

# --with-system-png=${LOCALBASE}
# no system png : apng support not bundled in

MOZILLA_AUTOCONF_DIRS +=	js/src

post-install:
	# install prefs
	${INSTALL_DATA_DIR} ${PREFIX}/lib/${MOZILLA_PROJECT}-esr-${MOZILLA_VER}/browser/defaults/preferences
	${SUBST_DATA} ${FILESDIR}/all-openbsd.js \
		${PREFIX}/lib/${MOZILLA_PROJECT}-esr-${MOZILLA_VER}/browser/defaults/preferences/all-openbsd.js
	# install desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${SUBST_DATA} ${FILESDIR}/${MOZILLA_PROJECT}.desktop \
		${PREFIX}/share/applications/${MOZILLA_PROJECT}-esr.desktop
	# install icon for desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${PREFIX}/lib/${MOZILLA_PROJECT}-esr-${MOZILLA_VER:S/esr//}/browser/icons/mozicon128.png \
		${PREFIX}/share/pixmaps/firefox-esr.png

	# link default48.png to default.png to be used by default by non-icccm compliant wm
	ln ${PREFIX}/lib/firefox-esr-${MOZILLA_VER:S/esr//}/browser/chrome/icons/default/default{48,}.png

.include <bsd.port.mk>
