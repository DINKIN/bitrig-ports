# $OpenBSD: Makefile,v 1.26 2015/06/20 19:31:24 ajacoutot Exp $

BROKEN-powerpc=	does not build, error: lvalue required as increment operand

COMMENT=	Portable Forth Environment

DISTNAME=	pfe-0.33.71
CATEGORIES=    	lang

SHARED_LIBS +=  pfe                  33.71    # .33.71
SHARED_LIBS +=  pfe-0-forth          33.71    # .33.71

HOMEPAGE=	http://pfe.sourceforge.net/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pfe/}
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	c m ncurses

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--mandir=${PREFIX}/man

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=--with-regs
.endif

# this renames floating.so to libfloating.so before linking with it
USE_LIBTOOL=	gnu

NO_TEST=	Yes

# clang crash
MODULES +=		gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++

MODGNU_CONFIG_GUESS_DIRS +=	${WRKSRC}/uses

# XXX remove CVS Id  (patch-pfe_Makefile_in)
post-extract:
	perl -pi -e 's,^#.*Id: Makefile.am.*,,' ${WRKSRC}/pfe/Makefile.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pfe/
	${INSTALL_DATA} ${WRKDIST}/doc/Forthprimer.pdf \
		${PREFIX}/share/doc/pfe/

.include <bsd.port.mk>
