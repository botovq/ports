# $OpenBSD: Makefile,v 1.14 2021/06/04 10:17:53 ajacoutot Exp $

COMMENT=		GLib wrapper around libarchive

GNOME_PROJECT=		gnome-autoar
GNOME_VERSION=		0.3.3

SHARED_LIBS +=  gnome-autoar-0            0.0 # 0.0
SHARED_LIBS +=  gnome-autoar-gtk-0        0.0 # 0.0

CATEGORIES=		archivers

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender archive atk-1.0 atk-bridge-2.0
WANTLIB += b2 bz2 cairo cairo-gobject charset crypto epoxy expat
WANTLIB += ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gtk-3 harfbuzz iconv intl jpeg lz4 lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png xcb xcb-render
WANTLIB += xcb-shm z zstd

MODULES=		x11/gnome

MODGNOME_TOOLS= 	gobject-introspection vala

LIB_DEPENDS=		archivers/libarchive \
			x11/gtk+3

CONFIGURE_STYLE=	gnu

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
