# $OpenBSD: Makefile,v 1.23 2021/02/23 19:39:30 sthen Exp $

COMMENT =	Z3 theorem prover

VERSION =	4.8.9

GH_ACCOUNT =	Z3Prover
GH_PROJECT =	z3
GH_TAGNAME =	${GH_PROJECT}-${VERSION}

DISTNAME =	${GH_TAGNAME}
PKGNAME =	${DISTNAME:L}

SHARED_LIBS =	z3			2.2 # 4.8

CATEGORIES =	math

WANTLIB +=	c m pthread ${COMPILER_LIBCXX}

# MIT
PERMIT_PACKAGE =	Yes

# c++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

CONFIGURE_ARGS +=	-DZ3_ENABLE_EXAMPLE_TARGETS=ON \
			-DZ3_INCLUDE_GIT_HASH=OFF \
			-DZ3_INCLUDE_GIT_DESCRIBE=OFF \
			-DZ3_BUILD_PYTHON_BINDINGS=ON \
			-DZ3_USE_LIB_GMP=OFF

WRKDIST =	${WRKDIR}/z3-${DISTNAME}

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/scripts/mk_util.py

.include <bsd.port.mk>
