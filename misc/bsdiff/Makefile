# $OpenBSD: Makefile,v 1.11 2013/10/11 23:50:09 naddy Exp $

COMMENT=	binary patch tools
DISTNAME=	bsdiff-4.3
REVISION=	0
CATEGORIES=	misc devel

HOMEPAGE=	http://www.daemonology.net/bsdiff/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	bz2 c

MASTER_SITES=	${HOMEPAGE}

MAKE_FLAGS=	CC='${CC}' \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib -lbz2"

LIB_DEPENDS=	archivers/bzip2

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}
NO_TEST=	Yes

.include <bsd.port.mk>
