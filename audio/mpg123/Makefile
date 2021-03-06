# $OpenBSD: Makefile,v 1.82 2016/03/13 22:42:27 naddy Exp $

COMMENT=	fast console MPEG audio player and decoder library

DISTNAME=	mpg123-1.23.2
SHARED_LIBS=	mpg123		6.0	# 42.0
SHARED_LIBS+=	out123		0.0	# 1.1
CATEGORIES=	audio
HOMEPAGE=	http://www.mpg123.de/

# LGPL 2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mpg123/} \
		http://www.mpg123.de/download/
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	c ltdl m sndio
LIB_DEPENDS=	devel/libtool,-ltdl

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-static \
		--disable-lfs-alias \
		--with-audio=sndio \
		--with-module-suffix=.so \
		--with-optimization=0
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build

.if   ${MACHINE_ARCH} == "amd64"
# no support for AVX instructions in as(1)
USE_GMAKE=	Yes
BUILD_DEPENDS+=	devel/yasm

.elif ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=--with-cpu=arm_nofpu

.endif

# Do not build static modules
pre-patch:
	@cd ${WRKSRC}; mv Makefile.in Makefile.in.bak; sed '\
	    /^src_libout123_modules_.*_la_LINK =/ { \
		N; s/\$$(LIBTOOLFLAGS)/& --tag=disable-static/; \
	    }' Makefile.in.bak >Makefile.in

.include <bsd.port.mk>
