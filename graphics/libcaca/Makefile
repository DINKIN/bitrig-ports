# $OpenBSD: Makefile,v 1.32 2015/11/24 09:11:05 jasper Exp $

COMMENT=		color ascii art library

DISTNAME=		libcaca-0.99.beta19
PKGNAME=		libcaca-0.99.19
SHARED_LIBS +=  caca           1.2               # .0.99
CATEGORIES=		graphics
REVISION=		1

HOMEPAGE=		http://caca.zoy.org/wiki/libcaca

# LGPLv2.1/Do What The Fuck You Want To Public License
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=		c ncursesw m z

MASTER_SITES=		http://caca.zoy.org/files/libcaca/ \
			https://distfiles.nl/

FLAVORS=		no_x11
FLAVOR?=

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/.auto

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=	--disable-x11 \
			--disable-imlib2
.else
LIB_DEPENDS =    	graphics/imlib2
WANTLIB +=		X11 Xext freetype xcb Imlib2>=1
.endif

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--disable-doc \
			--disable-slang \
			--disable-ruby \
			--disable-java \
			--disable-csharp \
			--disable-cxx \
			--disable-zzuf \
			--disable-cppunit

# Tests are bogus: assume gmake, assume Windows.
NO_TEST =		Yes

.include <bsd.port.mk>
