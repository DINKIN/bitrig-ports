# $OpenBSD: Makefile,v 1.8 2016/03/11 20:28:21 naddy Exp $

BROKEN-hppa=	ICE on prj.c:4381
COMMENT =	implementation of the FITS WCS standard
CATEGORIES =	astro devel
DISTNAME =	wcslib-4.17
HOMEPAGE =	http://www.atnf.csiro.au/people/mcalabre/WCS/wcslib/
REVISION =	3

SHARED_LIBS =	wcs		0.0

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c cfitsio m

MASTER_SITES =	ftp://ftp.atnf.csiro.au/pub/software/wcslib/
EXTRACT_SUFX =	.tar.bz2

MODULES =		fortran

LIB_DEPENDS =	math/cfitsio

USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoconf
CONFIGURE_ENV =		LIBwcs_VERSION=${LIBwcs_VERSION}
MODGNU_CONFIG_GUESS_DIRS =${WRKDIST}/config

CONFIGURE_ARGS =	--docdir=${PREFIX}/share/doc/wcslib \
			--with-x

# non-free licensed dependency
CONFIGURE_ARGS +=	--without-pgplot

AUTOCONF_VERSION =	2.61
MAKE_FILE =		GNUmakefile
SUBST_VARS =		DISTNAME

# source files are 0444
post-extract:
	chmod u+w ${WRKSRC}/*

.include <bsd.port.mk>
