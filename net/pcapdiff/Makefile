# $OpenBSD: Makefile,v 1.7 2015/12/19 00:13:35 bentley Exp $

COMMENT =		compare pcap dump files

MODPY_EGG_VERSION =	0.1
DISTNAME =		pcapdiff-${MODPY_EGG_VERSION}
REVISION =		4

CATEGORIES =		net security

HOMEPAGE =		https://www.eff.org/pages/pcapdiff

# GPLv2/GPLv3 (only)
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://www.eff.org/files/

MODULES =		lang/python
RUN_DEPENDS =		net/py-pcapy

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/pcapdiff

pre-configure:
	@cp ${FILESDIR}/setup.py ${WRKSRC}

post-install:
.for i in pcapdiff printpackets
	mv ${PREFIX}/bin/$i.py ${PREFIX}/bin/$i
.endfor

.include <bsd.port.mk>
