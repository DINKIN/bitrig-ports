# $OpenBSD: Makefile,v 1.5 2016/03/16 16:46:32 naddy Exp $

COMMENT =	monitor PostgreSQL activity & statistics

DISTNAME =	pg_statsinfo-2.4.1
CATEGORIES =	databases
REVISION =	1

HOMEPAGE =	http://pgstatsinfo.projects.pgfoundry.org/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://pgfoundry.org/frs/download.php/3429/

USE_GMAKE =	Yes
MAKE_FLAGS =	USE_PGXS=1 CFLAGS="-DPG_USE_INLINE" LDFLAGS=-lkvm

BUILD_DEPENDS =	databases/postgresql,-server
LIB_DEPENDS =	databases/postgresql

WANTLIB += c crypto kvm m pq pthread readline ssl termcap xml2 z

.include <bsd.port.mk>
