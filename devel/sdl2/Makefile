# $OpenBSD: Makefile,v 1.14 2016/03/19 11:34:50 landry Exp $

COMMENT=	cross-platform multimedia library
BROKEN-hppa=	src/atomic/SDL_spinlock.c:101:2: error: #error Please implement for your platform.

V=		2.0.4
DISTNAME=	SDL2-${V}
REVISION=	2
PKGNAME=	sdl2-${V}
CATEGORIES=	devel
MASTER_SITES=	http://www.libsdl.org/release/

SHARED_LIBS=	SDL2	0.2

HOMEPAGE=	http://www.libsdl.org/

# zlib
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=		Yes
SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/build-scripts
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS+= --disable-alsa \
		 --disable-arts \
		 --disable-dbus \
		 --disable-esd \
		 --disable-ibus \
		 --disable-libudev \
		 --disable-nas \
		 --disable-oss \
		 --disable-pulseaudio
# in case devel/usb is installed, don't pick it up.
CONFIGURE_ENV+= ac_cv_lib_usb_hid_init=no \
		ac_cv_header_usb_h=no
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/build-scripts

WANTLIB=	m pthread sndio usbhid
# GL/X11/Xext/Xrender/Xrandr are dlopen'd by SDL
WANTLIB+=       GL X11 Xau Xdmcp Xext Xrandr Xrender pthread-stubs xcb

NO_TEST=	Yes

.include <bsd.port.mk>
