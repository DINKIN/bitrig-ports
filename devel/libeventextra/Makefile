# $OpenBSD: Makefile,v 1.9 2015/05/25 07:54:27 jasper Exp $

COMMENT =	libevent extra features

VERSION =	1.4.13
DISTNAME =	libevent-${VERSION}-stable
PKGNAME =	libeventextra-${VERSION}
REVISION =	3

SHARED_LIBS =    eventextra 1.0

CATEGORIES =	devel

HOMEPAGE =	http://www.monkey.org/~provos/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}

MAKE_ENV +=	CC="${CC}"

pre-build:
	@printf "major=${LIBeventextra_VERSION:R}\nminor=${LIBeventextra_VERSION:E}\n" >${WRKBUILD}/shlib_version
	@cp ${FILESDIR}/Makefile ${WRKBUILD}
	rm ${WRKBUILD}/{event.h,evutil.h}

post-install:
	${INSTALL_DATA} ${WRKSRC}/{evhttp.h,evdns.h,evrpc.h} ${PREFIX}/include

.include <bsd.port.mk>
