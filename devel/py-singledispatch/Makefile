# $OpenBSD: Makefile,v 1.8 2021/05/21 19:50:29 kmos Exp $

MODPY_EGG_VERSION =	3.4.0.3
COMMENT =	backport of functools.singledispatch to Python 2.6-3.3
DISTNAME =	singledispatch-${MODPY_EGG_VERSION}
PKGNAME =	py-singledispatch-${MODPY_EGG_VERSION}
CATEGORIES =	devel
REVISION =	2


# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =	devel/py-six

.include <bsd.port.mk>
