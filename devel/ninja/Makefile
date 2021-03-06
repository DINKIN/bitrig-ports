# $OpenBSD: Makefile,v 1.18 2016/01/24 15:10:09 ajacoutot Exp $

# as error: ``operation combines symbols in different segments''
# (known toolchain problem) - if fixing, re-enable in devel/cmake/Makefile
# and devel/cmake/cmake.port.mk.
NOT_FOR_ARCHS=		m88k

COMMENT =		small build system with a focus on speed

V =			1.6.0
GH_ACCOUNT =		martine
GH_PROJECT =		ninja
GH_TAGNAME =		v$V
DISTNAME =		${GH_PROJECT}-$V

CATEGORIES =		devel
HOMEPAGE =		http://martine.github.io/ninja/
REVISION =		1

# Apache License v2.0
PERMIT_PACKAGE_CDROM =	Yes

# c>=68.1 needed for ppoll
WANTLIB =		c>=68.1 m
WANTLIB +=		c++ c++abi pthread

MODULES =		lang/python

MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	bootstrap.py \
			configure.py \
			misc/ninja_syntax.py \
			src/browse.py

# Not strictly required, but will be used if available.  Included as a build
# dependency to ensure consistent builds.
BUILD_DEPENDS =		devel/re2c

MAKE_ENV =		CXX="${CXX}"

do-build:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
	    ${MODPY_BIN} ./configure.py --bootstrap \
	    --verbose --with-python=${MODPY_BIN}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ninja ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ninja
	${INSTALL_DATA} ${WRKSRC}/doc/manual.asciidoc ${PREFIX}/share/doc/ninja
	${INSTALL_DATA_DIR} ${PREFIX}/share/ninja
	${INSTALL_DATA} ${WRKSRC}/misc/bash-completion ${PREFIX}/share/ninja
	${INSTALL_DATA} ${WRKSRC}/misc/ninja-mode.el ${PREFIX}/share/ninja
	${INSTALL_DATA} ${WRKSRC}/misc/ninja.vim ${PREFIX}/share/ninja
	${INSTALL_DATA} ${WRKSRC}/misc/ninja_syntax.py ${PREFIX}/share/ninja
	${INSTALL_DATA} ${WRKSRC}/misc/zsh-completion ${PREFIX}/share/ninja

.include <bsd.port.mk>
