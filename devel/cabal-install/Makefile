# $OpenBSD: Makefile,v 1.18 2016/01/29 20:28:07 kili Exp $

COMMENT =	command-line interface for Cabal and Hackage

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =	cabal-install-1.22.6.0
CATEGORIES =	devel

HOMEPAGE =	http://www.haskell.org/cabal/

# BSD3
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =		c m pthread util z

MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =          cabal hackage nort

BUILD_DEPENDS +=	devel/hs-mtl>=2.0,<3 \
			devel/hs-network>=2.6 \
			devel/hs-network-uri>=2.6 \
			devel/hs-random>=1,<1.2 \
			devel/hs-stm>=2.0,<3 \
			net/hs-HTTP>=4000.2.5,<4000.3 \
			archivers/hs-zlib>=0.5.3,<0.6

.include <bsd.port.mk>
