# $OpenBSD: Makefile,v 1.260 2016/03/18 23:12:18 naddy Exp $

COMMENT=		integrated email and PIM software for GNOME

GNOME_PROJECT=		evolution
GNOME_VERSION=		3.18.5.2

CATEGORIES=		mail

SO_VERSION=		10.0 # 0.0
.for _lib in \
eabutil econtacteditor econtactlisteditor email-engine essmime \
evolution-addressbook-importers evolution-calendar-importers \
evolution-calendar evolution-mail-composer evolution-mail-formatter \
evolution-mail-importers evolution-mail evolution-shell evolution-smime \
evolution-util gnomecanvas
SHARED_LIBS +=		${_lib} ${SO_VERSION}
.endfor

# GPLv2+ - LGPLv2+ - OpenLDAP license - GFDL 1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject camel-1.2 canberra canberra-gtk3
WANTLIB += crypto cryptui db dbus-1 dbus-glib-1 ebackend-1.2 ebook-1.2
WANTLIB += ebook-contacts-1.2 ecal-1.2 edata-book-1.2 edataserver-1.2
WANTLIB += edataserverui-1.2 enchant epoxy expat ffi fontconfig
WANTLIB += freetype gailutil-3 gbm gck-1 gcr-base-3 gcr-ui-3 gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 geocode-glib gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-desktop-3 gobject-2.0 gpg-error graphite2
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += gtkspell3-3 gweather-3 harfbuzz harfbuzz-icu ical icalss
WANTLIB += icalvcal icudata icui18n icuuc javascriptcoregtk-3.0
WANTLIB += jpeg json-glib-1.0 lber-2.4 ldap-2.4 ltdl lzma m notify
WANTLIB += nspr4 nss3 nssutil3 ogg orc-0.4 p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png pst pthread
WANTLIB += pthread-stubs sasl2 secret-1 smime3 softokn3 soup-2.4
WANTLIB += sqlite3 ssl ssl3 c++ c++abi vorbis vorbisfile webkitgtk-3.0
WANTLIB += webp xcb xcb-render xcb-shm xml2 xslt z
WANTLIB += X11-xcb Xxf86vm drm glapi xcb-dri2 xcb-glx xcb-shape
WANTLIB += xcb-xfixes

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

BUILD_DEPENDS=		devel/bison \
			devel/gsettings-desktop-schemas

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			converters/libpst \
			databases/evolution-data-server \
			devel/libnotify \
			textproc/gtkspell3 \
			www/webkit,gtk3 \
			x11/gnome/desktop \
			x11/gnome/libcryptui

RUN_DEPENDS=		devel/gsettings-desktop-schemas

# module-text-highlight.so
BUILD_DEPENDS +=	textproc/highlight
RUN_DEPENDS +=		textproc/highlight

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

YACC=			bison

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--with-bogofilter=${LOCALBASE}/bin/bogofilter \
			--with-openldap="${LOCALBASE}" \
			--with-sa-learn=${LOCALBASE}/bin/sa-learn \
			--with-spamassassin=${LOCALBASE}/bin/spamassassin \
			--with-sub-version=" (OpenBSD Ports)"

# requires gnome-autoar
CONFIGURE_ARGS +=	--disable-autoar

FAKE_FLAGS=		autostartdir=${PREFIX}/share/examples/evolution/xdg/autostart

# REVERT 160006402248075b95c98e9e34d4538670ba7480 (Debian does the same):
REVERT_AVOID_VERSION=	addressbook/importers addressbook/util \
			addressbook/gui/contact-editor \
			addressbook/gui/contact-list-editor libemail-engine \
			smime/lib calendar/gui calendar/importers composer \
			em-format mail/importers mail shell smime/gui e-util \
			libgnomecanvas

pre-configure:
.for i in ${REVERT_AVOID_VERSION}
	sed -i 's,-avoid-version,,' ${WRKSRC}/$i/Makefile.in
.endfor

post-install:
	rm ${PREFIX}/lib/evolution/{modules,plugins}/*.{a,la}

.include <bsd.port.mk>
