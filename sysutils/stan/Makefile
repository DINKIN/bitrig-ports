# $OpenBSD: Makefile,v 1.5 2016/03/17 21:08:28 naddy Exp $

COMMENT =		statistical analyzer for binary streams

DISTNAME =		stan-0.4.1

REVISION = 		2

CATEGORIES =		sysutils

HOMEPAGE =		http://www.roqe.org/stan/

# 4-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m

MASTER_SITES =		${HOMEPAGE}

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CFLAGS="${CFLAGS}"

.include <bsd.port.mk>
