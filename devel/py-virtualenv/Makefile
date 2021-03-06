# $OpenBSD: Makefile,v 1.36 2021/07/06 16:55:33 daniel Exp $

COMMENT =		virtual Python environment builder

MODPY_EGG_VERSION =	16.0.0
DISTNAME =		virtualenv-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		10

HOMEPAGE =		http://www.virtualenv.org/

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
BUILD_DEPENDS =		textproc/py-sphinx,python3>=4.0.2 \
			textproc/py-sphinx_rtd_theme,python3>=0.4.3
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests

FLAVORS =		python3
FLAVOR ?=

MAKE_ENV +=	PYTHONPATH=${WRKSRC}
DOCSRC =	${WRKSRC}/docs
post-build:
	cd ${DOCSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

DOCS =		${PREFIX}/share/doc/${MODPY_PY_PREFIX}virtualenv

post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	cd ${DOCSRC}/_build/html && pax -rw * ${DOCS}
	mv ${PREFIX}/bin/virtualenv{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
