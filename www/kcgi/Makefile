# $OpenBSD: Makefile,v 1.18 2016/03/18 01:41:41 jturner Exp $

COMMENT =		minimal CGI library for web applications

DISTNAME =		kcgi-0.8.1
CATEGORIES =		www

HOMEPAGE =		http://kristaps.bsd.lv/kcgi/
MASTER_SITES =		http://kristaps.bsd.lv/kcgi/snapshots/
EXTRACT_SUFX =		.tgz

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

NO_CONFIGURE =		Yes

TEST_DEPENDS =		net/curl
TEST_TARGET =		regress

.include <bsd.port.mk>
