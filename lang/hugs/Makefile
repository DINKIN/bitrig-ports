# $OpenBSD: Makefile,v 1.25 2016/03/09 18:31:36 jasper Exp $

COMMENT =	Haskell 98 interpreter

DISTNAME =	hugs98-plus-Sep2006
PKGNAME =	hugs98-2006.09
REVISION =	4
CATEGORIES =	lang
HOMEPAGE =	http://www.haskell.org/hugs/

MASTER_SITES =	http://cvs.haskell.org/Hugs/downloads/2006-09/
MASTER_SITES0 =	http://openbsd.dead-parrot.de/distfiles/

DISTFILES +=	${DISTNAME}.tar.gz ${DISTNAME}-tests.tar.gz:0

CFLAGS +=	-fPIC

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CFLAGS="${CFLAGS}" CC="${CC}"
CONFIGURE_ARGS +=	--with-pthreads --libdir=${PREFIX}/lib

# BSDish
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL GLU X11 c m ncurses pthread readline
LIB_DEPENDS=		devel/readline

MODULES +=		gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++

MODGNU_CONFIG_GUESS_DIRS +=	${WRKSRC}/ \
				${WRKSRC}/packages/ALUT \
				${WRKSRC}/packages/Cabal/tests/HSQL \
				${WRKSRC}/packages/GLUT \
				${WRKSRC}/packages/OpenAL \
				${WRKSRC}/packages/OpenGL \
				${WRKSRC}/packages/network

.include <bsd.port.mk>
