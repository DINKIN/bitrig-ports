# $OpenBSD: Makefile,v 1.15 2015/11/05 19:08:58 jca Exp $

COMMENT=	economic and military simulation game

V=		17
DISTNAME= 	widelands-build${V}-src
PKGNAME=	widelands-0.${V}
CATEGORIES=	games
EXTRACT_SUFX=	.tar.bz2
REVISION =	1

HOMEPAGE=	http://widelands.org/

MASTER_SITES =	https://launchpad.net/widelands/build${V}/build-${V}/+download/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=	GL GLEW SDL SDL_gfx SDL_image SDL_mixer SDL_net SDL_ttf
WANTLIB +=	c m png pthread z execinfo ${MODLUA_WANTLIB}
WANTLIB +=	boost_signals-mt
WANTLIB +=	c++ c++abi

LIB_DEPENDS =	devel/boost \
		devel/libexecinfo \
		devel/sdl-gfx \
		devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-net \
		devel/sdl-ttf \
		graphics/png \
		graphics/glew

MODULES =	devel/cmake \
		devel/gettext \
		lang/lua \
		lang/python

MODPY_RUNDEP=	No

CONFIGURE_ARGS =	-DWL_INSTALL_DATADIR=share/widelands \
			-DWL_INSTALL_BINDIR=bin

CONFIGURE_ENV =	CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include \
			-I${X11BASE}/include" \
		LDFLAGS="${LDFLAGS} -lexecinfo -lintl -liconv \
			-L${LOCALBASE}/lib"

NO_TEST=	Yes

.include <bsd.port.mk>
