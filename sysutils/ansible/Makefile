# $OpenBSD: Makefile,v 1.141 2021/07/01 16:10:43 pvk Exp $

COMMENT =		radically simple IT automation

MODPY_EGG_VERSION =	4.2.0
DISTNAME =		ansible-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://ansible.com/

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		sysutils/ansible-core>=2.11.0

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ansible
	${INSTALL_DATA} ${WRKSRC}/CHANGELOG-v*.rst ${PREFIX}/share/doc/ansible
	find ${PREFIX} -type f \( -name '.*' -o -name '*.orig' \) -delete
	find ${PREFIX} -type d \( -name '.*' -o -name changelogs \
		-o -name docs -o -name tests \) -exec rm -rf {} +

.include <bsd.port.mk>
