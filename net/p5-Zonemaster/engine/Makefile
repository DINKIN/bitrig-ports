# $OpenBSD: Makefile,v 1.4 2016/03/20 19:56:58 naddy Exp $

COMMENT =	tool to check the quality of a DNS zone

MODULES =	cpan
V =		1.0.13
CPAN_AUTHOR =	IIS
DISTNAME =	Zonemaster-v$V
PKGNAME =	p5-Zonemaster-engine-$V
CATEGORIES =	net

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	perl

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		converters/p5-JSON>=2.53 \
			converters/p5-JSON-XS \
			devel/p5-File-ShareDir>=1.00 \
			devel/p5-File-Slurp \
			devel/p5-Hash-Merge \
			devel/p5-libintl \
			devel/p5-List-MoreUtils \
			devel/p5-Module-Find>=0.10 \
			devel/p5-Moose>=2.0401 \
			devel/p5-Readonly \
			mail/p5-Mail-RFC822-Address \
			net/p5-IO-Socket-INET6>=2.69 \
			net/p5-Net-IP-XS \
			net/p5-Net-LDNS>=0.71

TEST_DEPENDS =		converters/p5-JSON-XS>=2.32 \
			devel/p5-Pod-Coverage \
			devel/p5-Test-Fatal

.include <bsd.port.mk>
