# $OpenBSD: Makefile,v 1.27 2016/03/18 23:12:17 naddy Exp $

BROKEN= 	needs work on bitrig

COMMENT=	portable DjVu viewer and browser plugin

DISTNAME=	djview-4.10.6
PKGNAME=	${DISTNAME:S/djview/djview4/}
REVISION=	2
CATEGORIES=	graphics print

HOMEPAGE=	http://djvu.sourceforge.net/djview4.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE QtGui QtNetwork QtOpenGL SM X11 Xext Xi Xinerama
WANTLIB += Xrender c djvulibre fontconfig freetype glib-2.0 m
WANTLIB += pcre pthread tiff
WANTLIB += c++ c++abi

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=djvu/}

MODULES=	x11/qt4 devel/gettext

LIB_DEPENDS=	graphics/djvulibre

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic

USE_GMAKE=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-tiff=${LOCALBASE}
CONFIGURE_ENV+=	QTDIR="${MODQT4_QTDIR}" \
		CPPFLAGS="-I${X11BASE}/include"

MAKE_ENV+=	V=1

NO_TEST=	Yes

LIBTOOL_FLAGS=	--tag=disable-static

.include <bsd.port.mk>
