# $OpenBSD: drupal7.port.mk,v 1.1.1.1 2012/04/10 12:49:31 espie Exp $


# three types of things we can install, by default plugin
MODDRUPAL_THEME ?=	No

.if defined(LANG)
MODDRUPAL_LANG ?=	Yes
.else
MODDRUPAL_LANG ?=	No
.endif


DIST_SUBDIR ?= drupal7
CATEGORIES +=	www www/drupal7

.if ${MODDRUPAL_LANG:L} == "yes"
SUBDIR = translations/7.x
COMMENT = drupal ${LANG} translation
EXTRACT_SUFX ?=
HOMEPAGE ?= http://localize.drupal.org/translate/languages/${LANG}/
MASTER_SITES ?=	ftp://ftp.drupal.org/pub/drupal/files/${SUBDIR}/
.  for p v in ${LANGFILES}
DISTFILES += $p/$p-7.x-$v.${LANG}.po
.  endfor
.else
SUBDIR = projects
HOMEPAGE ?=	http://drupal.org/
MASTER_SITES ?=	http://www.drupal.org/files/${SUBDIR}/ \
		ftp://ftp.drupal.org/pub/drupal/files/${SUBDIR}/
.endif

PKG_ARCH ?=	*

.if !defined(WRKDIST)
WRKDIST =	${WRKDIR}/${DISTNAME:C/-7.x.*$//}
.endif

PREFIX ?=	/var/www
DRUPAL ?=	drupal7
DRUPAL_ROOT ?=	htdocs/${DRUPAL}
DRUPAL_MODS ?=	${DRUPAL_ROOT}/sites/all/modules/
DRUPAL_THEMES ?=${DRUPAL_ROOT}/sites/all/themes/
DRUPAL_TRANSLATIONS ?= ${DRUPAL_ROOT}/profiles/standard/translations/
DRUPAL_OWNER =	root
DRUPAL_GROUP =	daemon
SUBST_VARS += 	DRUPAL_MODS DRUPAL_THEMES DRUPAL_ROOT \
		DRUPAL_OWNER DRUPAL_GROUP DRUPAL

.if ${MODDRUPAL_THEME:L} == "yes"
MODDRUPAL_INSTALL = \
		mkdir -p ${PREFIX}/${DRUPAL_THEMES}; \
		cp -R ${WRKDIST} ${PREFIX}/${DRUPAL_THEMES}; \
		chown -R ${DRUPAL_OWNER}.${DRUPAL_GROUP} ${PREFIX}/${DRUPAL_THEMES} 
.elif ${MODDRUPAL_LANG:L} == "yes"
MODDRUPAL_INSTALL = \
	mkdir -p ${PREFIX}/${DRUPAL_TRANSLATIONS}; \
	for i in ${DISTFILES}; do \
	    cp ${FULLDISTDIR}/$$i ${PREFIX}/${DRUPAL_TRANSLATIONS}; \
	done; \
	chown -R ${DRUPAL_OWNER}.${DRUPAL_GROUP} ${PREFIX}/${DRUPAL_TRANSLATIONS}; 
SUBST_VARS += LANG
.else
MODDRUPAL_INSTALL = \
		mkdir -p ${PREFIX}/${DRUPAL_MODS}; \
		cp -R ${WRKDIST} ${PREFIX}/${DRUPAL_MODS}; \
		chown -R ${DRUPAL_OWNER}.${DRUPAL_GROUP} ${PREFIX}/${DRUPAL_MODS} 
.endif

RUN_DEPENDS ?=	drupal->=7,<8:www/drupal7/core
