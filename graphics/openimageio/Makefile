# $OpenBSD: Makefile,v 1.18 2016/03/20 16:12:24 naddy Exp $

COMMENT =		library for reading and writing images

GH_ACCOUNT = 		OpenImageIO
GH_PROJECT = 		oiio
V =			1.5.20
GH_TAGNAME =		Release-$V
DISTNAME =		openimageio-${V}

SHARED_LIBS +=		OpenImageIO		3.0 # 1.0
SHARED_LIBS +=  	OpenImageIO_Util	0.0 # 1.5

CATEGORIES =		graphics devel

HOMEPAGE =		https://sites.google.com/site/openimageio/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLEW GLU Half Iex IlmImf IlmThread Imath OpenColorIO
WANTLIB += QtGui QtOpenGL avcodec avformat avutil boost_filesystem-mt
WANTLIB += boost_python-mt boost_regex-mt boost_system-mt boost_thread-mt
WANTLIB += c freetype gif jpeg m openjpeg png pthread ${MODPY_WANTLIB}
WANTLIB += raw_r c++ c++abi swscale tiff webp z

MODULES =		devel/cmake \
			lang/python \
			x11/qt4
LIB_DEPENDS =		devel/boost \
			graphics/openjpeg \
			graphics/tiff \
			graphics/libwebp \
			graphics/glew \
			graphics/ilmbase \
			graphics/openexr \
			graphics/giflib \
			graphics/opencolorio \
			graphics/ffmpeg \
			graphics/libraw

CONFIGURE_ARGS +=	-DPYLIB_INSTALL_DIR="lib/python${MODPY_VERSION}/site-packages" \
			-DNOTHREADS=ON \
			-DUSE_OPENCV=OFF

CXXFLAGS +=		-pthread
WRKDIST =		${WRKDIR}/oiio-Release-$V

pre-configure:
	sed -i 's,share/man,man,' ${WRKSRC}/CMakeLists.txt

post-install:
	find ${PREFIX} -name '*.orig' -exec rm -f {} \;

.include <bsd.port.mk>
