# $OpenBSD: Makefile,v 1.101 2016/03/18 23:12:16 naddy Exp $

COMMENT=		library for layout and rendering of text

GNOME_VERSION=		1.38.1
GNOME_PROJECT=		pango

SHARED_LIBS +=  pango-1.0            3800.0   # 3800.1
SHARED_LIBS +=  pangoft2-1.0         3800.0   # 3800.1
SHARED_LIBS +=  pangoxft-1.0         3800.0   # 3800.1
SHARED_LIBS +=  pangocairo-1.0       3800.0   # 3800.1

CATEGORIES=		devel x11

HOMEPAGE=		http://www.pango.org/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xft Xrender c cairo expat ffi fontconfig freetype
WANTLIB += glib-2.0 gobject-2.0 graphite2 gthread-2.0 harfbuzz
WANTLIB += m pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

LIB_DEPENDS=		devel/glib2>=2.46.0 \
			devel/harfbuzz

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
