# $OpenBSD: Makefile,v 1.17 2021/05/21 19:50:27 kmos Exp $

COMMENT=		python mocking and patching library for testing

MODPY_EGG_VERSION=	3.0.5
DISTNAME=		mock-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel
REVISION=		1

HOMEPAGE=		https://mock.readthedocs.io/en/latest/

MAINTAINER=		Kurt Mosiejczuk <kmos@openbsd.org>

# BSD
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
RUN_DEPENDS=		devel/py-six${MODPY_FLAVOR}

FLAVORS=		python3
FLAVOR?=

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

# Tests are currently missing from tarball
MODPY_PYTEST=		Yes

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-funcsigs
.endif

.include <bsd.port.mk>
