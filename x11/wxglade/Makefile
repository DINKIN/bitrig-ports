# $OpenBSD: Makefile,v 1.1.1.1 2015/10/13 16:58:07 jca Exp $

COMMENT=		GUI designer for wxWidgets/wxPython user interfaces

MODPY_EGG_VERSION=	0.7.0
DISTNAME=		wxGlade-${MODPY_EGG_VERSION}
PKGNAME=		wxglade-${MODPY_EGG_VERSION}

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=wxglade/}

CATEGORIES=		devel x11

HOMEPAGE=		http://wxglade.sourceforge.net/
MAINTAINER=		Daniel Winters <daniel@tydirium.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_ADJ_FILES=	./*.py test/*.py test/casefiles/*.py

RUN_DEPENDS=		x11/py-wxPython \
			devel/desktop-file-utils

PORTHOME=		${WRKDIR}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/wxglade ${WRKSRC}/wxGlade.desktop

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	mv ${PREFIX}/share/doc/wxglade/wxGlade.desktop \
	    ${PREFIX}/share/applications/
	mv ${PREFIX}/share/man/man1/wxglade.1 ${PREFIX}/man/man1
	rm -Rf ${PREFIX}/share/man

.include <bsd.port.mk>
