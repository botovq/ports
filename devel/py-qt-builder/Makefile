# $OpenBSD: Makefile,v 1.5 2021/03/17 08:21:41 sthen Exp $

COMMENT=	PEP 517 compliant PyQt build system

MODPY_EGG_VERSION=	1.9.1

DISTNAME=	PyQt-builder-${MODPY_EGG_VERSION}
PKGNAME=	py-qt-builder-${MODPY_EGG_VERSION}

CATEGORIES=	devel

HOMEPAGE=	https://www.riverbankcomputing.com/software/pyqt-builder

# SIP
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes

RUN_DEPENDS=	devel/py-sip${MODPY_FLAVOR}>=5.5v0 \
		sysutils/py-packaging${MODPY_FLAVOR} \
		x11/qt5/qtbase

.include <bsd.port.mk>
