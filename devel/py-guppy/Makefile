# $OpenBSD: Makefile,v 1.8 2021/02/23 19:39:18 sthen Exp $

COMMENT =		guppy programming environment

MODPY_EGG_VERSION =	0.1.11
DISTNAME =		guppy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://guppy-pe.sourceforge.net/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

# From README: Caveat 2: All tests don't currently work always in Python 2.7
NO_TEST =		Yes
#TEST_DEPENDS =		${BASE_PKGPATH}
#
#do-test:
#	${MODPY_BIN} -c 'from guppy import hpy; hpy().test()'

.include <bsd.port.mk>
