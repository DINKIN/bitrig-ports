# $OpenBSD: Makefile,v 1.6 2016/03/13 21:39:16 sebastia Exp $

COMMENT =	graphical SRCP client to control a digital model railway

DISTNAME =	spdrs60-0.6.0
CATEGORIES =	misc x11

HOMEPAGE =	http://spdrs60.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=spdrs60/}

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		x11/qt5
WANTLIB += c m pthread Qt5Core Qt5Gui Qt5Network Qt5Widgets

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${MODQT_CONFIGURE_ARGS} --disable-html-doc \
			--enable-qt5
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
