# $OpenBSD: Makefile,v 1.3 2016/03/16 16:46:32 naddy Exp $

COMMENT =		arc4random for Jim

DISTNAME =		jimarc4random-0.3
CATEGORIES =		devel
HOMEPAGE =		http://www3.bell.net/stwo/

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB	=		jim

GH_ACCOUNT =		aryler
GH_PROJECT =		Jimarc4random
GH_TAGNAME =		0.3

BUILD_DEPENDS =		lang/jimtcl
RUN_DEPENDS =		lang/jimtcl
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	itzev

.include <bsd.port.mk>
