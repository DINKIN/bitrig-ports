# $OpenBSD: Makefile,v 1.9 2016/01/20 16:22:28 kili Exp $

COMMENT =		deterministic allocation and freeing of scarce resources

DISTNAME =		resourcet-1.1.7
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	COzBOgbFeDT9zgRvfEGBTZ

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-exceptions>=0.5 \
			devel/hs-lifted-base>=0.1 \
			devel/hs-mmorph \
			devel/hs-monad-control>=0.3.1,<1.1 \
			devel/hs-mtl>=2.0,<2.3 \
			devel/hs-transformers-base>=0.4.4,<0.5

.include <bsd.port.mk>
