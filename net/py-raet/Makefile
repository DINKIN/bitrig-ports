# $OpenBSD: Makefile,v 1.3 2015/10/19 05:47:22 ajacoutot Exp $

COMMENT=		Reliable Asynchronous Event Transport protocol

MODPY_EGG_VERSION=	0.6.5
DISTNAME=		raet-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		net

HOMEPAGE=		https://github.com/saltstack/raet

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

MODULES=		lang/python

RUN_DEPENDS=		devel/py-enum34 \
			devel/py-ioflo \
			devel/py-six \
			security/py-libnacl

TEST_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
