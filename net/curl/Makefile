# $OpenBSD: Makefile,v 1.116 2016/03/11 20:28:28 naddy Exp $

COMMENT=	get files from FTP, Gopher, HTTP or HTTPS servers

VERSION=	7.47.0
DISTNAME=	curl-${VERSION}
REVISION=	0
SHARED_LIBS=	curl                 25.3     # 8.0
CATEGORIES=	net
HOMEPAGE=	https://curl.haxx.se/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://curl.haxx.se/download/ \
		https://dl.uxnr.de/mirror/curl/
EXTRACT_SUFX=	.tar.lzma

MODULES=	devel/gettext
LIB_DEPENDS=	devel/libidn \
		www/nghttp2
WANTLIB=	c crypto idn nghttp2 ssl z

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-ca-bundle=/etc/ssl/cert.pem \
		--with-libidn=${LOCALBASE} \
		--without-libpsl \
		--without-libssh2
CONFIGURE_ENV=	ac_cv_path_NROFF="/usr/bin/mandoc -Tascii"

# speed up some time-consuming configure tests
CONFIGURE_ENV+= \
    curl_cv_func_select_args="int,fd_set *,struct timeval *,int" \
    curl_cv_func_recv_args="int,void *,size_t,int,ssize_t" \
    curl_cv_func_send_args="int,const void *,size_t,int,ssize_t" \
    curl_cv_func_getnameinfo_args="const struct sockaddr *,socklen_t,size_t,int"

# Note:
# use ulimit -p 256 for test

.include <bsd.port.mk>
