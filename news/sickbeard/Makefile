# $OpenBSD: Makefile,v 1.4 2015/11/02 11:56:54 espie Exp $

COMMENT =			search for TV serie nzb-files via web interface
DISTNAME =			midgetspy-Sick-Beard-b3a7afe
# alpha version
PKGNAME =			sickbeard-0.0.1
CATEGORIES =			news
HOMEPAGE =			http://sickbeard.com/
REVISION =			1

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES = 			http://www.nazgul.ch/pub/

MODULES =			lang/python

BUILD_DEPENDS =			${_MODPY_BUILD_DEPENDS}
RUN_DEPENDS =			news/sabnzbd

NO_BUILD =			Yes
NO_TEST =			Yes
PKG_ARCH =			*

WRKSRC =			${WRKDIR}/midgetspy-Sick-Beard-b3a7afe

do-install:
	${INSTALL_DATA_DIR} \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/sickbeard
	cp -Rp ${WRKSRC}/* \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/sickbeard
	${SUBST_CMD} -m 555 -c ${FILESDIR}/sickbeard ${WRKSRC}/sickbeard/sickbeard
	${INSTALL_SCRIPT} ${WRKSRC}/sickbeard/sickbeard ${PREFIX}/bin/sickbeard
	chown -R ${BINOWN}:${BINGRP} \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/sickbeard

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/sickbeard

.include <bsd.port.mk>
