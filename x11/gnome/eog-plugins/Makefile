# $OpenBSD: Makefile,v 1.92 2021/03/24 18:37:39 jasper Exp $

# XXX the "postr" plugin needs postr which hasn't been ported yet

COMMENT=		plugins for EOG

GNOME_PROJECT=		eog-plugins
GNOME_VERSION=		3.26.7

CATEGORIES=		graphics

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB  = ${COMPILER_LIBCXX}
WANTLIB += EGL X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 brotlicommon
WANTLIB += brotlidec cairo cairo-gobject champlain-0.12 champlain-gtk-0.12
WANTLIB += clutter-1.0 clutter-gtk-1.0 cogl cogl-pango cogl-path
WANTLIB += drm epoxy exempi exif expat ffi fontconfig freetype
WANTLIB += fribidi gbm gck-1 gcr-base-3 gcrypt gdata gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glapi glib-2.0 gmodule-2.0
WANTLIB += gnome-desktop-3 goa-1.0 gobject-2.0 gpg-error graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv idn2 intl jpeg json-glib-1.0
WANTLIB += lcms2 lzma m p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre peas-1.0 peas-gtk-1.0 pixman-1 png psl pthread
WANTLIB += rsvg-2 soup-2.4 sqlite3 unistring xcb xcb-dri2 xcb-dri3
WANTLIB += xcb-present xcb-render xcb-shm xcb-sync xcb-xfixes
WANTLIB += xml2 xshmfence z

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS=    	devel/libgdata \
			devel/libpeas \
			geo/libchamplain \
			graphics/libexif \
			x11/gnome/online-accounts

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/py-gobject3${MODPY_FLAVOR} \
			x11/gnome/eog

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/py-gobject3${MODPY_FLAVOR} \
			x11/gnome/eog

CONFIGURE_STYLE=	gnu

post-install:
	rm ${PREFIX}/lib/eog/plugins/*.{a,la}

.include <bsd.port.mk>
