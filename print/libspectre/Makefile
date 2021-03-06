# $OpenBSD: Makefile,v 1.23 2016/03/18 21:38:25 naddy Exp $

# libgs from ghostscript is only provided on shared libs archs

COMMENT=	library for rendering Postscript documents

DISTNAME=	libspectre-0.2.7
CATEGORIES=	print
REVISION=	6

SHARED_LIBS=	spectre 0.1	# 2.7

HOMEPAGE=	http://libspectre.freedesktop.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xext Xt avahi-client avahi-common cups cupsimage
WANTLIB += dbus-1 ffi freetype gmp gnutls gs hogweed ijs jbig2dec
WANTLIB += jpeg lcms2 m nettle p11-kit png pthread tasn1 tiff
WANTLIB += xcb z

MASTER_SITES=	${HOMEPAGE}/releases/

MODULES=	devel/gettext

# we want the 'display' device from ghostscript, which is not available
# in the no_x11 FLAVOR
LIB_DEPENDS=	ghostscript-*-!no_x11:print/ghostscript/gnu


CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.ifdef DEBUG
BUILD_DEPENDS+=	graphics/cairo
CONFIGURE_ARGS+=--enable-test
.else
CONFIGURE_ARGS+=--disable-test
.endif

.include <bsd.port.mk>
