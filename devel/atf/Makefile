# $OpenBSD: Makefile,v 1.3 2016/03/11 19:59:12 naddy Exp $

COMMENT =		Automated Testing Framework
DISTNAME =		atf-0.18

SHARED_LIBS +=		atf-c++                   0.0 # 0.0
SHARED_LIBS +=		atf-c                     0.0 # 0.0

CATEGORIES =		devel
HOMEPAGE =		https://github.com/jmmv/atf
REVISION=		2

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m
WANTLIB += c++ c++abi pthread

MASTER_SITES =		https://github.com/jmmv/atf/releases/download/${DISTNAME}/

CONFIGURE_STYLE =	gnu
# Don't pickup bash
CONFIGURE_ENV =		ATF_SHELL=/bin/sh
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/admin

TEST_DEPENDS =		${BASE_PKGPATH} \
			devel/kyua-cli
TEST_TARGET =		installcheck

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
