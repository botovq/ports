# $OpenBSD: Makefile,v 1.13 2021/02/23 19:39:19 sthen Exp $

COMMENT =	Mox is a mock object framework for Python

MODPY_EGG_VERSION = 0.5.3
DISTNAME =	mox-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1
CATEGORIES =	devel

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_PI =	Yes
MODPY_ADJ_FILES =mox.py stubout.py

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} mox_test.py

.include <bsd.port.mk>
