# $OpenBSD: Makefile,v 1.8 2015/12/11 17:52:39 jturner Exp $

COMMENT =		client for the sslmate.com online certificate service

DISTNAME =		sslmate-1.5.1
CATEGORIES =		sysutils

HOMEPAGE =		https://sslmate.com
MASTER_SITES =		https://packages.sslmate.com/other/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-Term-ReadKey \
			www/p5-libwww \
			www/p5-LWP-Protocol-https

NO_CONFIGURE =		Yes
NO_BUILD =		Yes

FAKE_FLAGS =		PREFIX="${PREFIX}" \
			MANDIR="${PREFIX}/man"

NO_TEST =		Yes

.include <bsd.port.mk>
