# $OpenBSD: Makefile,v 1.14 2016/03/18 21:38:26 naddy Exp $

COMMENT=	apache HTTP server request library

DISTNAME=	libapreq2-2.08
PKGNAME=	p5-${DISTNAME}
REVISION=	5
CATEGORIES=	www

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../by-authors/id/J/JO/JOESUF/}
MODULES=	converters/libiconv
SHARED_LIBS=	apreq2	9.0

# Artistic + GPL
PERMIT_PACKAGE_CDROM=  Yes

WANTLIB += apr-1 aprutil-1 db expat pthread

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-perl-glue \
		--with-apache2-apxs=${LOCALBASE}/sbin/apxs2

BUILD_DEPENDS=	devel/p5-ExtUtils-XSBuilder \
	 	www/p5-Apache-Test \
		www/ap2-mod_perl
LIB_DEPENDS=	devel/apr \
		devel/apr-util

RUN_DEPENDS =	www/ap2-mod_perl

TEST_DEPENDS=www/p5-Apache-Test

post-test:
	cd ${WRKSRC}/glue/perl && \
	    LD_LIBRARY_PATH="${WRKSRC}/library/.libs:${LOCALBASE}" ${MAKE} test

.include <bsd.port.mk>
