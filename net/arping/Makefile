# $OpenBSD: Makefile,v 1.43 2015/12/08 07:10:34 benoit Exp $

COMMENT =	ARP level ping utility

DISTNAME =	arping-2.16
CATEGORIES =	net

HOMEPAGE =	http://www.habets.pp.se/synscan/programs.php?prog=ARPing

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m net pcap lib/libnet-1.1/net=11

MASTER_SITES =	http://www.habets.pp.se/synscan/files/ \
		http://www.arcane-labs.net/download/OpenBSD/

LIB_DEPENDS =	net/libnet/1.1

CONFIGURE_STYLE = gnu
CONFIGURE_ENV = CFLAGS="${CFLAGS} -I${LOCALBASE}/include/libnet-1.1 \
		`libnet-config-1.1 --defines`" \
		LIBS="-L${LOCALBASE}/lib/libnet-1.1 -lnet"

pre-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/arping
		${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/arping

NO_TEST =	Yes

.include <bsd.port.mk>
