# $OpenBSD: Makefile,v 1.7 2021/01/18 06:43:19 daniel Exp $

COMMENT =		sphinx theme used by guzzle

MODPY_EGG_VERSION =	0.7.11
REVISION =		4
DISTNAME =		guzzle_sphinx_theme-${MODPY_EGG_VERSION}
PKGNAME =		py-sphinx_guzzle_theme-${MODPY_EGG_VERSION}

CATEGORIES =		textproc

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# MIT/OFL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR  =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
