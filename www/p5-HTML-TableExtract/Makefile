# $OpenBSD: Makefile,v 1.25 2016/03/20 19:57:18 naddy Exp $

COMMENT=	module to extract text contained within HTML tables

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTML-TableExtract-2.13
CATEGORIES=	www

# GPL
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS =	www/p5-HTML-Parser
BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS=	www/p5-HTML-Tree

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
