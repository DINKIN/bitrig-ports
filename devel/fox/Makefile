# $OpenBSD: Makefile,v 1.30 2015/12/22 13:07:50 jasper Exp $

COMMENT =	C++ toolkit for GUI
CATEGORIES =	devel
REVISION=	3

DISTNAME =	fox-1.6.50

SHARED_LIBS +=	FOX-1.6              2.1      # .0.50
SHARED_LIBS +=	CHART-1.6            1.1      # .0.50
MASTER_SITES =	http://ftp.fox-toolkit.org/pub/
HOMEPAGE =	http://www.fox-toolkit.org/

CONFIGURE_STYLE =	gnu

LIB_DEPENDS =	archivers/bzip2 \
		graphics/jpeg \
		graphics/png \
		graphics/tiff

CONFIGURE_ENV += \
	CPPFLAGS="-I${LOCALBASE}/include" \
	LDFLAGS="-L${LOCALBASE}/lib" 
CONFIGURE_ARGS += \
	--x-includes="${X11BASE}/include -I${X11BASE}/include/freetype2" \
	--x-libraries=${X11BASE}/lib \
	--with-xft

# LGPL or looser
PERMIT_PACKAGE_CDROM = Yes

FOX =		fox-1.6
SUBST_VARS =	FOX

WANTLIB += GL GLU X11 X11-xcb Xcursor Xdamage Xext Xfixes Xft
WANTLIB += Xrandr Xrender Xxf86vm bz2 c drm expat fontconfig freetype
WANTLIB += glapi jpeg m png pthread pthread-stubs c++ c++abi tiff
WANTLIB += xcb xcb-dri2 xcb-glx z

.include <bsd.port.mk>
