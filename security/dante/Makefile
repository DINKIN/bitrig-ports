# $OpenBSD: Makefile,v 1.45 2016/03/11 19:59:16 naddy Exp $

COMMENT=	SOCKS client and server

DISTNAME=	dante-1.4.1
CATEGORIES=	security

SHARED_LIBS=	dsocks	1.2 \
		socks	1.2
MODGNU_SHARED_LIBS=dsocks	'-all-dynamic' \
		socks		''

HOMEPAGE=	http://www.inet.no/dante/

MASTER_SITES=	${HOMEPAGE}/files/

# BSD/CMU
PERMIT_PACKAGE_CDROM=Yes

WANTLIB=	c m

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ARGS+= --without-gssapi \
		--without-krb5 \
		--without-ldap \
		--without-libwrap \
		--without-pam \
		--without-sasl \
		--without-upnp

MODGNU_CONFIG_GUESS_DIRS+= ${WRKSRC}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bin/socksify.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dante
	${INSTALL_DATA} ${WRKSRC}/doc/README.* ${PREFIX}/share/doc/dante
	${INSTALL_DATA} ${WRKSRC}/doc/SOCKS4.* ${PREFIX}/share/doc/dante
	${INSTALL_DATA} ${WRKSRC}/doc/rfc* ${PREFIX}/share/doc/dante
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dante
	${INSTALL_DATA} ${WRKSRC}/example/*.conf ${PREFIX}/share/examples/dante

.include <bsd.port.mk>
