# $OpenBSD: Makefile,v 1.24 2016/03/01 22:01:18 kili Exp $

COMMENT =		Haskell binding for the OpenGL Utility Toolkit

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		GLUT-2.7.0.3
REVISION =		1
CATEGORIES =		graphics devel
HOMEPAGE =		https://wiki.haskell.org/Opengl

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	Kv7Q3BwQOc17wH4zrRoE6V

# Should be changed to LIB_DEPENDS as soon as we have a GHC with
# shared libs.
RUN_DEPENDS =		graphics/freeglut \
			devel/hs-StateVar>=1.1,<1.2 \
			graphics/hs-OpenGLRaw>=2.3,<2.7 \
			graphics/hs-OpenGL>=2.12,<2.14
BUILD_DEPENDS =		${RUN_DEPENDS}


MODGHC_SETUP_CONF_ENV =	CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

.include <bsd.port.mk>
