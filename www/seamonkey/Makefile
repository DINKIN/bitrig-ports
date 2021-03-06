# $OpenBSD: Makefile,v 1.187 2016/03/17 19:39:38 landry Exp $

BROKEN-i386 =   wants __atomic_{store,fetch_add,load}_8, even with -march=i586

BROKEN =		almost there on bitrig but not quite
COMMENT-main =		Mozilla application suite
COMMENT-lightning =	Mozilla Seamonkey calendar extension
BROKEN-sparc64 =	xpcshell SIGBUS during fake


MOZILLA_VERSION =	2.40
MOZILLA_BRANCH =	release
MOZILLA_PROJECT =	seamonkey
MOZILLA_CODENAME =	suite
EXTRACT_SUFX =		.tar.xz

MULTI_PACKAGES =	-main -lightning
PKGNAME-main =		${PKGNAME}
PKGNAME-lightning =	lightning-seamonkey-4.5
EPOCH-lightning =	0

HOMEPAGE =	http://www.seamonkey-project.org/

SO_VERSION =	44.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.

MOZILLA_LIBS = ldap60 ldif60 mozgnome prldap60 suite xul calbasecomps lgpllibs

CATEGORIES=	www mail net news

# MPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	www/mozilla devel/gettext lang/python
MODPY_RUNDEP =	No

NO_TEST=	Yes

CONFIGURE_STYLE =	autoconf no-autoheader

LIB_DEPENDS-lightning = STEM->=${MOZILLA_VERSION:S/b/beta/}:${BUILD_PKGPATH},-main
WANTLIB-lightning =	lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/xul \
			c m c++ c++abi nspr4 plc4 plds4 pthread

# build lightning xpi
CONFIGURE_ARGS +=	--enable-calendar

# to be able to link when building with clang on i386 or gcc on powerpc
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS +=	--disable-debug-symbols
.endif

# relies on pulseaudio for sound and broken at runtime
CONFIGURE_ARGS +=	--disable-webrtc

# bug #1064665
LIB_DEPENDS +=	textproc/icu4c
CONFIGURE_ARGS += --with-system-icu
WANTLIB += icudata icui18n icuuc

CONFIGURE_ARGS +=	--enable-gstreamer=1.0
BUILD_DEPENDS +=	multimedia/gstreamer1/plugins-base

ALL_TARGET =	default

MOZILLA_AUTOCONF_DIRS =		mozilla mozilla/js/src

GNU_ARCH =	${MACHINE_ARCH:S/amd64/x86_64/}
# guid for gdata-provider comes from em:id in install.rdf
GUIDS =	gdata-provider {a62ef8ec-5fdc-40c2-873c-223b8a6925cc} \
	lightning {e2fda1a4-762b-4020-b5ad-a41df1933103}

EXTDIR =	${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/extensions/

CPPFLAGS+=	-I${X11BASE}/include -I${LOCALBASE}/include
LDFLAGS+=	-L${X11BASE}/lib -L${LOCALBASE}/lib
CONFIGURE_ENV+=	CPPFLAGS="${CPPFLAGS}" \
		CFLAGS="${CFLAGS}"

CONFIGURE_ENV+=MOZCONFIG=${WRKSRC}/mozilla/.mozconfig
# MOZCONFIG is mandatory now even if empty ?
post-patch:
	touch ${WRKSRC}/mozilla/.mozconfig

post-install:
	${INSTALL_MAN} ${WRKBUILD}/dist/man/man1/seamonkey.1 ${PREFIX}/man/man1/

.for xpi guid in ${GUIDS}
	${UNZIP} -oq ${WRKBUILD}/dist/xpi-stage/${xpi}*.xpi -d ${EXTDIR}/${guid}
.endfor
	# install prefs
	${SUBST_DATA} ${FILESDIR}/all-openbsd.js \
		${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/defaults/pref/all-openbsd.js
	# install desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/ ; \
	${SUBST_DATA} ${FILESDIR}/${MOZILLA_PROJECT}.desktop \
		${PREFIX}/share/applications/${MOZILLA_PROJECT}.desktop ; \
	# install icon for desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/chrome/icons/default/${MOZILLA_PROJECT}.png \
		${PREFIX}/share/pixmaps/${MOZILLA_PROJECT}.png

.include <bsd.port.mk>
