# $OpenBSD: Makefile,v 1.12 2016/03/20 19:57:00 naddy Exp $

COMMENT=	RSA public-key cryptosystem

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Crypt-RSA-1.99
REVISION=	1
CATEGORIES=	security

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	converters/p5-Convert-ASCII-Armour \
		devel/p5-Data-Buffer \
		security/p5-Crypt-CBC \
		security/p5-Crypt-Primes \
		security/p5-Digest-MD2 \
		security/p5-Digest-SHA1 \
		security/p5-Tie-EncryptedHash \
		textproc/p5-Sort-Versions

.include <bsd.port.mk>
