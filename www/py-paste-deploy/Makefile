# $OpenBSD: Makefile,v 1.20 2021/05/21 19:50:38 kmos Exp $

COMMENT =		load, configure, compose WSGI applications and servers

MODPY_EGG_VERSION =	1.5.0
DISTNAME =		PasteDeploy-${MODPY_EGG_VERSION}
PKGNAME =		py-paste-deploy-${MODPY_EGG_VERSION}
REVISION =		2

CATEGORIES =		www

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
RUN_DEPENDS =		www/py-paste
TEST_DEPENDS =		devel/py-nose \
			devel/py-py

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-paste-deploy
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/py-paste-deploy/

.include <bsd.port.mk>
