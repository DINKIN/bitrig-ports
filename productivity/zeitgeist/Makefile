# $OpenBSD: Makefile,v 1.30 2015/10/26 10:14:04 jasper Exp $

COMMENT =		event logging framework

V =			0.9.16
DISTNAME =		zeitgeist-${V}
EPOCH =			0

SHARED_LIBS +=	zeitgeist-2.0             0.0 # 0.0

CATEGORIES =		productivity

HOMEPAGE =		https://launchpad.net/zeitgeist

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 dbus-glib-1 epoxy expat
WANTLIB += ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += sqlite3 telepathy-glib xcb xcb-render xcb-shm z

MASTER_SITES =		http://edge.launchpad.net/zeitgeist/${V:R}/${V}/+download/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/gettext \
			lang/python \
			textproc/intltool \
			x11/gnome

USE_GMAKE =		Yes

MODGNOME_TOOLS =	gobject-introspection vala

MODPY_ADJ_FILES =	data/ontology2code

BUILD_DEPENDS =		textproc/py-rdflib \
			textproc/raptor

RUN_DEPENDS =		x11/dbus-python

TEST_DEPENDS =		devel/py-gobject3

LIB_DEPENDS =		devel/json-glib \
			net/telepathy/telepathy-glib \
			x11/gtk+3

MAKE_FLAGS =		LIBZEITGEIST_LT_VERSION=${LIBzeitgeist-2.0_VERSION:R}:${LIBzeitgeist-2.0_VERSION:E}
FAKE_FLAGS =		zeitgeistdocdir="${PREFIX}/share/doc/zeitgeist/" \
			sysconfdir="${PREFIX}/share/examples/zeitgeist/"

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
