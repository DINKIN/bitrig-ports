# $OpenBSD: Makefile,v 1.13 2016/01/06 16:23:47 ajacoutot Exp $

COMMENT=		config file reader and writer

MODPY_EGG_VERSION =	5.0.6
DISTNAME=		configobj-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		http://www.voidspace.org.uk/python/configobj.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes

NO_TEST=		Yes

FLAVORS=		python3
FLAVOR ?=

.include <bsd.port.mk>
