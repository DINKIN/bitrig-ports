# $OpenBSD: Makefile,v 1.3 2016/01/11 09:35:45 ajacoutot Exp $

COMMENT =		convert DocBook refentry to mdoc

DISTNAME =		docbook2mdoc-0.0.9
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		http://mdocml.bsd.lv/docbook2mdoc/

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c expat

MASTER_SITES =		http://mdocml.bsd.lv/docbook2mdoc/snapshots/
EXTRACT_SUFX =		.tgz

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS}"

NO_TEST =		Yes

ALL_TARGET =		docbook2mdoc

do-install:
	${INSTALL} ${WRKDIST}/docbook2mdoc ${PREFIX}/bin
	${INSTALL} ${WRKDIST}/docbook2mdoc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
