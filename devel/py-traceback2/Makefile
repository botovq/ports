# $OpenBSD: Makefile,v 1.3 2021/05/21 19:50:30 kmos Exp $

COMMENT =		backports of the Python traceback module

MODPY_EGG_VERSION =	1.4.0

DISTNAME =		traceback2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/testing-cabal/traceback2

MAINTAINER =		Pamela Mosiejczuk <pamela@openbsd.org>

# PSF 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	traceback2

BUILD_DEPENDS =		devel/py-pbr

RUN_DEPENDS =		devel/py-linecache2

TEST_DEPENDS =		devel/py-contextlib2 \
			devel/py-fixtures \
			devel/py-testtools \
			devel/py-unittest2

.include <bsd.port.mk>
