# $OpenBSD: Makefile,v 1.16 2016/03/06 20:27:24 bentley Exp $

COMMENT =		CSS parser and selection engine

NETSURF_PROJECT =	libcss
NETSURF_VERSION =	0.6.0

SHARED_LIBS =		css 4.1 #0.5.0

MODULES =		converters/libiconv

LIB_DEPENDS =		www/netsurf/libparserutils>=0.2.1 \
			www/netsurf/libwapcaplet>=0.2.2
WANTLIB += parserutils wapcaplet

.include <bsd.port.mk>
