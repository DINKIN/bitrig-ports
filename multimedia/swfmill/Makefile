# $OpenBSD: Makefile,v 1.6 2015/12/30 16:42:38 jasper Exp $

COMMENT=	xml2swf and swf2xml processor with import functionalities

DISTNAME=	swfmill-0.3.3
CATEGORIES=	multimedia
MASTER_SITES=	${HOMEPAGE}releases/

HOMEPAGE=	http://swfmill.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c exslt freetype gcrypt gpg-error lzma m png pthread
WANTLIB += xml2 xslt z
WANTLIB +=	c++ c++abi

MODULES=	devel/gettext
LIB_DEPENDS=	graphics/png \
		textproc/libxslt

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
