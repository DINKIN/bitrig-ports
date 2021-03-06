# $OpenBSD: Makefile,v 1.38 2016/03/20 16:12:26 naddy Exp $

BROKEN-alpha =		error: Compiler GCC >= 4.7 or Clang >= 3.3 is required for C compilation
BROKEN-hppa =		error: Compiler GCC >= 4.7 or Clang >= 3.3 is required for C compilation

PORTROACH =		limitw:1,even

COMMENT =		GTK+ port of the WebKit rendering engine

V =			2.10.9
DISTNAME =		webkitgtk-${V}
PKGNAME =		webkitgtk4-${V}
EXTRACT_SUFX =		.tar.xz
API =			4.0
SUBST_VARS =		API
DPB_PROPERTIES =	parallel

SHARED_LIBS +=  javascriptcoregtk-${API}     1.0 # 18.0
SHARED_LIBS +=  webkit2gtk-${API}            1.1 # 37.2

CATEGORIES =		www

HOMEPAGE =		http://webkitgtk.org/

# LGPLv2 and BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += EGL GL X11 Xcomposite Xdamage Xrender Xt atk-1.0 c
WANTLIB += cairo cairo-gobject enchant fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gtk-3 harfbuzz
WANTLIB += harfbuzz-icu hyphen icui18n icuuc jpeg m notify pango-1.0
WANTLIB += pangocairo-1.0 png pthread secret-1 soup-2.4 sqlite3
WANTLIB += webp xml2 xslt z

MASTER_SITES =		http://webkitgtk.org/releases/

MODULES =		devel/cmake \
			devel/gettext \
			lang/python \
			lang/ruby \
			x11/gnome

MODULES +=		lang/clang
MODCLANG_ARCHS =	*
MODCLANG_LANGS =	c c++
#MODGCC4_ARCHS =		*
#MODGCC4_LANGS =		c++

MODRUBY_RUNDEP =	No
MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	Tools/gtk/generate-inspector-gresource-manifest.py
MODGNOME_TOOLS =	gobject-introspection

NO_TEST =		Yes
USE_GMAKE =		Yes
LIBTOOL_FLAGS =		--tag=disable-static

BUILD_DEPENDS =		devel/bison \
			devel/gperf \
			devel/libexecinfo \
			geo/geoclue2

RUN_DEPENDS =		geo/geoclue2

LIB_DEPENDS =		devel/harfbuzz,-icu \
			devel/libnotify \
			devel/libsoup \
			graphics/libwebp \
			multimedia/gstreamer1/plugins-base \
			textproc/enchant \
			textproc/hyphen \
			textproc/libxslt \
			x11/gnome/libsecret \
			x11/gtk+3

CFLAGS +=		-I${X11BASE}/include -I${LOCALBASE}/include
CXXFLAGS +=		${CFLAGS}
LDFLAGS =		-L${X11BASE}/lib

CONFIGURE_ARGS =	-DPORT=GTK \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS}" \
			-DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS}"

# old gtk+2 plugins (flash, java, ...) - mostly usefull on Linux
CONFIGURE_ARGS +=	-DENABLE_PLUGIN_PROCESS_GTK2=OFF

# sync with Source/JavaScriptCore/assembler/MacroAssembler.h
.if ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "arm" && \
    ${MACHINE_ARCH} != "i386" && ${MACHINE_ARCH} != "mips64" && \
    ${MACHINE_ARCH} != "mips64el" && ${MACHINE_ARCH} != "sh"
# #error "The MacroAssembler is not supported on this platform."
CONFIGURE_ARGS +=	-DENABLE_JIT=OFF
CONFIGURE_ARGS +=	-DENABLE_LLINT_C_LOOP=ON
.endif

.if ${MACHINE_ARCH} != "amd64"
LDFLAGS +=		-Wl,--no-keep-memory
.endif

# __sync_add_and_fetch_8
.if ${MACHINE_ARCH} == "i386"
CFLAGS +=		-march=i686
CXXFLAGS +=		-march=i686
.endif

post-extract:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	ln -sf ${RUBY} ${WRKDIR}/bin/ruby

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt \
		${WRKSRC}/Source/WebKit2/Shared/Plugins/unix/PluginSearchPath.cpp

.include <bsd.port.mk>
