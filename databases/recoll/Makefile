# $OpenBSD: Makefile,v 1.13 2021/05/24 17:26:26 sthen Exp $

COMMENT-main=	full text search application
COMMENT-gui=	X user interface to recoll

MULTI_PACKAGES=	-main -gui

V=		1.31.0
DISTNAME=	recoll-${V}
PKGNAME-main=	${DISTNAME}
PKGNAME-gui=	recoll-gui-${V}

SHARED_LIBS +=	recoll-${V}            1.0 # 0.0
SHARED_LIBS +=  recoll                 1.0 # 0.0

CATEGORIES=	databases sysutils

HOMEPAGE=	https://www.lesbonscomptes.com/recoll/

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://www.lesbonscomptes.com/recoll/

# C++11
COMPILER=	base-clang ports-gcc

WANTLIB=	${COMPILER_LIBCXX} c iconv m xapian z
WANTLIB-main=	${WANTLIB} c iconv lzma m xapian xml2 xslt z
WANTLIB-gui=	${WANTLIB} GL Qt5Core Qt5Gui Qt5Network \
		Qt5PrintSupport Qt5WebKit Qt5WebKitWidgets \
		Qt5Widgets Qt5Xml lib/recoll/recoll-${V}

# otherwise dependency check during build fails when updating
RECOLL_LIB=	librecoll-${V}.so.${LIBrecoll-${V}_VERSION}
SUBST_VARS+=	RECOLL_LIB

# partially works, but the Qt application doesn't get symbols
DEBUG_PACKAGES=	${BUILD_PACKAGES}

MODULES=		lang/python \
			x11/qt5

USE_GMAKE=		Yes
DPB_PROPERTIES=		parallel

BUILD_DEPENDS=		devel/py-setuptools${MODPY_FLAVOR} \
			textproc/aspell/core

LIB_DEPENDS-main=	databases/xapian-core \
			textproc/libxslt

LIB_DEPENDS-gui=	${MODQT5_LIB_DEPENDS} \
			databases/recoll \
			x11/qt5/qtwebkit

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			QMAKE="${MODQT_QMAKE}"

CONFIGURE_ARGS=		--disable-python-chm \
			--disable-userdoc \
			--without-inotify \
			--without-fam \
			--without-qzeitgeist \
			--enable-recollq

pre-configure:
	sed -i -e "s,!!LIBrecoll_VERSION_R!!,${LIBrecoll_VERSION:R}," \
		-e "s,!!LIBrecoll_VERSION_E!!,${LIBrecoll_VERSION:E}," \
		${WRKSRC}/Makefile.in
	${SUBST_CMD} ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
