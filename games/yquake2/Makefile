# $OpenBSD: Makefile,v 1.2 2016/02/25 16:02:23 landry Exp $

ONLY_FOR_ARCHS=	i386 amd64 sparc64
SHARED_ONLY=	Yes

COMMENT=	Yamagi Quake II
N=		yquake2
V=		5.32
PKGNAME=	${N}-${V}
DISTNAME=	quake2-${V}
CATEGORIES=	games

HOMEPAGE=	http://www.yamagi.org/quake2/
MASTER_SITES=	http://deponie.yamagi.org/quake2/
EXTRACT_SUFX=	.tar.xz

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += GL SDL2 c m ogg openal pthread vorbis vorbisfile z

LIB_DEPENDS=	audio/libvorbis \
		audio/openal \
		devel/sdl2

MAKE_ENV+=	VERBOSE=1
USE_GMAKE=	Yes

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/yquake2 ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/${N}
	${INSTALL_PROGRAM} ${WRKBUILD}/release/{quake2,q2ded} \
	    ${PREFIX}/share/${N}/
	${INSTALL_DATA_DIR} ${PREFIX}/share/${N}/baseq2
	${INSTALL_PROGRAM} ${WRKBUILD}/release/baseq2/game.so \
	    ${PREFIX}/share/${N}/baseq2/

.include <bsd.port.mk>