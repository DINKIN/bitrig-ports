# $OpenBSD: Makefile,v 1.9 2016/01/08 13:07:35 jasper Exp $

COMMENT=		library to implement a Unix daemon process

MODPY_EGG_VERSION=	2.0.6
DISTNAME=		python-daemon-${MODPY_EGG_VERSION}
PKGNAME=		py-daemon-${MODPY_EGG_VERSION}
REVISION=		3

CATEGORIES=		sysutils


# PSF-2+
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

TEST_DEPENDS=	devel/py-minimock \
			sysutils/py-lockfile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-daemon/
	${INSTALL_DATA} ${WRKSRC}/doc/FAQ ${PREFIX}/share/doc/py-daemon/

.include <bsd.port.mk>
