# $OpenBSD: Makefile,v 1.12 2016/01/24 20:13:59 jasper Exp $

PKG_ARCH=		*

COMMENT=		secure hosting of Git repositories

GH_ACCOUNT=		sitaramc
GH_PROJECT=		gitolite
GH_TAGNAME=		v3.6.4
CATEGORIES=		sysutils devel

HOMEPAGE=		https://github.com/sitaramc/gitolite/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/git

NO_BUILD=		Yes
NO_TEST=		Yes

SUBST_VARS+=		GH_TAGNAME
GL_DIR=			${PREFIX}/libexec/gitolite/

do-install:
	${SUBST_CMD} ${WRKSRC}/install
	${INSTALL_DATA_DIR} ${GL_DIR}
	perl ${WRKSRC}/install -to ${GL_DIR}
	cd ${PREFIX}/bin/ && ln -s ../libexec/gitolite/gitolite

.include <bsd.port.mk>
