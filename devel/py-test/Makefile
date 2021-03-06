# $OpenBSD: Makefile,v 1.16 2016/03/13 08:08:13 shadchin Exp $

COMMENT=		cross-project testing tool for Python

MODPY_EGG_VERSION=	2.9.0
DISTNAME=		pytest-${MODPY_EGG_VERSION}
PKGNAME=		py-test-${MODPY_EGG_VERSION}

CATEGORIES=		devel

HOMEPAGE=		http://pytest.org/latest/

MAINTAINER=		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR?=

RUN_DEPENDS=		devel/py-py${MODPY_FLAVOR}>=1.4.30
TEST_DEPENDS=		${RUN_DEPENDS} \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}
.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-twisted/core
.endif

.if ${FLAVOR:Mpython3}
post-install:
	mv ${PREFIX}/bin/py.test ${PREFIX}/bin/py.test${MODPY_BIN_SUFFIX}
.endif

.include <bsd.port.mk>
