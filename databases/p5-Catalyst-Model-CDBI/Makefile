# $OpenBSD: Makefile,v 1.9 2016/03/20 19:56:09 naddy Exp $

COMMENT= 	catalyst model for Class::DBI

DISTNAME =	Catalyst-Model-CDBI-0.12
CATEGORIES=	databases www
MODULES=	cpan
PKG_ARCH=	*

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		databases/p5-Class-DBI-Loader

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
