# Ports collection makefile for	"hoc", the High Order Calculator
# $OpenBSD: Makefile,v 1.28 2015/01/22 18:41:16 naddy Exp $

COMMENT=	from Kernighan & Pike: High Order Calculator

DISTNAME=	hoc
PKGNAME=	hoc-1.1
REVISION=	1
CATEGORIES=	math

MASTER_SITES=	http://cm.bell-labs.com/cm/cs/who/bwk/
EXTRACT_SUFX=	.sh
EXTRACT_CASES=	*.sh) /bin/sh ${FULLDISTDIR}/$$archive;;

HOMEPAGE=	http://cm.bell-labs.com/cm/cs/who/bwk/

# License is included in the distfile: "Permission to use, copy, 
# modify, and distribute this software... for any purpose and without
# fee.. provided that the copyright notice appear in all copies..."
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m

ALL_TARGET=	hoc
MAKE_FILE=	makefile

WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hoc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/hoc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
