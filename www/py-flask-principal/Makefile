# $OpenBSD: Makefile,v 1.4 2015/09/29 10:52:54 sthen Exp $

COMMENT =		identity management for flask

MODPY_EGG_VERSION =	0.4.0
REVISION =		1
DISTNAME =		Flask-Principal-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		www

HOMEPAGE =		https://pythonhosted.org/Flask-Principal/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

RUN_DEPENDS +=		www/py-flask

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
