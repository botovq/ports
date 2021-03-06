# $OpenBSD: Makefile,v 1.34 2021/06/22 04:34:08 rsadowski Exp $

# XXX fix build with icu >=5.9.1 (remove at next update?)
CXXFLAGS +=		-DU_USING_ICU_NAMESPACE=1

COMMENT =		historical real-time strategy game

DISTNAME =		0ad-${V}-alpha-unix-build
PKGNAME =		0ad-${V}
REVISION =		3

USE_WXNEEDED =		Yes

SO_VERSION =	0.0
SHARED_LIBS +=  mozjs38-ps-release        ${SO_VERSION}

WANTLIB += ${COMPILER_LIBCXX} GL SDL2 X11 Xcursor boost_filesystem
WANTLIB += boost_system c curl enet execinfo gloox iconv icui18n
WANTLIB += icuuc m miniupnpc nspr4 ogg openal plc4 plds4 png sodium
WANTLIB += vorbis vorbisfile xml2 z

BUILD_DEPENDS =		archivers/zip \
			shells/bash
LIB_DEPENDS =		audio/libvorbis \
			audio/openal \
			converters/libiconv \
			devel/boost \
			devel/nspr \
			devel/sdl2 \
			graphics/png \
			net/curl \
			net/enet \
			net/gloox>=1.0.20 \
			net/miniupnp/miniupnpc \
			security/libsodium \
			textproc/icu4c \
			textproc/libxml
RUN_DEPENDS =		devel/desktop-file-utils \
			games/0ad/data=${V}
MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

COMPILER =		base-clang ports-gcc

MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	../../../libraries/source/cxxtest-4.4/bin/cxxtestgen

MAKE_FLAGS =		SILENT=
MAKE_ENV =		CC="${CC}" \
			CXX="${CXX}" \
			CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CXXFLAGS}"

FIX_CRLF_FILES =	build/premake/premake4/build/gmake.bsd/Premake4.make
PATCHORIG =		.orig.port

USE_GMAKE =		Yes
CONFIGURE_ARGS +=	--without-nvtt \
			--datadir=${PREFIX}/share/0ad \
			--libdir=${PREFIX}/lib \
			--premake4 \
			--minimal-flags

# XXX atlas (the level editor) requires threaded libxml
CONFIGURE_ARGS +=	--disable-atlas

WRKSRC =		${WRKDIST}/build/workspaces/gcc

do-build:
	cd ${WRKDIST}/build/workspaces && \
		${SETENV} CC="${CC}" CXX="${CXX}" CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}" SO_VERSION="${SO_VERSION}" \
		${CONFIGURE_ENV} verbose=1 \
		./update-workspaces.sh ${CONFIGURE_ARGS}

	cd ${WRKDIST}/libraries/source/fcollada/src && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
			-f ${MAKE_FILE} ${ALL_TARGET}
	cd ${WRKSRC} &&\
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
			-f ${MAKE_FILE} ${ALL_TARGET}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/0ad
	cp -R ${WRKDIST}/binaries/data/* ${PREFIX}/share/0ad
	${INSTALL_DATA} ${WRKDIST}/binaries/system/lib* ${PREFIX}/lib
	${INSTALL_PROGRAM} ${WRKDIST}/binaries/system/pyrogenesis ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKDIST}/build/resources/0ad.sh ${PREFIX}/bin/0ad
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKDIST}/build/resources/0ad.desktop \
		${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKDIST}/build/resources/0ad.png \
		${PREFIX}/share/pixmaps/

# most tests fail without nvtt
NO_TEST =		Yes
#do-test:
#	cd ${WRKDIST}/binaries/system && ./test

.include <bsd.port.mk>
