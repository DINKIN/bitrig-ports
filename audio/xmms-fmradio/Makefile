# $OpenBSD: Makefile,v 1.17 2016/03/18 21:38:23 naddy Exp $

COMMENT=	FM radio input plug-in for XMMS

DISTNAME=	xmms-FMRadio-1.5
PKGNAME=	${DISTNAME:L}
REVISION=	4
CATEGORIES=	audio x11

HOMEPAGE=	http://silicone.free.fr/xmms-FMRadio/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xi gdk glib gmodule gtk m xcb xmms>=2

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

MODULES +=	devel/gettext

LIB_DEPENDS=	audio/xmms

MAKE_ENV=	CC="${CC}"

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmms-fmradio
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xmms-fmradio/

.include <bsd.port.mk>
