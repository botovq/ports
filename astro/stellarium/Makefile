# $OpenBSD: Makefile,v 1.73 2021/06/25 16:03:02 ajacoutot Exp $

COMMENT=		free open source planetarium

GH_TAGNAME=		v0.21.1
GH_ACCOUNT=		Stellarium
GH_PROJECT=		stellarium

CATEGORIES=		astro x11

HOMEPAGE=		http://www.stellarium.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5Gui Qt5Multimedia
WANTLIB += Qt5MultimediaWidgets Qt5Network Qt5Positioning Qt5PrintSupport
WANTLIB += Qt5Script Qt5SerialPort Qt5Widgets c gps m z

MODULES=		devel/cmake \
			lang/python \
			x11/qt5

MODPY_RUNDEP=		No

LIB_DEPENDS=		misc/gpsd \
			x11/qt5/qtlocation \
			x11/qt5/qtmultimedia \
			x11/qt5/qtscript \
			x11/qt5/qtserialport

# used to download more stars definitions
RUN_DEPENDS=		net/curl \
			devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic

CONFIGURE_ENV=		HOME=${WRKDIR}

CONFIGURE_ARGS=		-DCMAKE_C_FLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DSTELLARIUM_RELEASE_BUILD=1

PORTHOME=		${WRKDIR}

NO_TEST=		Yes

pre-configure:
	sed -i 's,/usr/local,${LOCALBASE},g' ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
