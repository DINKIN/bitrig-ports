# $OpenBSD: Makefile,v 1.85 2016/01/17 10:30:28 benoit Exp $

COMMENT =		optimizer for PNG files

DISTNAME =		pngcrush-1.8.0
CATEGORIES =		graphics

HOMEPAGE =		http://pmt.sourceforge.net/pngcrush/

# custom, see pngcrush.c
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pmt/}

MAKE_FLAGS =		CC="${CC}" LD="${CC}" CFLAGS="${CFLAGS} -I. -DZ_SOLO"

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pngcrush ${PREFIX}/bin

.include <bsd.port.mk>
