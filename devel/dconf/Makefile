# $OpenBSD: Makefile,v 1.69 2016/03/18 23:12:16 naddy Exp $

# -fvisibility
NOT_FOR_ARCHS=		${GCC3_ARCHS}

COMMENT=		configuration backend system

GNOME_PROJECT=		dconf
GNOME_VERSION=		0.24.0
REVISION=		1

SHARED_LIBS +=		dconf        1.0 # 1.0.0
SHARED_LIBS +=		dconf-dbus-1 1.0 # 1.0.0

CATEGORIES=		devel

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c dbus-1 gio-2.0 glib-2.0 gobject-2.0 pthread

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS=		docbook vala

LIB_DEPENDS=		devel/glib2 \
			x11/dbus

CONFIGURE_STYLE=	gnu

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{bin,client,dbus-1}/Makefile.in
	perl -pi -e 's,/etc/dconf,${SYSCONFDIR}/dconf,g' \
		${WRKSRC}/engine/dconf-engine-source-system.c \
		${WRKSRC}/engine/dconf-engine-profile.c \
		${WRKSRC}/docs/dconf-overview.xml \
		${WRKSRC}/docs/html/dconf-overview.html \
		${WRKSRC}/bin/dconf-update.vala \
		${WRKSRC}/bin/dconf-update.c \
		${WRKSRC}/tests/engine.c

.include <bsd.port.mk>
