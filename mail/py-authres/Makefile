# $OpenBSD: Makefile,v 1.8 2015/11/16 11:29:05 giovanni Exp $

COMMENT =	module for RFC 5451 Authentication-Results Headers

MODPY_EGG_VERSION = 0.800
DISTNAME =	authres-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0
CATEGORIES =	mail

HOMEPAGE =	https://launchpad.net/authentication-results-python

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES	=	lang/python

NO_TEST =	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/authres/tests \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/authres/tests

.include <bsd.port.mk>
