# $OpenBSD: Makefile,v 1.25 2015/11/11 10:41:00 dcoppa Exp $

COMMENT=	GNU versions of grep pattern matching utilities

DISTNAME=	grep-2.22
PKGNAME=	g${DISTNAME}
REVISION=	0
CATEGORIES=	sysutils
HOMEPAGE=	https://www.gnu.org/software/grep/grep.html

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=grep/}

EXTRACT_SUFX=	.tar.xz

WANTLIB=	c pcre
MODULES=	devel/gettext
LIB_DEPENDS=	devel/pcre

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-prefix=g
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
