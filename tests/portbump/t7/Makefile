# no RCS Id here, please

COMMENT-main =	portbump test package 7
COMMENT-qt4 =	portbump test package 7, qt4 subpackage
PKGNAME-main =	portbump-t7-1.0
PKGNAME-qt4 =	portbump-t7-qt4-1.0

WANTLIB-main =	${WANTLIB} m pthread
WANTLIB-qt4 =

MULTI_PACKAGES =	-main -qt4

DISTFILES =
MODULES =	x11/qt4

MAKE_ENV =	LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

do-extract:
	cp ${FILESDIR}/* ${WRKSRC}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/t7 ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/t7-qt4 ${PREFIX}/bin

.include <bsd.port.mk>
