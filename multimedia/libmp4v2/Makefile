# $OpenBSD: Makefile,v 1.10 2016/03/11 19:59:15 naddy Exp $

COMMENT =		read and manipulate the MP4 container format

DISTNAME =		mp4v2-1.9.1
PKGNAME =		lib${DISTNAME}
REVISION =		3
CATEGORIES =		multimedia audio

SHARED_LIBS =		mp4v2	4.0 #1.9

HOMEPAGE =		https://code.google.com/p/mp4v2/

# MPLv1.1
PERMIT_PACKAGE_CDROM =	Patents
PERMIT_PACKAGE_FTP =	Yes

WANTLIB =		c m
WANTLIB +=		c++ c++abi pthread

MASTER_SITES =		https://mp4v2.googlecode.com/files/
EXTRACT_SUFX =		.tar.bz2

BUILD_DEPENDS =		devel/help2man
USE_GMAKE =		Yes
MAKE_FILE =		GNUmakefile
CONFIGURE_STYLE =	gnu
MODGNU_CONFIG_GUESS_DIRS =	${WRKDIST} \
				${WRKDIST}/autoaux

.include <bsd.port.mk>
