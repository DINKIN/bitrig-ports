# $OpenBSD: Makefile,v 1.12 2016/03/22 13:39:15 sthen Exp $

COMMENT =	interface to the Skein digest algorithm

DISTNAME =	Digest-Skein-0.05
CATEGORIES =	security

REVISION =	5

HOMEPAGE =	http://www.skein-hash.info/

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

MODULES =	cpan

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mle}
BO=	LITTLE
.else
BO=	BIG
.endif

pre-configure:
	@perl -pi -e 's,!!ENDIAN!!,IS_${BO}_ENDIAN,g' \
		${WRKSRC}/Optimized_64bit/brg_endian.h

.include <bsd.port.mk>
