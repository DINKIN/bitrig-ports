# $OpenBSD: Makefile,v 1.17 2016/03/11 20:28:26 naddy Exp $

# no libGL (toolchain issue)
NOT_FOR_ARCHS=	m88k

COMMENT =		open source alternative to glut
DISTNAME =		freeglut-2.8.0
REVISION =		6
SHARED_LIBS =		glut 5.0
CATEGORIES =		graphics
HOMEPAGE =		http://freeglut.sourceforge.net/

# X11
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL X11 X11-xcb Xdamage Xext Xfixes Xi Xrandr
WANTLIB += Xrender Xxf86vm drm expat glapi m expat pthread
WANTLIB += usbhid xcb xcb-dri2 xcb-glx
WANTLIB += c++ c++abi pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=freeglut/}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-warnings=no
CONFIGURE_ENV +=	LDFLAGS="-L${X11BASE}/lib"

NO_TEST =		Yes

.include <bsd.port.mk>
