# $OpenBSD: Makefile,v 1.6 2016/01/07 21:35:27 jasper Exp $

COMMENT=		backend data caching and persistence daemon for Graphite

MODPY_EGG_VERSION=	0.9.15

DISTNAME=		carbon-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		databases
REVISION=		0

# Apache
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python
MODPY_PI =		Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		databases/py-whisper \
			devel/py-twisted/core

BIN_FILES=		carbon-aggregator.py carbon-cache.py carbon-client.py \
			carbon-relay.py validate-storage-schemas.py

.for b in ${BIN_FILES}
MODPY_ADJ_FILES+=	bin/$b
.endfor

GRAPHITE_EGDIR=		${PREFIX}/share/examples/graphite/

SUBST_VARS+=		GRAPHITE_EGDIR MODPY_SITEPKG

NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.{cfg,py} ${WRKSRC}/lib/carbon/conf.py \
		${WRKSRC}/bin/validate-storage-schemas.py

.include <bsd.port.mk>
