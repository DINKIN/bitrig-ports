# $OpenBSD: Makefile,v 1.16 2016/03/19 23:44:54 naddy Exp $

COMMENT =	RDF framework
CATEGORIES =	databases devel textproc sysutils
HOMEPAGE =	http://soprano.sourceforge.net/
DISTNAME =	soprano-2.9.4
REVISION =	2

SHARED_LIBS =	soprano                   2.1
SHARED_LIBS +=	sopranoclient             2.1
SHARED_LIBS +=	sopranoindex              2.1
SHARED_LIBS +=	sopranoserver             2.1

EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=soprano/}

# GPL/LGPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c clucene-core clucene-shared iodbc lib/qt4/QtCore
WANTLIB += lib/qt4/QtDBus lib/qt4/QtNetwork lib/qt4/QtXml m pthread
WANTLIB += raptor2 rdf
WANTLIB += c++ c++abi

MODULES =	x11/kde4
MODKDE4_USE =

BUILD_DEPENDS =	devel/doxygen

LIB_DEPENDS = 	textproc/clucene \
	    	databases/iodbc \
		textproc/raptor \
		textproc/redland


# No Java, thanks
CONFIGURE_ARGS =	-DSOPRANO_DISABLE_SESAME2_BACKEND:Bool=Yes \
			-DSOPRANO_BUILD_TESTS:Bool=Yes

TEST_DEPENDS =		databases/virtuoso \
			x11/dbus
TEST_IS_INTERACTIVE =	X11

# Remove stuff provided with CMake
post-extract:
	cd ${WRKDIST}/cmake/modules && \
		rm FindQt4.cmake MacroPushRequiredVars.cmake

.include <bsd.port.mk>
