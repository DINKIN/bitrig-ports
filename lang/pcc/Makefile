# $OpenBSD: Makefile,v 1.10 2015/12/20 00:16:27 naddy Exp $

COMMENT =	portable C compiler

PCCVER =	1.0.0
DISTNAME =	pcc-${PCCVER}
REVISION =	8
EXTRACT_SUFX =	.tgz

CATEGORIES =	lang

HOMEPAGE =	http://pcc.ludd.ltu.se/

# Other architectures not fully supported yet
ONLY_FOR_ARCHS = i386 amd64

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =	http://pcc.ludd.ltu.se/ftp/pub/pcc-releases/ \
		ftp://pcc.ludd.ltu.se/pub/pcc-releases/

CONFIGURE_STYLE = gnu

CONFIG =	${MACHINE_ARCH:S/amd64/x86_64/}-unknown-openbsd${OSREV}
SUBST_VARS =	PCCVER CONFIG

do-test:
	cd ${WRKBUILD} && ./cc/cc/pcc --version

.include <bsd.port.mk>
