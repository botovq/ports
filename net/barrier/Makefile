# $OpenBSD: Makefile,v 1.3 2021/05/06 19:13:11 tb Exp $

COMMENT =		mouse and keyboard sharing utility

V =			2.3.3
DISTNAME =		barrier-${V}-release
PKGNAME =		barrier-${V}
REVISION =		0
CATEGORIES =		net x11

MASTER_SITES =		https://github.com/debauchee/barrier/releases/download/v${V}/

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Core Qt5Gui Qt5Network Qt5Widgets
WANTLIB += SM X11 Xext Xi Xinerama Xrandr Xtst c crypto curl dns_sd
WANTLIB += m ssl

# GPLv2 only
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake \
			x11/qt5

BUILD_DEPENDS =		devel/gtest

LIB_DEPENDS =		net/curl \
			net/avahi

NO_TEST =		Yes

pre-configure:
	rm -rf ${WRKSRC}/ext/*
	sed -i 's|add_library.*||g' ${WRKSRC}/src/test/CMakeLists.txt
	sed -i 's|set_target_properties.*||g' ${WRKSRC}/src/test/CMakeLists.txt

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/build-*/bin/barrier* ${PREFIX}/bin/
	mv ${PREFIX}/bin/barrier ${PREFIX}/bin/barrier-gui
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/barrier
	${INSTALL_DATA} ${WRKSRC}/doc/barrier.conf.exampl* \
		${PREFIX}/share/examples/barrier/
	${INSTALL_MAN} ${WRKSRC}/doc/barrierc.1 \
		${PREFIX}/man/man1/barrierc.1
	${INSTALL_MAN} ${WRKSRC}/doc/barriers.1 \
		${PREFIX}/man/man1/barriers.1

.include <bsd.port.mk>
