# $OpenBSD: Makefile,v 1.30 2016/03/11 20:28:28 naddy Exp $

COMMENT=		ffmpeg elements for GStreamer

DISTNAME=		gst-libav-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-libav-${V}

# sync with graphics/ffmpeg
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += bz2 ffi glib-2.0 gmodule-2.0 gobject-2.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 lzma m orc-0.4 pcre pthread z

MASTER_SITES=		${MASTER_SITE_GST:=gst-libav/}

LIB_DEPENDS=		${P}/plugins-base=${V} \
			archivers/xz

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS +=	devel/yasm
.endif

.if ${MACHINE_ARCH:Marm}
# uses ARM EABI
GST_LIBAV_ARCH=		generic
.else
GST_LIBAV_ARCH=		${MACHINE_ARCH}
.endif

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC} ${WRKSRC}/gst-libs/ext/libav

libav_CONFIGURE_ARGS=	--arch=${GST_LIBAV_ARCH} \
			--cc=${CC} \
			--enable-gpl \
			--enable-runtime-cpudetect \
			--disable-altivec \
			--disable-armv5te \
			--disable-armv6 \
			--disable-armv6t2 \
			--disable-sdl \
			--disable-vfp \
			--disable-debug

CONFIGURE_ARGS=		--with-libav-extra-configure="${libav_CONFIGURE_ARGS}"

MAKE_ENV=		V=1

# make sure bundled libav headers are chosen over the system FFmpeg ones
CPPFLAGS +=		-I${WRKBUILD}/gst-libs/ext/libav

pre-configure:
	sed -i 's,-O3,,g' ${WRKSRC}/gst-libs/ext/libav/configure

.include <bsd.port.mk>
