# $OpenBSD: Makefile,v 1.4 2016/03/20 19:56:10 naddy Exp $

COMMENT =	create a temporary database from a DBIx::Class::Schema

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	DBICx-TestDatabase-0.05
CATEGORIES =	databases
CPAN_AUTHOR =	JROCKWAY

# same as perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	databases/p5-DBD-SQLite \
		databases/p5-SQL-Translator

TEST_DEPENDS =	databases/p5-DBIx-Class \
		devel/p5-Test-use-ok

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
