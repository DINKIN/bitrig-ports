# $OpenBSD: Makefile,v 1.9 2015/11/06 09:13:41 kirby Exp $

COMMENT =	music collection manager and player
DISTNAME =	gogglesmm-0.12.7
EXTRACT_SUFX =	.tar.xz
REVISION =	6
CATEGORIES =	audio x11

HOMEPAGE =	https://gogglesmm.github.io/

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += FOX-1.6 GL GLU X11 c dbus-1 expat m pthread sqlite3
WANTLIB += tag xine
WANTLIB += c++ c++abi

MASTER_SITES =	http://www.linklevel.net/distfiles/

MODULES =	devel/gettext

LIB_DEPENDS =	audio/taglib \
		devel/fox \
		multimedia/xine-lib \
		x11/dbus

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_ARGS =	--prefix=${PREFIX} \
			--with-md5=internal
CONFIGURE_STYLE =	simple
USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
