# $OpenBSD: Makefile,v 1.21 2016/01/20 16:22:26 kili Exp $

COMMENT =		mmap API for Haskell

DISTNAME =		mmap-0.5.8
REVISION =		3
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	DJfmUGEjLG7GLpJ6QVRQuj

RUN_DEPENDS =		devel/hs-HUnit
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
