# $OpenBSD: Makefile,v 1.30 2021/02/16 23:02:07 sthen Exp $

COMMENT=	object interface infrastructure from Zope

MODPY_EGG_VERSION=	4.4.3

DISTNAME=	zope.interface-${MODPY_EGG_VERSION}
PKGNAME=	py-zopeinterface-${MODPY_EGG_VERSION}
CATEGORIES=	devel
REVISION=	3

# Zope Public License
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

MODPY_PI =	Yes

MODULES=	lang/python
TEST_DEPENDS=	devel/py-zopeevent${MODPY_FLAVOR}

MODPY_SETUPTOOLS=	Yes

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
