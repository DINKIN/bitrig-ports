# $OpenBSD: Makefile,v 1.84 2016/03/11 19:59:17 naddy Exp $

PORTROACH=	limit:^1\.2\.

COMMENT=	General Toolkit for X11 GUI

DISTNAME=	gtk+-1.2.10
REVISION=	14

SHARED_LIBS=	gdk 3.0 \
		gtk 3.0
CATEGORIES=	x11 devel
MASTER_SITES=   ${MASTER_SITE_GNOME:=sources/gtk+/1.2/}

HOMEPAGE=	http://www.gtk.org/

MODULES=	devel/gettext
LIB_DEPENDS=	devel/glib

FAKE=			all

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xi glib gmodule m xcb Xau Xdmcp pthread-stubs


CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-static --with-xinput="xfree"
CONFIGURE_ARGS+= --disable-glibtest
CONFIGURE_ENV=	CPPFLAGS="-std=c89 -I${DEPBASE}/include" \
		LDFLAGS="-L${DEPBASE}/lib" \
		glib_config_args=--prefix=${DEPBASE}

# for non shared arches
CONFIGURE_ENV += X_EXTRA_LIBS=-lxcb

.include <bsd.port.mk>
