# $OpenBSD: Makefile,v 1.13 2021/02/23 19:39:18 sthen Exp $

COMMENT=	Python functions and constants for IEEE754 floating point

DISTNAME=	fpconst-0.7.2
PKGNAME=	${DISTNAME:S/^/py-/}
REVISION =	7
CATEGORIES=    	devel

HOMEPAGE=	http://research.warnes.net/projects/RStatServer/fpconst/

MODULES=	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

# Apache 2.0
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://research.warnes.net/~warnes/fpconst/

do-test: fake
	@cd ${WRKSRC} && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./fpconst.py

.include <bsd.port.mk>

