# $OpenBSD: Makefile,v 1.19 2016/03/11 19:59:15 naddy Exp $

COMMENT=	mail purpose library

GH_ACCOUNT=	dinhviethoa
GH_PROJECT=	libetpan
GH_TAGNAME=	1.6
DISTNAME=	libetpan-1.6
REVISION=	0
CATEGORIES=	mail devel

SHARED_LIBS=	etpan	15.0

HOMEPAGE=	http://www.etpan.org/libetpan.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto curl expat idn m nghttp2 pthread sasl2 ssl c++ c++abi z

MODULES=	devel/gettext

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool
LIB_DEPENDS+=	net/curl \
		devel/libidn \
		security/cyrus-sasl2

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-curl=auto \
		--with-sasl="${LOCALBASE}" \
		--without-gnutls
CONFIGURE_ENV+= CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	cd ${WRKSRC} && ${SETENV} \
	    AUTOCONF_VERSION="${AUTOCONF_VERSION}" \
	    AUTOMAKE_VERSION="${AUTOMAKE_VERSION}" \
	    NOCONFIGURE=1 \
	   ./autogen.sh

.include <bsd.port.mk>
