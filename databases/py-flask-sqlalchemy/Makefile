# $OpenBSD: Makefile,v 1.12 2021/02/24 02:22:03 daniel Exp $

COMMENT =	sqlalchemy support for flask

MODPY_EGG_VERSION = 2.4.1
DISTNAME =	Flask-SQLAlchemy-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	1

CATEGORIES =	databases www

HOMEPAGE =	https://flask-sqlalchemy.palletsprojects.com/

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR  =	python3

MODPY_SETUPTOOLS = Yes
MODPY_PYTEST =	Yes
USE_GMAKE =	Yes

RUN_DEPENDS =	databases/py-sqlalchemy${MODPY_FLAVOR} \
		www/py-flask${MODPY_FLAVOR}
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
