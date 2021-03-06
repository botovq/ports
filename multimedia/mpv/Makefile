# $OpenBSD: Makefile,v 1.72 2021/07/05 10:00:18 sthen Exp $

COMMENT =		movie player based on MPlayer/mplayer2

GH_ACCOUNT =		mpv-player
GH_PROJECT =		mpv
GH_TAGNAME =		v0.33.1
REVISION =		0

SHARED_LIBS +=		mpv		0.2 # 1.109

CATEGORIES =		multimedia x11

HOMEPAGE =		https://mpv.io/

WAF =			${WRKSRC}/waf-2.0.20
MASTER_SITES0 =		https://waf.io/
DISTFILES =		${DISTNAME}{${GH_TAGNAME}}${EXTRACT_SUFX} ${WAF:T}:0
EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += EGL GL SDL2 X11 X11-xcb Xau Xdamage Xdmcp Xext Xfixes
WANTLIB += Xinerama Xrandr Xrender Xss Xv Xxf86vm archive ass
WANTLIB += avcodec avdevice avfilter avformat avresample avutil
WANTLIB += bluray c cdio cdio_cdda cdio_paranoia drm dvdnav dvdread
WANTLIB += epoxy expat fontconfig freetype fribidi gbm glib-2.0
WANTLIB += graphite2 harfbuzz iconv intl jpeg lcms2 ${MODLUA_WANTLIB}
WANTLIB += m pcre placebo postproc pthread swresample swscale xcb
WANTLIB += xcb-dri2 xcb-glx xml2 z

MODULES =		lang/lua \
			lang/python

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c
DEBUG_PACKAGES =	${BUILD_PACKAGES}

BUILD_DEPENDS =		audio/ladspa \
			textproc/py-docutils${MODPY_FLAVOR}

LIB_DEPENDS =		archivers/libarchive \
			audio/libcdio \
			audio/libcdio-paranoia \
			converters/libiconv \
			devel/sdl2 \
			graphics/ffmpeg>=4.1.1 \
			graphics/jpeg \
			graphics/lcms2 \
			graphics/libplacebo \
			multimedia/libass \
			multimedia/libbluray \
			multimedia/libdvdnav

MODPY_RUNDEP =		No
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

SEPARATE_BUILD =	Yes
CONFIGURE_ARGS =	--confloaddir=${SYSCONFDIR}/mpv \
			--confdir=${LOCALBASE}/share/examples/mpv \
			--mandir=${LOCALBASE}/man \
			--docdir=${LOCALBASE}/share/examples/mpv \
			--lua="${MODLUA_DEP_VERSION}obsd" \
			--enable-cdda \
			--enable-dvdnav \
			--enable-libmpv-shared \
			--enable-sdl2 \
			--disable-alsa \
			--disable-caca \
			--disable-cuda-hwaccel \
			--disable-egl-drm \
			--disable-gl-wayland \
			--disable-jack \
			--disable-rubberband \
			--disable-openal \
			--disable-optimize \
			--disable-pulse \
			--disable-sixel \
			--disable-uchardet \
			--disable-vaapi \
			--disable-vaapi-drm \
			--disable-vaapi-x-egl \
			--disable-vaapi-x11 \
			--disable-vaapi-wayland \
			--disable-vapoursynth \
			--disable-vdpau \
			--disable-vdpau-gl-x11 \
			--disable-videotoolbox-gl \
			--disable-vulkan \
			--disable-wayland

MAKE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
MAKE_FLAGS =		-o "${WRKBUILD}" -t "${WRKSRC}" --destdir="${DESTDIR}"

NO_TEST =		Yes

DO_WAF =		cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} \
				${WAF} ${MAKE_FLAGS}

LMAJ =			${LIBmpv_VERSION:R}
LMIN =			${LIBmpv_VERSION:E}
UPDATE_PLIST_ARGS +=	-i LMAJ -i LMIN
SUBST_VARS +=		LMAJ \
			LMIN

post-patch:
	cp ${DISTDIR}/${WAF:T} ${WAF}
	${SUBST_CMD} ${WRKSRC}/libmpv/client.h

do-configure:
	${DO_WAF} configure ${CONFIGURE_ARGS}

do-build:
	${DO_WAF} build -v

do-install:
	${DO_WAF} install
	${INSTALL_DATA} ${WRKDIST}/TOOLS/mpv_identify.sh \
		${WRKDIST}/TOOLS/umpv ${PREFIX}/share/examples/mpv
	${MODPY_BIN_ADJ} ${PREFIX}/share/examples/mpv/umpv
	sed -Ei 's,(/dev/dvd|/dev/cdrom),/dev/rcd0c,g' ${PREFIX}/man/man1/mpv.1

.include <bsd.port.mk>
