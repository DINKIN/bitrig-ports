# $OpenBSD: Makefile,v 1.9 2016/01/05 13:24:05 ajacoutot Exp $

COMMENT=		OCR and DAR program

GNOME_PROJECT=		ocrfeeder
GNOME_VERSION=		0.8.1
REVISION=		2

CATEGORIES=		graphics textproc

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python \
			x11/gnome

MODPY_ADJ_FILES=	bin/ocrfeeder.in \
			bin/ocrfeeder-cli.in

BUILD_DEPENDS=		devel/py-gobject3 \
			graphics/goocanvas2 \
			graphics/py-sane \
			print/py-reportlab \
			textproc/py-enchant \
			x11/gtk+3

RUN_DEPENDS=		devel/iso-codes \
			devel/py-gobject3 \
			graphics/goocanvas2 \
			graphics/py-sane \
			print/py-reportlab \
			print/unpaper \
			textproc/gtkspell3 \
			textproc/py-enchant \
			textproc/py-lxml \
			x11/gtk+3

# OCR engine
RUN_DEPENDS +=		ocrad-*|tesseract-*|gocr-*:graphics/ocrad

MODGNOME_TOOLS= 	desktop-file-utils yelp

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/ocrfeeder/util/constants.py.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	ln -s ../ocrfeeder/icons/ocrfeeder.svg \
		${PREFIX}/share/pixmaps/ocrfeeder.svg

.include <bsd.port.mk>
