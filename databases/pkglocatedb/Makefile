# $OpenBSD: Makefile,v 1.30 2016/02/21 02:13:12 espie Exp $

COMMENT =		database of packages for use with locate(1)

# locate data is NOT MI, unfortunately
# PKG_ARCH = ${ARCH}....
DISTNAME =		pkglocatedb-1.2
DISTFILES =

CATEGORIES =		databases

PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	databases/sqlports,-list

ARGS = -a -p ${PORTSDIR}

do-build: 
	@if test -s ${WRKBUILD}/ouch; then \
		cat ${WRKBUILD}/ouch; \
		exit 1; \
	fi

do-install:
	${INSTALL_DATA} ${WRKBUILD}/pkglocatedb ${PREFIX}/share
	${INSTALL_MAN} ${FILESDIR}/pkg_locate.1 ${PREFIX}/man/man1
	${SUBST_PROGRAM} ${FILESDIR}/pkglocate ${PREFIX}/bin/pkg_locate
	ln -s ${TRUEPREFIX}/bin/pkg_locate ${PREFIX}/bin/pkglocate

NO_TEST =		Yes

.include <bsd.port.mk>

# XXX cheat a bit to avoid having two makefiles
do-build: ${WRKBUILD}/pkglocatedb

${WRKBUILD}/pkglocatedb:
	unset REPORT_PROBLEM; \
	SUBDIRLIST=${LOCALBASE}/share/sqlports.list REPORT_PROBLEM_LOGFILE=${WRKBUILD}/ouch pkg_mklocatedb ${ARGS} > $@.tmp && mv $@.tmp $@
