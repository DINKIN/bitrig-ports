# $OpenBSD: Makefile,v 1.13 2016/03/05 19:17:01 jung Exp $

COMMENT=		simple X screen locker

DISTNAME=		slock-1.3

CATEGORIES=		x11

HOMEPAGE=		http://tools.suckless.org/slock

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 c Xext

MASTER_SITES=		http://dl.suckless.org/tools/

MAKE_ENV=		CC="${CC}" \
			LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
