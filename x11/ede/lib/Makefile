# $OpenBSD: Makefile,v 1.8 2016/03/20 16:12:26 naddy Exp $

COMMENT =		equinox desktop library

DISTNAME =		edelib-${V}
REVISION =		3

API_VER =		1.0
.for l in edelib edelib_dbus edelib_gui
SHARED_LIBS +=		$l	${API_VER}
.endfor

WANTLIB += X11 Xau Xcursor Xdmcp Xext Xfixes Xft Xinerama c dbus-1
WANTLIB += fltk fltk_images fontconfig jpeg m png pthread z
WANTLIB += c++ c++abi

MODULES =		lang/python
BUILD_DEPENDS =		devel/jam \
			devel/doxygen,-main
LIB_DEPENDS =		x11/fltk \
			x11/dbus

MAKE_ENV =		EDE_VERSION="${FULL_V}"

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-shared
CONFIGURE_ENV =		API_VER="${API_VER}"

NO_TEST =		Yes

MODPY_ADJ_FILES =	tools/edelib-convert-icontheme \
			tools/edelib-mk-indextheme \
			tools/edelib-mime-find

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} jam -d x

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${ALL_FAKE_FLAGS} \
		DESTDIR=${WRKINST} jam -d x install

.include <bsd.port.mk>
