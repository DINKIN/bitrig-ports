# $OpenBSD: Makefile,v 1.75 2015/08/17 20:04:16 sthen Exp $

BROKEN = 		needs work on bitrig

COMMENT-main = 		K Desktop Environment, additional artwork
COMMENT-emoticons =	KDE emoticons
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdeartwork-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-emoticons =	kde-emoticons-${VERSION}
PKGSPEC-main =		kdeartwork->=3,<4
REVISION-main =		19
REVISION-emoticons =	0

MODULES =		x11/kde devel/gettext
MODKDE_VERSION =	3.5.8

MULTI_PACKAGES =	-main -emoticons

BUILD_DEPENDS =		x11/xscreensaver

RUN_DEPENDS-emoticons =
RUN_DEPENDS =		x11/xscreensaver \
			x11/gtk+3,-guic

LIB_DEPENDS-emoticons =
LIB_DEPENDS =		x11/kde/libs3 \
			x11/kde/base3

SEPARATE_BUILD =	flavored
CONFIGURE_ENV +=	XSCREENSAVER=${LOCALBASE}/libexec/xscreensaver

WANTLIB-emoticons =
WANTLIB =	FLAC GL GLU ICE SM X11 Xdamage Xext Xfixes Xrender Xt
WANTLIB +=	Xxf86vm art_lgpl_2 artsflow artsflow_idl artskde audiofile c
WANTLIB +=	drm expat fam fontconfig freetype glib-2.0 gmodule-2.0
WANTLIB +=	gthread-2.0 idn kmedia2_idl kwalletclient lib/kde3/DCOP
WANTLIB +=	lib/kde3/kdecorations lib/kde3/kdecore>=6 lib/kde3/kdefx
WANTLIB +=	lib/kde3/kdesu lib/kde3/kdeui lib/kde3/kio lib/kde3/kparts
WANTLIB +=	lib/kde3/kscreensaver m mad mcop ogg pcre png pthread
WANTLIB +=	pthread-stubs qtmcop sndio soundserver_idl
WANTLIB +=	util vorbis vorbisenc vorbisfile xcb z
WANTLIB +=	X11-xcb Xau Xdmcp glapi xcb-dri2 xcb-glx
WANTLIB +=	c++ c++abi

.include <bsd.port.mk>
