# $OpenBSD: Makefile,v 1.3 2015/12/30 10:46:47 ajacoutot Exp $

V =		1.4.4
COMMENT =	user-friendly text pager
DISTNAME =	lookat_bekijk-${V}
PKGNAME =	lookat-${V}
CATEGORIES =	sysutils textproc

HOMEPAGE =	http://www.wagemakers.be/english/programs/lookat

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c ncurses

MASTER_SITES =	http://www.wagemakers.be/downloads/lookat/

CONFIGURE_STYLE =	gnu

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/lookat ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/lookat.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lookat
	${INSTALL_DATA} ${WRKSRC}/lookat.conf.default \
		${PREFIX}/share/examples/lookat
	${INSTALL_DATA} ${WRKSRC}/examples/blue_config.cfg \
		${PREFIX}/share/examples/lookat
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lookat
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/lookat

.include <bsd.port.mk>
