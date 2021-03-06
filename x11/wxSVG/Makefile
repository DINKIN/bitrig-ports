# $OpenBSD: Makefile,v 1.33 2016/03/11 19:59:18 naddy Exp $

COMMENT=		C++ library to create, manipulate and render SVG files


DISTNAME=		wxsvg-1.5.5
EPOCH=			0
REVISION=		1
CATEGORIES=		x11 graphics
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=wxsvg/}
EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS+=		wxsvg	3.3

HOMEPAGE=		http://wxsvg.sourceforge.net/

# Modified LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=	ICE SDL SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB+=	Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 avcodec
WANTLIB+=	avformat avutil bz2 c cairo crypto expat ffi fontconfig
WANTLIB+=	freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB+=	gmodule-2.0 gobject-2.0 graphite2 gsm gthread-2.0 gtk-x11-2.0
WANTLIB+=	harfbuzz iodbc jpeg m mp3lame mspack ogg opus pango-1.0
WANTLIB+=	pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB+=	pthread-stubs sndio speex ssl swresample swscale tiff
WANTLIB+=	usbhid vorbis vorbisenc vpx wx_base wx_base_net
WANTLIB+=	wx_base_odbc wx_base_xml wx_gtk2_adv wx_gtk2_aui wx_gtk2_core
WANTLIB+=	wx_gtk2_dbgrid wx_gtk2_html wx_gtk2_qa wx_gtk2_richtext
WANTLIB+=	wx_gtk2_xrc x264 xcb xcb-render xcb-shm xvidcore z x265
WANTLIB+=	c++ c++abi

MODULES=	devel/gettext
LIB_DEPENDS =	graphics/ffmpeg \
		graphics/cairo \
		x11/wxWidgets

CONFIGURE_STYLE=	gnu

NO_TEST=	Yes

.include <bsd.port.mk>
