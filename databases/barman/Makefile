# $OpenBSD: Makefile,v 1.6 2015/12/22 21:36:31 landry Exp $

COMMENT =	backup and restoration manager for PostgreSQL

MODPY_EGG_VERSION =	1.5.1
DISTNAME =	barman-${MODPY_EGG_VERSION}
CATEGORIES =	databases
HOMEPAGE =	http://www.pgbarman.org/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=pgbarman/}

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =	databases/py-psycopg2 \
		databases/postgresql \
		net/rsync \
		devel/py-dateutil \
		devel/py-argh

# needs pytest-timeout and pytest-capturelog
NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/barman
	${INSTALL_DATA}	${WRKSRC}/README ${PREFIX}/share/doc/barman
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/barman
	${INSTALL_DATA}	${WRKSRC}/doc/barman.conf ${PREFIX}/share/examples/barman

.include <bsd.port.mk>
