# $OpenBSD: Makefile,v 1.15 2021/07/06 16:55:34 daniel Exp $

COMMENT = 	helpers to pass trusted data to untrusted environments

MODPY_EGG_VERSION = 0.24
REVISION =	9
DISTNAME =	itsdangerous-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	www devel

HOMEPAGE =	http://pythonhosted.org/itsdangerous/

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =	textproc/py-sphinx,python3>=4.0.2

FLAVORS =	python3
FLAVOR =	python3

MAKE_ENV +=	PYTHONPATH=${WRKSRC}

post-build:
	@cd ${WRKSRC}/docs && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

post-install:
	${INSTALL_DATA_DIR} \
	    ${PREFIX}/share/doc/${MODPY_PY_PREFIX}itsdangerous
	cd ${WRKSRC}/docs/_build/html && \
	    pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}itsdangerous

.include <bsd.port.mk>
