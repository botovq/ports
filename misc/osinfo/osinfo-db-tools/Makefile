# $OpenBSD: Makefile,v 1.14 2021/02/04 11:47:56 ajacoutot Exp $

COMMENT=		tools to manage the libosinfo database

DISTNAME=		osinfo-db-tools-${V}

WANTLIB += archive c gio-2.0 glib-2.0 gobject-2.0 intl json-glib-1.0
WANTLIB += soup-2.4 xml2

MODULES=		devel/meson

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		archivers/libarchive \
			devel/json-glib \
			devel/libsoup

.include <bsd.port.mk>
