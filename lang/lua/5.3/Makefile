# $OpenBSD: Makefile,v 1.5 2015/12/04 00:41:03 jsg Exp $

PORTROACH=	limit:^5\.3

VERSION=	5.3.2
PKGSPEC=	lua->=5.3,<5.4

SHARED_LIBS=	lua5.3 ${VERSION:R}

LIB_DEPENDS=	devel/readline

WANTLIB=	c m edit curses readline

SUBST_VARS+=	VERSION

CFLAGS+=	-I${LOCALBASE}/include
MAKE_FLAGS+=	LIBlua5.3_VERSION="${LIBlua5.3_VERSION}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${SUBST_DATA} -c ${FILESDIR}/lua53.pc ${PREFIX}/lib/pkgconfig/lua53.pc

.include <bsd.port.mk>
