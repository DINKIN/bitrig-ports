# $OpenBSD: Makefile,v 1.72 2016/03/20 19:56:10 naddy Exp $

COMMENT=	access to PostgreSQL databases through the DBI

MODULES=	cpan databases/postgresql
DISTNAME=	DBD-Pg-3.5.3
CATEGORIES=	databases

LIB_DEPENDS=	databases/postgresql
RUN_DEPENDS=	databases/p5-DBI>=1.52
BUILD_DEPENDS=	${RUN_DEPENDS}
TEST_DEPENDS=	devel/p5-Test-Warn

MODPOSTGRESQL_TEST_DBNAME =	testdb
TEST_FLAGS=	DBI_DSN="dbi:Pg:dbname=${MODPOSTGRESQL_TEST_DBNAME}"\
		DBI_PASS="" \
		DBI_USER=`id -nu`
# XXX if DBI_USER is empty tests try to roll their own initdb + createdb

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=	c m perl pq>=2

CONFIGURE_ENV+=	POSTGRES_HOME="${LOCALBASE}" \
		POSTGRES_LIB="${LOCALBASE}/lib" \
		POSTGRES_INCLUDE="${LOCALBASE}/include/postgresql"

.include <bsd.port.mk>
