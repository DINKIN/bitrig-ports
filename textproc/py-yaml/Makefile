# $OpenBSD: Makefile,v 1.14 2015/12/09 18:26:47 jca Exp $

COMMENT=	YAML parser and emitter in Python

MODPY_EGG_VERSION=3.11
DISTNAME=	PyYAML-${MODPY_EGG_VERSION}
PKGNAME=	py-yaml-${MODPY_EGG_VERSION}
REVISION=	1
CATEGORIES=	textproc

HOMEPAGE=	http://pyyaml.org/wiki/PyYAML

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://pyyaml.org/download/pyyaml/

WANTLIB+=	pthread yaml ${MODPY_WANTLIB}

MODULES=	lang/python

FLAVORS =	python3
FLAVOR ?=

LIB_DEPENDS=	devel/libyaml

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.cfg

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} ${MODPY_SETUP} test

.include <bsd.port.mk>
