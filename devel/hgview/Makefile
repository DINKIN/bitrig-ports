# $OpenBSD: Makefile,v 1.3 2015/04/02 14:21:13 jasper Exp $

BROKEN = 		needs work on bitrig

COMMENT =		fast Mercurial log navigator

MODPY_EGG_VERSION =	1.8.2
DISTNAME =		hgview-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		devel
HOMEPAGE =		http://www.hgview.org/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
BUILD_DEPENDS =		textproc/asciidoc \
			textproc/xmlto \
			x11/py-qt4 \
			devel/mercurial
RUN_DEPENDS =		x11/py-qt4 \
			editors/py-qscintilla \
			devel/py-urwid \
			devel/mercurial

USE_GMAKE =		Yes
NO_TEST =		Yes

# Aside from the examples, the doc dir is empty. Check this is still
# the case when updating.
post-install:
	mv ${PREFIX}/share/doc/hgview/examples/ \
		${PREFIX}/share/examples/hgview
	rm -Rf ${PREFIX}/share/doc/hgview


.include <bsd.port.mk>
