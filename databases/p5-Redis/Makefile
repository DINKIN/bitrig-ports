# $OpenBSD: Makefile,v 1.16 2016/03/20 19:56:11 naddy Exp $

COMMENT =	perl binding for Redis database

DISTNAME =	Redis-1.982
CATEGORIES =	databases

EPOCH =		0

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*

RUN_DEPENDS =		devel/p5-Try-Tiny \
			net/p5-IO-Socket-Timeout

BUILD_DEPENDS =		devel/p5-Test-CPAN-Meta

TEST_DEPENDS +=		devel/p5-Test-Deep \
			devel/p5-Test-Fatal \
			devel/p5-Test-SharedFork \
			net/p5-Test-TCP \
			devel/p5-IO-String \
			databases/redis

.include <bsd.port.mk>
