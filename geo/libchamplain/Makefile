# $OpenBSD: Makefile,v 1.34 2016/03/18 23:12:17 naddy Exp $

COMMENT=	library to provide a GTK+ widget to display maps

GNOME_PROJECT=	libchamplain
GNOME_VERSION=	0.12.13
API_VERSION=	0.12

SHARED_LIBS +=  champlain-${API_VERSION}       1.4      # 7.4
SHARED_LIBS +=  champlain-gtk-${API_VERSION}   1.1      # 7.4

SUBST_VARS+=	API_VERSION

CATEGORIES=	geo devel

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += atspi cairo cairo-gobject clutter-1.0 clutter-gtk-1.0 cogl
WANTLIB += cogl-pango cogl-path dbus-1 drm epoxy expat ffi fontconfig
WANTLIB += freetype gbm gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += json-glib-1.0 lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs soup-2.4 sqlite3 xcb
WANTLIB += xcb-dri2 xcb-render xcb-shape xcb-shm xcb-xfixes xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/libsoup \
			graphics/clutter/clutter-gtk

MODGNOME_TOOLS +=	gobject-introspection vala

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
