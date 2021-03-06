# $OpenBSD: Makefile,v 1.16 2016/03/16 21:19:39 naddy Exp $

COMMENT=	G.729a voice codec for Asterisk
DISTNAME=	asterisk-g72x-1.3
REVISION=	0
PKGNAME=	${DISTNAME:S/g72x/g729/}
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	telephony
MASTER_SITES=	http://asterisk.hosting.lv/src/

HOMEPAGE=	http://asterisk.hosting.lv/

# GPL frontend to patented algorithm; free to use for non-commercial purposes
PERMIT_DISTFILES_FTP=	contains non-compiled proprietary Intel code
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += bcg729

NO_TEST=	Yes

AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.15

BUILD_DEPENDS=	${RUN_DEPENDS} \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libblocksruntime \
		devel/libtool # m4
RUN_DEPENDS=	telephony/asterisk>=13.0,<=14.0
LIB_DEPENDS=	telephony/bcg729

CONFIGURE_STYLE=  gnu
CONFIGURE_ARGS+= --with-asterisk-includes=${LOCALBASE}/include \
		--with-asterisk130 \
		--with-bcg729
CONFIGURE_ENV=	LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" CPPFLAGS="-fblocks"

post-patch:
	cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

post-install:
	rm ${PREFIX}/lib/asterisk/modules/codec_g729.a # pointless

# to build astconv (when fixed for ast13+ API):
# cd ${WRKSRC}; ${MAKE_PROGRAM} astconv CPPFLAGS=-I${LOCALBASE}/include \
#	    CFLAGS="${CFLAGS} -D_GNU_SOURCE -Wall -rdynamic" LDFLAGS=-lm

.include <bsd.port.mk>
