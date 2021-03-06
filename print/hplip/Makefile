# $OpenBSD: Makefile,v 1.141 2016/03/20 16:12:25 naddy Exp $

PORTROACH=		skipv:${V}_py2.5

COMMENT-main=		HP Linux Imaging and Printing
COMMENT-common=		HPLIP applications common files
COMMENT-hpaio=		HP sane(7) scanner backend
COMMENT-hpcups=		HP native CUPS driver
COMMENT-hpijs=		HP ghostscript driver (spooler independent)
COMMENT-gui=		HPLIP graphical tools

V=			3.16.3
DISTNAME=		hplip-${V}
SUBST_VARS=		V

PKGNAME-main=		${DISTNAME}
REVISION=		0
PKGNAME-common=		hplip-common-${V}
PKGNAME-hpaio=		hpaio-${V}
PKGNAME-hpcups=		hpcups-${V}
PKGNAME-hpijs=		hpijs-${V}
PKGNAME-gui=		hplip-gui-${V}

SHARED_LIBS +=  hpdiscovery          0.0      # 0.1
SHARED_LIBS +=  hpmud                2.0      # 0.6
SHARED_LIBS +=  hpipp                0.0      # 0.1
SHARED_LIBS +=  hpip                 2.0      # 0.1

CATEGORIES=		print

HOMEPAGE=		http://hplipopensource.com/

# GPLv2 - MIT (backend) - BSD (hpijs)
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=hplip/}

MULTI_PACKAGES= 	-main -common -hpaio -hpcups -hpijs -gui

MODULES=		devel/gettext \
			lang/python

MODPY_RUNDEP=		No

cWANTLIB += crypto m pthread

### -main
WANTLIB-main += ${WANTLIB} ${cWANTLIB}
WANTLIB-main += avahi-client avahi-common cups dbus-1 hpmud netsnmp
WANTLIB-main += ffi gmp gnutls hogweed nettle p11-kit tasn1 usb-1.0 z
WANTLIB-main += hpdiscovery hpipp idn

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			print/cups,-libs \
			print/hplip,-common

RUN_DEPENDS-main=	${MODPY_RUN_DEPENDS} \
			${MODGETTEXT_RUN_DEPENDS} \
			devel/py-gobject \
			print/py-reportlab \
			x11/dbus-python \
			graphics/py-Pillow \
			print/hplip,-hpcups \
			print/hplip,-hpaio

# package is only useful if cups is installed
RUN_DEPENDS-main +=	print/cups

### -common
WANTLIB-common += ${cWANTLIB} netsnmp usb-1.0

LIB_DEPENDS-common= 	net/net-snmp \
			devel/libusb1

RUN_DEPENDS-common=	#empty

### -hpaio
WANTLIB-hpaio += ${WANTLIB} ${cWANTLIB}
WANTLIB-hpaio += avahi-client avahi-common cups dbus-1 ffi gmp gnutls
WANTLIB-hpaio += hogweed hpip hpipp hpmud jpeg netsnmp nettle p11-kit
WANTLIB-hpaio += sane tasn1 tiff usb usb-1.0 z hpdiscovery
WANTLIB-hpaio += v4l1 v4l2 v4lconvert idn

LIB_DEPENDS-hpaio=	print/hplip,-common \
			print/cups,-libs \
			graphics/sane-backends

RUN_DEPENDS-hpaio=	${MODGETTEXT_RUN_DEPENDS}

### -hpcups
WANTLIB-hpcups += ${WANTLIB} ${cWANTLIB} z netsnmp hpdiscovery
WANTLIB-hpcups += c jpeg c++ c++abi hpip cups cupsimage dbus-1 idn
WANTLIB-hpcups += z usb-1.0 avahi-client avahi-common hpmud
WANTLIB-hpcups += ffi gmp gnutls hogweed nettle p11-kit tasn1
WANTLIB-hpcups += c++ c++abi

LIB_DEPENDS-hpcups=	graphics/jpeg \
			print/hplip,-common \
			print/cups,-libs \
			x11/dbus

RUN_DEPENDS-hpcups=	${MODGETTEXT_RUN_DEPENDS}

### -hpijs
WANTLIB-hpijs += ${cWANTLIB} hpip usb-1.0 hpdiscovery
WANTLIB-hpijs += c jpeg netsnmp c++ c++abi dbus-1 hpmud

LIB_DEPENDS-hpijs=	print/hplip,-common \
			graphics/jpeg \
			x11/dbus

# foomatic-rip(1), foomatic-db(-engine)
RUN_DEPENDS-hpijs +=	print/cups-filters

### -gui
WANTLIB-gui +=		#empty

RUN_DEPENDS-gui=	x11/py-qt4 \
			print/hplip,-main \
			devel/xdg-utils \
			devel/desktop-file-utils \
			sysutils/usbutils \
			devel/py-notify

# hp-toolbox, Actions, Scan
RUN_DEPENDS-gui +=	graphics/xsane

LIB_DEPENDS-gui=	#empty

FAKE_FLAGS=		hplip_confdir=${PREFIX}/share/examples/hplip/hp \
			hplip_statedir=${PREFIX}/share/examples/hplip/db \
			mimedir=${PREFIX}/share/examples/hplip/cups \
			hplip_systraydir=${PREFIX}/share/examples/hplip/xdg/autostart

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--with-hpppddir=${PREFIX}/share/foomatic/db/source/PPD/HP \
			--with-cupsbackenddir=${PREFIX}/libexec/cups/backend \
			--with-cupsfilterdir=${PREFIX}/libexec/cups/filter \
			--with-icondir=${PREFIX}/share/applications \
			--with-docdir=${PREFIX}/share/doc/hplip \
			--enable-hpijs-install \
			--enable-foomatic-ppd-install \
			--enable-foomatic-drv-install

pre-configure:
	find ${WRKSRC} -name \*.py | \
		xargs perl -pi -e 's,(/usr/bin/python|/usr/bin/env python),${MODPY_BIN},g'
	sed -i 's,/usr/bin/python,${MODPY_BIN},g' \
		${WRKSRC}/fax/filters/pstotiff
	${SUBST_CMD} \
		${WRKSRC}/Makefile.in \
		${WRKSRC}/prnt/cups.py \
		${WRKSRC}/prnt/filters/hpps \
		${WRKSRC}/prnt/hpcups/HPCupsFilter.cpp \
		${WRKSRC}/prnt/hpijs/hpcupsfax.cpp \
		${WRKSRC}/prnt/hpijs/hpijs.cpp \
		${WRKSRC}/prnt/hpijs/globals.cpp \
		${WRKSRC}/doc/troubleshooting.html \
		${WRKSRC}/check.py \
		${WRKSRC}/ui4/devmgr5.py \
		${WRKSRC}/fax/backend/hpfax.py \
		${WRKSRC}/base/codes.py \
		${WRKSRC}/base/g.py \
		${WRKSRC}/base/queues.py \
		${WRKSRC}/base/services.py \
		${WRKSRC}/base/utils.py \
		${WRKSRC}/common/utils.c \
		${WRKSRC}/prnt/cups.py \
		${WRKSRC}/installer/core_install.py \
		${WRKSRC}/doc/upgrading.html \
		${WRKSRC}/doc/uninstalling.html \
		${WRKSRC}/fax/coverpages.py \
		${WRKSRC}/fax/filters/pstotiff \
		${WRKSRC}/installer/dcheck.py \
		${WRKSRC}/installer/pluginhandler.py \
		${WRKSRC}/base/magic.py \
		${WRKSRC}/base/utils.py \
		${WRKSRC}/scan.py \
		${WRKSRC}/setup.py \
		${WRKSRC}/ui4/nodevicesdialog.py \
		${WRKSRC}/ui/devmgr4.py \
		${WRKSRC}/ui/nodevicesform.py \
		${WRKSRC}/logcapture.py

post-install:
	${SUBST_DATA} ${FILESDIR}/hplip.state \
		${PREFIX}/share/examples/hplip/db/hplip.state
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/hplip
	rm -r ${WRKINST}/usr/{lib,share}
	rm -r ${WRKINST}/etc/udev
	rm -r ${WRKINST}/etc/sane.d
	mv ${PREFIX}/share/doc/hplip-${V} ${PREFIX}/share/doc/hplip/html
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.{a,la}
	rm ${PREFIX}/lib/sane/*.{a,la}

.include <bsd.port.mk>
