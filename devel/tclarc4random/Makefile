# $OpenBSD: Makefile,v 1.3 2016/03/18 23:12:16 naddy Exp $

COMMENT =		arc4random for Tcl

DISTNAME =		tclarc4random-0.3
CATEGORIES =		devel
HOMEPAGE =		http://www3.bell.net/stwo/

# ISC
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		aryler
GH_PROJECT =		Tclarc4random
GH_TAGNAME =		0.3

MODULES =		lang/tcl
BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	itzev
CONFIGURE_ARGS +=	-tcl ${MODTCL_VERSION}

.include <bsd.port.mk>
