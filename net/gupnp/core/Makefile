# $OpenBSD: Makefile,v 1.61 2021/06/06 08:16:19 jasper Exp $

COMMENT=		framework for creating UPnP devices and control points

GNOME_PROJECT=		gupnp
GNOME_VERSION=		1.2.7

SHARED_LIBS +=  gupnp-1.2	0.1

WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gssdp-1.2
WANTLIB += soup-2.4 xml2

MODULES=		devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS	=	gobject-introspection vala docbook

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# man page generation
BUILD_DEPENDS +=	textproc/libxslt

LIB_DEPENDS=		net/gssdp>=1.2.3

CONFIGURE_ARGS=		-Dcontext-manager=unix

.include <bsd.port.mk>
