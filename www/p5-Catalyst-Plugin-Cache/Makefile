# $OpenBSD: Makefile,v 1.9 2016/03/20 19:57:15 naddy Exp $

COMMENT =	flexible caching support for Catalyst

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-Plugin-Cache-0.10
CATEGORIES =	www
REVISION =	0

# Perl/MIT
PERMIT_PACKAGE_CDROM =		Yes

BUILD_DEPENDS =		devel/p5-Test-Weaken
RUN_DEPENDS =		devel/p5-MRO-Compat \
			www/p5-Catalyst-Runtime
TEST_DEPENDS =	devel/p5-Test-Exception \
			devel/p5-Test-Deep

.include <bsd.port.mk>
