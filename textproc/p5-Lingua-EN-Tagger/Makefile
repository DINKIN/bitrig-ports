# $OpenBSD: Makefile,v 1.6 2016/03/20 19:57:06 naddy Exp $

COMMENT =	part-of-speech tagger for EN natural language processing

DISTNAME =	Lingua-EN-Tagger-0.25
CATEGORIES =	textproc

# GPLv3 Only
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*

RUN_DEPENDS =	devel/p5-Memoize-ExpireLRU>=0.55 \
		textproc/p5-Lingua-Stem>=0.81 \
		www/p5-HTML-Parser>=3.45 \
		www/p5-HTML-Tagset>=3.20

.include <bsd.port.mk>
