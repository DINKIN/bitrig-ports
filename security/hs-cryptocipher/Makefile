# $OpenBSD: Makefile,v 1.13 2016/01/20 16:26:19 kili Exp $

COMMENT=		symmetrical block and stream ciphers

DISTNAME=		cryptocipher-0.2.8
REVISION=		8
CATEGORIES=		security

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_PACKAGE_KEY =	6a1bmBdno5oLoH2KdFX4qf

RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-vector \
			security/hs-crypto-api>=0.5
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
