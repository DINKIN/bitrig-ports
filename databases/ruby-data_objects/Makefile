# $OpenBSD: Makefile,v 1.24 2015/06/19 14:04:16 jasper Exp $

COMMENT =	unified Ruby API for popular databases

DISTNAME =	data_objects-0.10.16
CATEGORIES =	databases

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		www/ruby-addressable,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =		rspec3
MODRUBY_TEST_TARGET =	spec/*_spec.rb
TEST_DEPENDS =		devel/ruby-rspec/3/its,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
