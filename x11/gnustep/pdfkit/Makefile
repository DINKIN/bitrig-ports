# $OpenBSD: Makefile,v 1.15 2016/03/05 16:04:09 pascal Exp $

COMMENT =	framework for accessing and rendering PDF content

BROKEN =	shows PDFs only white, and breaks GWorkspace on macppc

REVISION =	2
DISTNAME =	PDFKit-0.9.3
SHARED_LIBS +=	PDFKit	0.0

HOMEPAGE =	http://wiki.gnustep.org/index.php/PDFKit
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =		x11/gnustep
MODGNUSTEP_IS_FRAMEWORK	= Yes
WANTLIB += 		pthread freetype m
WANTLIB += 		c++ c++abi
BUILD_DEPENDS =		x11/gnustep/gui

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	${MAKE_ENV}
CONFIGURE_ARGS =	--with-freetype2-add-includes=${X11BASE}/include \
			--with-freetype2-includes=${X11BASE}/include/freetype2
MAKE_FLAGS =		PDFKit_INTERFACE_VERSION=${LIBPDFKit_VERSION}

.include <bsd.port.mk>
