# $OpenBSD: Makefile,v 1.35 2016/03/18 21:38:23 naddy Exp $

COMMENT=	XMMS input plugin for playing shorten files

DISTNAME=	xmms-shn-2.4.1
REVISION=	6
CATEGORIES=	audio
HOMEPAGE=	http://www.etree.org/shnutils/xmms-shn/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xau Xdmcp Xext Xi gdk glib gmodule gtk \
			m pthread-stubs xcb

MASTER_SITES=	${HOMEPAGE}dist/src/

MODULES +=	devel/gettext
RUN_DEPENDS=	audio/xmms
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=gnu
LIBTOOL_FLAGS=	--tag=disable-static

.include <bsd.port.mk>
