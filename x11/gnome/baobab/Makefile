# $OpenBSD: Makefile,v 1.57 2021/05/14 07:09:59 ajacoutot Exp $

COMMENT=		directory tree analyzer for GNOME

GNOME_PROJECT=		baobab
GNOME_VERSION=		40.0

# GPLv2 - GFDLv1.1
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3 handy-1
WANTLIB += intl m pango-1.0

LIB_DEPENDS=		x11/libhandy

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS += desktop-file-utils gobject-introspection yelp
MODGNOME_TOOLS += gtk-update-icon-cache vala

.include <bsd.port.mk>
