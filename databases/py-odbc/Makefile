# $OpenBSD: Makefile,v 1.13 2016/03/20 16:12:23 naddy Exp $

COMMENT =	ODBC bindings for Python

MODPY_EGG_VERSION=2.1.8
DISTNAME =	pyodbc-${MODPY_EGG_VERSION}
REVISION =	6
PKGNAME =	${DISTNAME:S/py/py-/}

CATEGORIES =	databases

HOMEPAGE =	https://pyodbc.googlecode.com/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += iodbc m pthread
WANTLIB += c++ c++abi

MASTER_SITES =	${HOMEPAGE}files/
EXTRACT_SUFX =	.zip

MODPY_SETUPTOOLS = Yes
MODULES =	lang/python
LIB_DEPENDS =	databases/iodbc

CFLAGS +=	-fPIC -I${LOCALBASE}/include -L${LOCALBASE}/lib

NO_TEST =	Yes

post-extract:
	chmod -R og-w ${WRKSRC}

.include <bsd.port.mk>
