# $OpenBSD: Makefile,v 1.10 2016/03/20 19:57:15 naddy Exp $

COMMENT =	cache the output of entire pages

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-Plugin-PageCache-0.31
REVISION =	0
CATEGORIES =	www

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	www/p5-Catalyst-Runtime \
		www/p5-Catalyst-Plugin-Cache>=0.10 \
		security/p5-Digest-SHA1 \
		devel/p5-MRO-Compat
TEST_DEPENDS =	devel/p5-Cache-Cache \
			www/p5-Catalyst-Plugin-I18N

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
