# $OpenBSD: Makefile,v 1.13 2015/03/16 18:07:52 naddy Exp $

COMMENT=	library for navigating to arbitrary packets in a trace file

DISTNAME=	libpcapnav-0.8
REVISION=	3
SHARED_LIBS=	pcapnav	1.0
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netdude/}

HOMEPAGE=	http://netdude.sourceforge.net/doco/libpcapnav/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		pcap

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-html-dir=${PREFIX}/share/doc/libpcapnav

.include <bsd.port.mk>
