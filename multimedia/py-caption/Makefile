# $OpenBSD: Makefile,v 1.6 2020/10/17 12:49:54 ajacoutot Exp $

COMMENT=		closed caption converter

MODPY_EGG_VERSION=	1.0.1
DISTNAME=		pycaption-${MODPY_EGG_VERSION}
PKGNAME=		py-caption-${MODPY_EGG_VERSION}
REVISION=		2

CATEGORIES=		multimedia

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes

FLAVORS=		python3
FLAVOR=			python3

RUN_DEPENDS=		devel/py-future${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			textproc/py-cssutils${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR}

# Tests not included in current tarball
#
# Pull request made - https://github.com/pbs/pycaption/pull/191
NO_TEST=		Yes

.include <bsd.port.mk>
