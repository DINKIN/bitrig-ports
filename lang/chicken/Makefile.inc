# $OpenBSD: Makefile.inc,v 1.5 2015/08/27 22:40:33 juanfra Exp $

COMMENT=	practical and portable Scheme system

V=		4.10.0
DISTNAME=	chicken-${V}

CATEGORIES=	lang

HOMEPAGE=	http://www.call-cc.org/
MASTER_SITES=	http://code.call-cc.org/releases/${V:C/^([0-9]+\.[0-9]+\.[0-9]+).*/\1/}/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pthread

USE_GMAKE=	Yes

MAKE_FLAGS+=	PLATFORM=bsd C_COMPILER="${CC}" CXX_COMPILER="${CXX}" \
		C_COMPILER_OPTIONS="-DHAVE_CHICKEN_CONFIG_H" \
		C_COMPILER_OPTIMIZATION_OPTIONS="${CFLAGS}"

MAKE_FILE=	GNUmakefile

FAKE_FLAGS=	PREFIX=${TRUEPREFIX}

# Based on param.h:MACHINE_STACK_GROWS_UP
pre-build:
.if ${MACHINE_ARCH} == "hppa" || ${MACHINE_ARCH} == "hppa64"
	sed -i 's/C_STACK_GROWS_DOWNWARD 1/C_STACK_GROWS_DOWNWARD 0/g' "${WRKSRC}/Makefile.bsd"
.endif

