# $OpenBSD: Makefile,v 1.20 2016/03/11 18:13:19 naddy Exp $

COMMENT=	source code editing component for GTK+

VERSION=	3.5.2
DISTNAME=	scintilla${VERSION:S/.//g}
PKGNAME=	scintilla-${VERSION}
CATEGORIES=	editors x11
REVISION=	2

SHARED_LIBS=	scintilla		9.0 \
		scintilla_lexers	9.0

HOMEPAGE=	http://www.scintilla.org/

# old Python license
PERMIT_PACKAGE_CDROM=	may not sell
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scintilla/}
EXTRACT_SUFX=	.tgz

USE_GMAKE=	Yes
NO_TEST=	Yes

MAKE_FILE=	makefile
MAKE_ENV=	CXX='${CXX}' CXXFLAGS='${CXXFLAGS}' \
		CC='${CC}' GTK3=1

WANTLIB=	m
WANTLIB+=	c++ c++abi pthread

# Not LIB_DEPENDS as it's only shared libraries that don't link directly
# to gtk+3
BUILD_DEPENDS=	x11/gtk+3
RUN_DEPENDS=	x11/gtk+3

.for n v in ${SHARED_LIBS}
MAKE_ENV+=	LIB$n_VERSION=${LIB$n_VERSION}
.endfor

WRKDIST=	${WRKDIR}/scintilla
WRKSRC=		${WRKDIST}/gtk

post-extract:
	perl -pi -e 's|\x0d||' ${WRKDIST}/include/*.h ${WRKDIST}/gtk/*.cxx \
	    ${WRKDIST}/src/*.cxx

pre-build:
	perl -pi -e 's|/usr/local|${LOCALBASE}|' ${WRKSRC}/${MAKE_FILE}

.include <bsd.port.mk>
