# $OpenBSD: Makefile,v 1.11 2021/05/21 19:50:33 kmos Exp $

COMMENT =		MQTT Python client library

MODPY_EGG_VERSION =	1.5.1
DISTNAME =		paho-mqtt-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

HOMEPAGE =		http://www.eclipse.org/paho/clients/python/

CATEGORIES =		net

# EPL/EDL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

MODPY_ADJ_FILES =	examples/*.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}paho-mqtt
	${INSTALL_DATA} ${WRKSRC}/examples/*.py \
		${PREFIX}/share/examples/${MODPY_PY_PREFIX}paho-mqtt

.include <bsd.port.mk>
