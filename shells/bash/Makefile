# $OpenBSD: Makefile,v 1.97 2016/03/09 19:11:35 naddy Exp $

BROKEN-sparc=	Segmentation fault on any non-trivial script

COMMENT=	GNU Bourne Again Shell

DISTNAME=	bash-4.3.30
PKGNAME=	bash-4.3.42
CATEGORIES=	shells
HOMEPAGE=	http://cnswww.cns.cwru.edu/~chet/bash/bashtop.html

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=bash/}
MASTER_SITES0=	${MASTER_SITE_GNU:=bash/bash-4.3-patches/}
DIST_SUBDIR=	bash
.for i in 31 32 33 34 35 36 37 38 39 40 41 42
PATCHFILES+=	bash43-0$i:0
.endfor

MODULES=	devel/gettext
WANTLIB=	c termcap

CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support

CFLAGS=-Wno-parentheses -DHAVE_DPRINTF

# Prefer system mktemp(3) and mkstemp(3) over homegrown replacements
CONFIGURE_ENV=	CPPFLAGS="-DUSE_MKTEMP -DUSE_MKSTEMP"

.include <bsd.port.mk>
