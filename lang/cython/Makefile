# $OpenBSD: Makefile,v 1.8 2015/12/25 02:18:09 bentley Exp $

COMMENT =		C-Extensions for Python

MODPY_EGG_VERSION = 	0.23.4
DISTNAME =		Cython-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:L}
REVISION =		0

CATEGORIES =		lang

HOMEPAGE =		http://www.cython.org/
MASTER_SITES =		${HOMEPAGE}release/ \
			${MASTER_SITE_PYPI:=C/Cython/}

# Apache 2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=  pthread ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

TEST_TARGET =	test

MAKE_ENV +=		PYTHON=${MODPY_BIN}

do-test:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
        ${ALL_TEST_FLAGS} -f ${MAKE_FILE} ${TEST_TARGET}

.include <bsd.port.mk>
