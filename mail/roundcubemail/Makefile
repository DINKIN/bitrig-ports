# $OpenBSD: Makefile,v 1.108 2016/02/29 23:58:09 sthen Exp $

COMMENT=	imap4 webmail client

DISTNAME=	roundcubemail-1.1.4
CATEGORIES=	mail www
HOMEPAGE=	http://www.roundcube.net/
REVISION=	1

# GPLv3+ with exceptions for skins & plugins
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=roundcubemail/}

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/roundcubemail
TINSTDIR=	${TRUEPREFIX}/roundcubemail
SUBST_VARS=	INSTDIR TINSTDIR MODPHP_BIN

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-mcrypt \
		lang/php/${MODPHP_VERSION},-pspell \
		lang/php/${MODPHP_VERSION},-zip \
		mail/pear-Mail-Mime>=1.8.9 \
		mail/pear-Mail-mimeDecode>=1.5.5 \
		net/pear-Net-IDNA2>=0.1.1 \
		net/pear-Net-Sieve>=1.3.2 \
		net/pear-Net-SMTP>=1.6.2 \
		security/pear-Auth-SASL>=1.0.6

do-configure:
	${SUBST_CMD} ${WRKSRC}/bin/update.sh

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cd ${WRKSRC} && pax -rw .* * ${INSTDIR}
.for i in .htaccess config/mimetypes.php
	mv ${INSTDIR}/$i ${INSTDIR}/$i.dist
.endfor
	@${SUBST_CMD} -m 0644 -c ${FILESDIR}/roundcubemail.conf \
	    ${INSTDIR}/roundcubemail.conf.dist
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}; \
	chgrp -R wheel ${INSTDIR}/bin; \
	chmod -R o-rwx ${INSTDIR}/bin; \
	find ${INSTDIR} \( -name \*.orig -or -name \*.beforesubst -or \
	    -name \*.src \) -exec rm -f {} +
	find ${INSTDIR} \( -name \*.png -or -name \*.js -or \
	    -name \*.css \) -exec chmod -x {} +

.include <bsd.port.mk>
