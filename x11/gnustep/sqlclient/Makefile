# $OpenBSD: Makefile,v 1.19 2016/03/05 16:04:09 pascal Exp $

COMMENT =	GNUstep database abstraction layer

VERSION =	1.8.1
REVISION =	2
DISTNAME =	SQLClient-${VERSION}
PKGNAME =	gnustep-sqlclient-${VERSION}

SHLIB_VERSION =	2.0
SHARED_LIBS +=  SQLClient	${SHLIB_VERSION}

CATEGORIES =	databases

HOMEPAGE =	http://wiki.gnustep.org/index.php/SQLClient

MASTER_SITES =	${MASTER_SITE_GNUSTEP:=libs/}

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI = 	No
WANTLIB +=		Performance pq ecpg mysqlclient sqlite3
LIB_DEPENDS +=		x11/gnustep/performance \
			databases/mariadb \
			databases/postgresql

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-additional-include="-I${LOCALBASE}/include \
				-I${LOCALBASE}/include/postgresql" \
			--with-additional-lib=-L${LOCALBASE}/lib
MAKE_FLAGS +=	SQLClient_INTERFACE_VERSION=${LIBSQLClient_VERSION}

SUBST_VARS +=	SHLIB_VERSION

.include <bsd.port.mk>
