# $OpenBSD: Makefile,v 1.41 2016/03/20 17:59:21 naddy Exp $

COMMENT=		Ruby interface to hyperestraier

DISTNAME=		hyperestraier-1.4.13
PKGNAME=		ruby-hyperestraier-1.0.0
REVISION =		23
CATEGORIES=		textproc

HOMEPAGE=		http://hyperestraier.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=hyperestraier/}

FLAVORS =		ruby20 ruby21 ruby22 ruby23
FLAVOR ?=		
.if ${FLAVOR:Mruby20}
MODRUBY_REV =		2.0
FULLPKGNAME =		ruby20-hyperestraier-1.0.0
BIN_SUFFIX =		20
.elif ${FLAVOR:Mruby21}
MODRUBY_REV =		2.1
FULLPKGNAME =		ruby21-hyperestraier-1.0.0
BIN_SUFFIX =		21
WANTLIB +=		gmp
.elif ${FLAVOR:Mruby22}
MODRUBY_REV =		2.2
FULLPKGNAME =		ruby22-hyperestraier-1.0.0
BIN_SUFFIX =		22
WANTLIB +=		gmp
.elif ${FLAVOR:Mruby23}
MODRUBY_REV =		2.3
FULLPKGNAME =		ruby23-hyperestraier-1.0.0
BIN_SUFFIX =		23
WANTLIB +=		gmp
.else
MODRUBY_REV =		1.8
BIN_SUFFIX =		
.endif
SUBST_VARS +=		BIN_SUFFIX

WANTLIB +=		c m pthread estraier ${MODRUBY_WANTLIB}
MODULES=		lang/ruby

LIB_DEPENDS=		${MODRUBY_LIB_DEPENDS} \
			textproc/hyperestraier

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV =		RUBY=${RUBY} RDOC=`echo ${RUBY} | sed s/ruby/rdoc/`

WRKSRC=			${WRKDIST}/rubynative

SUBST_VARS +=		RUBY

pre-configure:
	${SUBST_CMD} ${WRKSRC}/estcmd.rb

post-install:
.if ${BIN_SUFFIX}
	mv ${PREFIX}/bin/estcmd{,${BIN_SUFFIX}}.rb
.endif
	${INSTALL_DATA_DIR} ${MODRUBY_EXAMPLEDIR}/hyperestraier
	${INSTALL_DATA} ${WRKSRC}/example/*.rb \
		${MODRUBY_EXAMPLEDIR}/hyperestraier

.include <bsd.port.mk>
