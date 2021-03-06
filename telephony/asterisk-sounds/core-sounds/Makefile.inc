# $OpenBSD: Makefile.inc,v 1.12 2016/01/20 16:19:24 sthen Exp $

MODULES +=	telephony/asterisk-sounds
MODAS_NAME =	asterisk-core-sounds
MODAS_TAG =	asterisk-core
MODAS_DESC =	core ${MODAS_LANGNAME} sound files for Asterisk (${MODAS_CODEC})
MODAS_LANGS =	en en_AU en_GB es fr it ja ru sv
MODAS_VER ?=	1.5
MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# CC-BY-SA
PERMIT_PACKAGE_CDROM =	Yes

PKGDIR =        ${.CURDIR}/../pkg
PLIST =         ${PKGDIR}/PLIST-${MODAS_LANG}
#CHECKSUM_FILE = ${.CURDIR}/../distinfo

post-install:
	-cd ${PREFIX}/${MODAS_INST} && for i in \
	    CHANGES-asterisk-core-${MODAS_LANG}-${MODAS_VER} \
	    CREDITS-asterisk-core-${MODAS_LANG}-${MODAS_VER} \
	    LICENSE-asterisk-core-${MODAS_LANG}-${MODAS_VER} \
	    core-sounds-${MODAS_LANG}.txt \
	    core-sounds-${MODAS_LANG}; \
	do mv $$i $$i-${MODAS_CODEC}; done
