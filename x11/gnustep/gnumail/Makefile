# $OpenBSD: Makefile,v 1.23 2016/03/05 16:04:08 pascal Exp $

COMMENT=	GNUstep mail application

DISTNAME =	GNUMail-1.2.2
REVISION =	2
SHLIB_VERSION =	2.1
SHARED_LIBS =	GNUMail ${SHLIB_VERSION}
CATEGORIES=	mail

HOMEPAGE=	http://www.collaboration-world.com/gnumail

WANTLIB +=	crypto ssl AddressView Addresses Pantomime

MASTER_SITES=	http://download.gna.org/gnustep-nonfsf/

MODULES=	x11/gnustep
LIB_DEPENDS=	x11/gnustep/addresses \
		x11/gnustep/pantomime>=1.2.2

MAKE_ENV+=	GNUMail_INTERFACE_VERSION=${LIBGNUMail_VERSION}

BUNDLES=	Account Advanced Clock Colors Compose Emoticon Fonts \
		Filtering Face Import MIME PGP Receiving Sending Viewing

SUBST_VARS +=	SHLIB_VERSION

.include <bsd.port.mk>
