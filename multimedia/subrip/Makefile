# $OpenBSD: Makefile,v 1.12 2015/01/22 17:47:51 naddy Exp $

COMMENT=	extract subtitles from dvds
DISTNAME=	ogmrip-0.10.0
PKGNAME=	subrip-0.10.0
REVISION=	3
CATEGORIES=	multimedia converters
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ogmrip/}

HOMEPAGE=	http://ogmrip.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME}/subrip

do-configure:
	ln -sf ${FILESDIR}/Makefile ${WRKDIST}

RUN_DEPENDS=		graphics/gocr \
			x11/mplayer

WANTLIB=		c m
NO_TEST=		Yes

FAKE_FLAGS=		BINDIR=${TRUEPREFIX}/bin \
			INSTALL_PROGRAM="${INSTALL_PROGRAM}"

post-install:
	${INSTALL_PROGRAM} ${FILESDIR}/subrip ${PREFIX}/bin
	${INSTALL_MAN} ${FILESDIR}/subrip.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${FILESDIR}/srttool.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${FILESDIR}/sub2pgm.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
