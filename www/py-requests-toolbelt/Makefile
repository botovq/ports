# $OpenBSD: Makefile,v 1.7 2021/05/21 19:50:39 kmos Exp $

COMMENT =		utility belt for advanced users of python-requests

MODPY_EGG_VERSION =	0.9.1
DISTNAME =		requests-toolbelt-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://github.com/requests/toolbelt

# APLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		www/py-requests${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
# requires network access
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			www/py-betamax${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		security/py-openssl
.endif

.include <bsd.port.mk>
