# $OpenBSD: Makefile,v 1.34 2015/07/26 03:28:53 jeremy Exp $

COMMENT=	Ruby interface to some common LDAP libraries

PKGNAME=	ldap-0.9.17
DISTNAME=	ruby-${PKGNAME}
CATEGORIES=	databases

HOMEPAGE=	https://github.com/alexey-chebotar/ruby-ldap

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

WANTLIB=		crypto pthread ssl ldap_r lber

LIB_DEPENDS=		databases/openldap

CONFIGURE_STYLE=	ruby gem ext
CONFIGURE_ARGS=		--without-libldap

TEST_TARGET=		test
TEST_DEPENDS=	databases/openldap,-server
TEST_IS_INTERACTIVE = Yes

pre-build:
	mkdir -p ${GEM_BASE}/build_info;

do-test:
	cd ${WRKSRC} &&	/bin/sh ./test/test.sh ruby openldap2 \
		${LOCALBASE}/libexec/slapd ${SYSCONFDIR}/openldap/schema/

.include <bsd.port.mk>
