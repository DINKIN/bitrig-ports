# $OpenBSD: Makefile,v 1.5 2016/03/07 13:01:28 zhuk Exp $

COMMENT=		GUI for synergy

DISTNAME=		qsynergy-0.9.1
REVISION=		3
CATEGORIES=		net x11

HOMEPAGE=		http://sourceforge.net/projects/qsynergy/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=qsynergy/}

MODULES=		x11/qt4
CONFIGURE_STYLE=	qmake

WANTLIB += 		ICE QtGui QtNetwork SM X11 Xext Xi Xinerama Xrender
WANTLIB += 		c fontconfig freetype m pthread
WANTLIB += 		c++ c++abi

RUN_DEPENDS=		devel/desktop-file-utils \
			net/synergy

pre-configure:
	@perl -pi -e 's,/usr,${LOCALBASE},g' ${WRKSRC}/src/AppConfig.cpp

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/qsynergy ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${WRKSRC}/dist/qsynergy.xpm ${PREFIX}/share/pixmaps/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/dist/debian/qsynergy.desktop \
		${PREFIX}/share/applications/

.include <bsd.port.mk>
