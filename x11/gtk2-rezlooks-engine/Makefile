# $OpenBSD: Makefile,v 1.13 2016/03/18 21:38:26 naddy Exp $

COMMENT=		Clearlooks based GTK+ 2.x engine

V=			0.6
DISTNAME=		39179-rezlooks-$V
PKGNAME=		gtk2-rezlooks-engine-$V
REVISION=		3
CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

THEMES_DISTNAME=rezlooks-themes-0.1

MASTER_SITES=	http://gnome-look.org/CONTENT/content-files/
MASTER_SITES0=	http://distfiles.nl/
DIST_SUBDIR=	rezlooks
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		${THEMES_DISTNAME}${EXTRACT_SUFX}:0

MODULES=	devel/gettext

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender expat fontconfig freetype
WANTLIB += m pixman-1 pthread-stubs xcb xcb-render
WANTLIB += z gtk-x11-2.0 gdk-x11-2.0
WANTLIB += atk-1.0 cairo gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre png
WANTLIB += ffi graphite2 harfbuzz pthread xcb-shm

LIB_DEPENDS =	x11/gtk+2


WRKDIST= 	${WRKDIR}/rezlooks-$V

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	rm ${PREFIX}/lib/gtk-2.0/2.10.0/engines/*.{a,la}
	${INSTALL_DATA_DIR} ${PREFIX}/share/themes/
	cp -R ${WRKDIR}/${THEMES_DISTNAME}/* ${PREFIX}/share/themes/
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/themes/*


.include <bsd.port.mk>
