# $OpenBSD: Makefile,v 1.14 2021/05/21 19:50:26 kmos Exp $

COMMENT =		implementation of JSON Schema validation for Python

MODPY_EGG_VERSION =	2.6.0
DISTNAME =		jsonschema-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		devel

HOMEPAGE =		http://github.com/Julian/jsonschema

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	jsonschema

FLAVORS =		python3
FLAVOR ?=

BUILD_DEPENDS =		devel/py-vcversioner${MODPY_FLAVOR}
.if !${FLAVOR:Mpython3}
RUN_DEPENDS =		devel/py-functools32
.endif
TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/jsonschema{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
