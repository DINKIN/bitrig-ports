# $OpenBSD: Makefile,v 1.33 2016/03/21 14:39:27 mmcc Exp $

COMMENT=	powerful IMAP/Maildir synchronization and reader support

MODPY_EGG_VERSION = 6.7.0
GH_ACCOUNT =	OfflineIMAP
GH_PROJECT =	offlineimap
GH_TAGNAME =	v${MODPY_EGG_VERSION}
DISTNAME=	offlineimap-${MODPY_EGG_VERSION}
REVISION=	0
CATEGORIES=	mail

HOMEPAGE=	http://www.offlineimap.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

NO_TEST=	Yes

MODULES=	lang/python

BUILD_DEPENDS=	textproc/asciidoc

EXAMPLESDIR=	${PREFIX}/share/examples/offlineimap

post-build:
	${LOCALBASE}/bin/a2x -f manpage ${WRKSRC}/docs/offlineimap.txt
	${LOCALBASE}/bin/a2x -f manpage ${WRKSRC}/docs/offlineimapui.txt

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/offlineimap.conf{,.minimal} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/offlineimap.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/docs/offlineimapui.7 ${PREFIX}/man/man7

.include <bsd.port.mk>
