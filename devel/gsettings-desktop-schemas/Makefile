# $OpenBSD: Makefile,v 1.53 2015/10/20 18:29:00 ajacoutot Exp $

COMMENT=		collection of shared GSettings schemas

GNOME_PROJECT=		gsettings-desktop-schemas
GNOME_VERSION=		3.18.1

CATEGORIES=		devel

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			x11/gnome

BUILD_DEPENDS=		devel/gettext

MODGNOME_TOOLS=		gobject-introspection

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA} ${FILESDIR}/*.gschema.override \
		${PREFIX}/share/glib-2.0/schemas

.include <bsd.port.mk>
