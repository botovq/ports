# $OpenBSD: Makefile,v 1.16 2021/05/22 21:47:28 namn Exp $

COMMENT =		C++ library implementing a BitTorrent client

MODPY_EGG_VERSION =	1.2.13
DISTNAME =		libtorrent-rasterbar-${MODPY_EGG_VERSION}

SHARED_LIBS +=  	torrent-rasterbar 4.0	# 10.0.0

CATEGORIES =		net devel

HOMEPAGE =		https://libtorrent.org/

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_python${MODPY_VERSION:C/\.//g}-mt
WANTLIB += boost_system-mt crypto iconv m ssl

MASTER_SITES =		https://github.com/arvidn/libtorrent/releases/download/v${MODPY_EGG_VERSION}/

MODULES =		lang/python

BUILD_DEPENDS =		devel/libtool

LIB_DEPENDS =		converters/libiconv \
			devel/boost>=1.67.0

# boost
COMPILER =		base-clang ports-gcc

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--enable-python-binding \
			--enable-tests \
			--with-boost-system=boost_system-mt \
			--with-boost-python=boost_python${MODPY_VERSION:C/\.//g}-mt \
			--with-libiconv
CONFIGURE_ENV +=	CPPFLAGS="-Wno-deprecated-declarations \
				  -Wno-macro-redefined \
				  -pthread" \
			PYTHON=${MODPY_DEFAULT_VERSION_3}
# python bindings setup.py need CXX
MAKE_ENV =		CC="${CC}" CXX="${CXX}"

.ifdef DEBUG
CONFIGURE_ARGS +=	--enable-debug
.endif

pre-configure:
	sed -i 's,-Os,,g' ${WRKSRC}/configure
# use setup.py from 1.2.11 because >=1.2.12 introduced dependency on boost-build
	${SUBST_CMD} -m 644 -c ${FILESDIR}/setup.py \
		${WRKSRC}/bindings/python/setup.py

pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
