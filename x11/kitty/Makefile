# $OpenBSD: Makefile,v 1.6 2021/02/23 19:39:52 sthen Exp $

# Requires OpenGL>=3.3
ONLY_FOR_ARCHS =	aarch64 amd64 i386

COMMENT =		fast, feature full, GPU-based terminal emulator

MODPY_EGG_VERSION =	0.19.3
DISTNAME =		kitty-${MODPY_EGG_VERSION}
CATEGORIES =		x11
HOMEPAGE =		https://sw.kovidgoyal.net/kitty/
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += GL X11 X11-xcb Xcursor Xinerama Xrandr c canberra dbus-1
WANTLIB += fontconfig freetype harfbuzz intl lcms2 m png pthread
WANTLIB += util xcb xkbcommon xkbcommon-x11 z ${MODPY_WANTLIB}

MASTER_SITES =		https://github.com/kovidgoyal/kitty/releases/download/v${MODPY_EGG_VERSION}/
EXTRACT_SUFX =		.tar.xz

# C11
COMPILER =		base-clang ports-gcc

MODULES =		lang/python
MODPY_DISTUTILS_BUILD =	linux-package
MODPY_SETUP_ARGS +=	--verbose
# this disables checking upstream for updates
MODPY_SETUP_ARGS +=	--update-check-interval=0

# optional dependencies:
# graphics/ImageMagick (to use the kitty icat tool to display images in
#	the terminal)
# textproc/py-pygments (for syntax highlighting in kitty +kitten diff)
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		audio/libcanberra \
			devel/harfbuzz \
			graphics/lcms2 \
			graphics/png \
			x11/dbus \
			x11/xkbcommon

# needed for 'make test'
USE_GMAKE =		Yes

do-gen:
	${SUBST_CMD} ${WRKSRC}/kitty/child.py
	${SUBST_CMD} ${WRKSRC}/launcher.c

do-install:
	${INSTALL_PROGRAM} \
		${WRKSRC}/linux-package/bin/kitty ${PREFIX}/bin/
	${INSTALL_DATA_DIR}	${PREFIX}/lib/kitty
	${INSTALL_MAN} ${WRKSRC}/linux-package/man/man1/kitty.1 \
		${PREFIX}/man/man1/
	@cp -R ${WRKSRC}/linux-package/lib/kitty/*	${PREFIX}/lib/kitty/
	@cp -R ${WRKSRC}/linux-package/share/*	${PREFIX}/share/

.include <bsd.port.mk>
