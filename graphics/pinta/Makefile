# $OpenBSD: Makefile,v 1.9 2015/10/09 05:46:04 ajacoutot Exp $

BROKEN =	unreliable build, frequently hangs in dpb

V =		1.6
COMMENT =	open source drawing/editing program modeled after Paint.NET
DISTNAME =	pinta-${V}
CATEGORIES =	graphics x11
REVISION =	2

HOMEPAGE =	http://pinta-project.com/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

# These tarballs have a proper configure. GH checkout does not...
MASTER_SITES =	https://github.com/PintaProject/Pinta/releases/download/${V}/

MODULES =	devel/gettext \
		lang/mono \
		textproc/intltool

BUILD_DEPENDS =	devel/mono-addins \
		x11/mono-gtk2

RUN_DEPENDS =	devel/mono-addins \
		devel/desktop-file-utils \
		x11/gtk+3,-guic \
		x11/mono-gtk2

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE =	Yes

pre-configure:
	@find ${WRKSRC} -name "*.sln" -exec \
		sed -i 's/Format Version 10.00/Format Version 11.00/g' {} \;
	@find ${WRKSRC} \( -name "*.csproj" -o -name "*.proj" \) -exec \
		sed -i 's#ToolsVersion="3.5"#ToolsVersion="4.0"#g; \
			s#<TargetFrameworkVersion>.*</TargetFrameworkVersion>##g; \
			s#<PropertyGroup>#<PropertyGroup><TargetFrameworkVersion>v4.5</TargetFrameworkVersion>#g; \
			s#Mono.Posix, Version.*"#Mono.Posix"#g' {} \;

.include <bsd.port.mk>
