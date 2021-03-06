# $OpenBSD: Makefile,v 1.37 2016/03/18 21:38:24 naddy Exp $

COMMENT=	virtual machine designed for interpreted languages

V=		7.10.0
DISTNAME=	parrot-$V
REVISION=	0
CATEGORIES=	lang perl6
SHARED_LIBS=	parrot	11.0

HOMEPAGE=	http://www.parrot.org/

MASTER_SITES=	http://ftp.parrot.org/releases/all/$V/ \
		ftp://ftp.parrot.org/pub/parrot/releases/all/$V/

# Artistic2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL GLU c glut gmp icudata icuuc m ncurses pthread
WANTLIB += readline util z ffi
WANTLIB += c++ c++abi

MODULES =		devel/gettext
BUILD_DEPENDS=		graphics/glew \
			devel/pcre
LIB_DEPENDS=		textproc/icu4c \
			devel/gmp \
			graphics/freeglut \
			devel/libffi \
			devel/readline
TEST_DEPENDS=		devel/p5-TAP-Harness-Multiple \
			devel/p5-Test-Perl-Critic

MODULES +=		gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c

CONFIGURE_SCRIPT=	/usr/bin/perl Configure.pl
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+= \
	--prefix="${PREFIX}" \
	--cc="${CC}" \
	--ccflags="-I${LOCALBASE}/include -I${X11BASE}/include -pthread" \
	--optimize="${CFLAGS}" \
	--link="${CXX}" \
	--linkflags="-L${LOCALBASE}/lib -L${X11BASE}/lib -pthread" \
	--ld="${CXX}" \
	--ldflags="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
	--make="${MAKE_PROGRAM}" \
	--parrot_is_shared \
	--icu-config="${LOCALBASE}/bin/icu-config"

CONFIGURE_ENV =		LIBparrot_VERSION=${LIBparrot_VERSION}

MAKE_ENV=		LIBparrot_VERSION=${LIBparrot_VERSION}

ALL_TARGET =		all docs
INSTALL_TARGET =	install install-doc
TEST_TARGET=		fulltest

SUBST_VARS +=		V

post-extract:
	@cp ${FILESDIR}/bitrig.pm ${WRKSRC}/config/init/hints/

post-install:
	${INSTALL_DATA} ${WRKSRC}/blib/lib/libparrot.so.${LIBparrot_VERSION} \
		${PREFIX}/lib

.include <bsd.port.mk>
