# $OpenBSD: Makefile,v 1.5 2016/02/25 01:38:17 abieber Exp $

COMMENT=	maildir indexer and searcher with emacs frontend

GH_TAGNAME=	v0.9.16
GH_ACCOUNT=	djcb
GH_PROJECT=	mu

CATEGORIES=	mail
HOMEPAGE=	http://www.djcbsoftware.nl/code/mu/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext

BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool \
		emacs->=24:editors/emacs

LIB_DEPENDS=	databases/xapian-core \
		devel/glib2 \
		mail/gmime

WANTLIB += c ffi gio-2.0 glib-2.0 gmime-2.6 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre pthread uuid xapian z
WANTLIB+= 	c++ c++abi

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.11
CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-gtk \
			--disable-webkit \
			--disable-guile

USE_GMAKE=		Yes

pre-configure:
	cd ${WRKSRC} && \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		autoreconf -i

.include <bsd.port.mk>
