# $OpenBSD: Makefile,v 1.4 2016/03/20 19:57:20 naddy Exp $

COMMENT =	HTTP Style Messages

DISTNAME =	HTTP-Message-6.11
CATEGORIES =	www

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	textproc/p5-Encode-Locale>=1.00 \
		www/p5-IO-HTML \
		www/p5-HTTP-Date>=6.00 \
		www/p5-LWP-MediaTypes>=6.00 \
		www/p5-URI>=1.10

BUILD_DEPENDS =	${RUN_DEPENDS}

post-build:
		@find ${WRKSRC}/blib \( -name "*.orig" -or -name "*.rej" \) -exec rm -f {} \;

.include <bsd.port.mk>
